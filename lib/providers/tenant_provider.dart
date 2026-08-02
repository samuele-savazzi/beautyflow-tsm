import 'dart:convert';
import 'dart:io' as io;
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../models/tenant.dart';
import '../models/paginated_response.dart';
import '../models/create_tenant_request.dart';
import '../models/create_tenant_response.dart';
import '../models/complete_theme_request.dart';
import '../models/theme_gradients.dart';
import '../models/theme_metadata.dart';
import '../models/theme_settings.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';
import '../utils/color_utils.dart';

class TenantProvider with ChangeNotifier {
  final ApiService _apiService;

  PaginatedResponse<Tenant>? _tenantsPage;
  Tenant? _selectedTenant;
  bool _isLoading = false;
  String? _error;

  // Filters
  int _currentPage = 1;
  int _pageSize = 20;
  String? _searchQuery;
  bool? _isActiveFilter;

  PaginatedResponse<Tenant>? get tenantsPage => _tenantsPage;
  Tenant? get selectedTenant => _selectedTenant;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get currentPage => _currentPage;
  bool get hasNextPage => _tenantsPage?.hasNext ?? false;
  bool get hasPreviousPage => _tenantsPage?.hasPrevious ?? false;

  TenantProvider(this._apiService);

  /// Load tenants list with pagination and filters
  Future<void> loadTenants({
    int? page,
    String? search,
    bool? isActive,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 1;
      _tenantsPage = null;
    }

    if (page != null) _currentPage = page;
    if (search != null) _searchQuery = search;
    if (isActive != null) _isActiveFilter = isActive;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants-list/',
        queryParameters: {
          'page': _currentPage,
          'page_size': _pageSize,
          if (_searchQuery != null && _searchQuery!.isNotEmpty)
            'search': _searchQuery,
          if (_isActiveFilter != null) 'is_active': _isActiveFilter,
        },
      );

      _tenantsPage = PaginatedResponse.fromJson(
        response.data,
        (json) => Tenant.fromJson(json),
      );

      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _tenantsPage = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Load next page
  Future<void> loadNextPage() async {
    if (!hasNextPage || _isLoading) return;
    await loadTenants(page: _currentPage + 1);
  }

  /// Load previous page
  Future<void> loadPreviousPage() async {
    if (!hasPreviousPage || _isLoading || _currentPage <= 1) return;
    await loadTenants(page: _currentPage - 1);
  }

  /// Load tenant detail by ID
  Future<void> loadTenantDetail(int tenantId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/',
      );

      _selectedTenant = Tenant.fromJson(response.data);
      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _selectedTenant = null;
    } on Exception catch (e){
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Clear selected tenant
  void clearSelectedTenant() {
    _selectedTenant = null;
    notifyListeners();
  }

  /// Clear filters and reload
  Future<void> clearFilters() async {
    _searchQuery = null;
    _isActiveFilter = null;
    await loadTenants(refresh: true);
  }

  /// Create new tenant (legacy - accepts Map)
  Future<bool> createTenant(Map<String, dynamic> tenantData) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/',
        data: tenantData,
      );

      // Reload list after creation
      await loadTenants(refresh: true);

      _error = null;
      _isLoading = false;
      notifyListeners();
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  /// Create new tenant with typed request/response
  Future<CreateTenantResponse?> createTenantWithResponse(
    CreateTenantRequest request,
  ) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/',
        data: request.toJson(),
        options: Options(
          receiveTimeout: const Duration(minutes: 10),
        ),
      );

      // Parse response
      final createResponse = CreateTenantResponse.fromJson(response.data);

      // Reload list after creation
      await loadTenants(refresh: true);

      _error = null;
      _isLoading = false;
      notifyListeners();

      return createResponse;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      rethrow; // Re-throw per permettere al caller di gestire l'errore
    }
  }

  /// Create new tenant with files (logo, dark_logo, favicon)
  /// This method expands the simple theme colors to the complete theme structure
  /// matching the React ThemeEditor format, and includes base64-encoded files
  Future<CreateTenantResponse?> createTenantWithFiles({
    required CreateTenantRequest request,
    required String logoFilePath,
    required String darkLogoFilePath,
    required String faviconFilePath,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Read files as base64
      final logoBytes = await io.File(logoFilePath).readAsBytes();
      final darkLogoBytes = await io.File(darkLogoFilePath).readAsBytes();
      final faviconBytes = await io.File(faviconFilePath).readAsBytes();

      // Generate complete theme from simple colors
      final completeTheme = _generateCompleteTheme(request);

      // Build final JSON payload
      final payload = {
        'name': request.name,
        'domain': request.domain,
        'type': request.type,
        'admin_email': request.adminEmail,
        'admin_phone': request.adminPhone,
        'admin_first_name': request.adminFirstName,
        'admin_last_name': request.adminLastName,
        'quota_type_code': request.quotaTypeCode,
        'billing_type': request.billingType,
        'billing_duration': request.billingDuration,
        'areas': request.areas.map((a) => a.toJson()).toList(),
        if (request.registeredOffice != null)
          'registered_office': request.registeredOffice,
        'theme': completeTheme.toJson(), // Complete expanded theme
        'logo': base64Encode(logoBytes),
        'dark_logo': base64Encode(darkLogoBytes),
        'favicon': base64Encode(faviconBytes),
        if (request.apiVersion != null) 'api_version': request.apiVersion,
      };

      // Send as pure JSON with complete theme and base64 files
      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/',
        data: payload,
        options: Options(
          receiveTimeout: const Duration(minutes: 10),
        ),
      );

      // Parse response
      final createResponse = CreateTenantResponse.fromJson(response.data);

      // Reload list after creation
      await loadTenants(refresh: true);

      _error = null;
      _isLoading = false;
      notifyListeners();

      return createResponse;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  /// Generate complete theme structure from simple base colors
  /// This mirrors the React ThemeEditor's theme generation logic
  CompleteThemeRequest _generateCompleteTheme(CreateTenantRequest request) {
    if (request.theme == null) {
      throw Exception('Theme is required for tenant creation');
    }

    final simpleColors = request.theme!;

    // Expand simple colors to complete color palettes
    final lightColors = ColorUtils.mapSimpleToCompleteColors(simpleColors, isDark: false);
    final darkColors = ColorUtils.mapSimpleToCompleteColors(simpleColors, isDark: true);

    // Generate gradients
    final gradients = ThemeGradients(
      primary: GradientConfig(
        main: simpleColors.primary,
        light: ColorUtils.hexToRgba(simpleColors.primary, 0.8),
        state: ColorUtils.hexToRgba(simpleColors.primary, 1.2),
      ),
      secondary: GradientConfig(
        main: simpleColors.secondary,
        light: ColorUtils.hexToRgba(simpleColors.secondary, 0.8),
        state: ColorUtils.hexToRgba(simpleColors.secondary, 1.2),
      ),
    );

    // Create complete theme
    final theme = CompleteTheme(
      dark: darkColors,
      light: lightColors,
      gradients: gradients,
      navbarText: lightColors.navbarText,
      brandAccent: ColorUtils.hexToRgba(simpleColors.primary, 0.8),
      sidebarText: lightColors.sidebarText,
      brandPrimary: simpleColors.primary,
      sidebarActive: lightColors.sidebarActive,
      brandSecondary: simpleColors.secondary,
      buttonPrimaryBg: lightColors.buttonPrimaryBg,
      loginBackground: lightColors.loginBackground,
      navbarBackground: lightColors.navbarBackground,
      sidebarBackground: lightColors.sidebarBackground,
      loginBoxBackground: lightColors.loginBoxBackground,
    );

    // Create metadata
    final metadata = ThemeMetadata(
      clientId: 'beautyflow-tsm',
      themeName: 'Custom Theme',
      lastUpdated: DateTime.now().toIso8601String(),
      themeVersion: '2.1',
      supportedModes: ['light', 'dark'],
      isCustomTheme: true,
      hasCustomDarkColors: false,
    );

    // Create settings
    final settings = ThemeSettings(
      darkModeDefault: false,
      allowDarkModeToggle: true,
      autoDetectSystemTheme: false,
    );

    return CompleteThemeRequest(
      theme: theme,
      metadata: metadata,
      settings: settings,
    );
  }

  /// Update tenant
  Future<bool> updateTenant(int tenantId, Map<String, dynamic> tenantData) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/update/',
        data: {
          'tenant_id': tenantId,
          ...tenantData,
        },
      );

      // Reload detail if it's the selected tenant
      if (_selectedTenant?.id == tenantId) {
        await loadTenantDetail(tenantId);
      }

      // Reload list
      await loadTenants();

      _error = null;
      _isLoading = false;
      notifyListeners();
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  /// Upload tenant logo/favicon/dark_logo
  Future<String?> uploadLogo(
    int tenantId,
    String filePath,
    String uploadType,
  ) async {
    try {
      // Determine endpoint and response key based on upload type
      String endpoint;
      String responseKey;

      switch (uploadType) {
        case 'favicon':
          endpoint = '${EnvironmentConfig.adminApiPath}/tenants/upload-favicon/';
          responseKey = 'image_url';
          break;
        case 'dark_logo':
          endpoint = '${EnvironmentConfig.adminApiPath}/tenants/upload-dark-logo/';
          responseKey = 'image_url'; // Django response usa 'image_url' per tutti
          break;
        case 'logo':
        default:
          endpoint = '${EnvironmentConfig.adminApiPath}/tenants/upload-logo/';
          responseKey = 'image_url'; // Django response usa 'image_url' per tutti
          break;
      }

      // Django si aspetta sempre il campo 'image' per logo/dark_logo, 'favicon' per favicon
      final fieldName = 'image';

      final formData = FormData.fromMap({
        'tenant_id': tenantId,
        fieldName: await MultipartFile.fromFile(filePath),
      });

      final response = await _apiService.dio.post(endpoint, data: formData);

      return response.data[responseKey] as String?;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      return null;
    }
  }

  /// Update area operator limit
  Future<bool> updateAreaQuotaLimit(
    int tenantId,
    int areaId,
    int maxOperators,
  ) async {
    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/areas/$areaId/quota/',
        data: {'max_operators': maxOperators},
      );

      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Update area workstation limit.
  /// Gemello di [updateAreaQuotaLimit]: quello limita gli operatori della sede,
  /// questo le postazioni creabili al suo interno.
  Future<bool> updateAreaWorkstationQuotaLimit(
    int tenantId,
    int areaId,
    int maxWorkstations,
  ) async {
    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/areas/$areaId/workstation-quota/',
        data: {'max_workstations': maxWorkstations},
      );

      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Crea una nuova sede nel tenant.
  /// Il backend replica il setup della creazione tenant: orari chiusi sui 7
  /// giorni, collegamento agli admin del tenant, config reminder.
  Future<bool> createArea(
    int tenantId, {
    required String name,
    Map<String, dynamic>? location,
  }) async {
    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/areas/',
        data: {'name': name, ...?location},
      );
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Aggiorna indirizzo e coordinate di una sede.
  /// Campo assente = non toccato, null = azzerato.
  Future<bool> updateAreaLocation(
    int tenantId,
    int areaId,
    Map<String, dynamic> location,
  ) async {
    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/areas/$areaId/location/',
        data: location,
      );
      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  /// Update operator workstation limit
  Future<bool> updateOperatorQuotaLimit(
    int tenantId,
    int operatorId,
    int maxWorkstations,
  ) async {
    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/operators/$operatorId/quota/',
        data: {'max_workstations': maxWorkstations},
      );

      return true;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      rethrow;
    }
  }

  String _getErrorMessage(DioException error) {
    if (error.response?.data is Map) {
      final data = error.response!.data as Map<String, dynamic>;
      if (data.containsKey('error')) {
        return data['error'].toString();
      }
      if (data.containsKey('detail')) {
        return data['detail'].toString();
      }
    }
    return 'Errore durante la richiesta';
  }
}
