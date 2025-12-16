import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../models/tenant.dart';
import '../models/paginated_response.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';

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

  /// Create new tenant
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

  /// Upload tenant logo
  Future<String?> uploadLogo(int tenantId, String filePath) async {
    try {
      final formData = FormData.fromMap({
        'tenant_id': tenantId,
        'logo': await MultipartFile.fromFile(filePath),
      });

      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/upload-logo/',
        data: formData,
      );

      return response.data['logo_url'] as String?;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      notifyListeners();
      return null;
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
