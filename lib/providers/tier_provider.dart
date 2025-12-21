import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../models/tier.dart';
import '../models/paginated_response.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';

class TierProvider with ChangeNotifier {
  final ApiService _apiService;

  PaginatedResponse<Tier>? _tiersPage;
  List<TenantTier>? _tenantTiers;
  bool _isLoading = false;
  String? _error;

  // Filters
  int _currentPage = 1;
  int _pageSize = 20;
  String? _searchQuery;
  bool? _isActiveFilter;
  String? _categoryFilter;

  PaginatedResponse<Tier>? get tiersPage => _tiersPage;
  List<TenantTier>? get tenantTiers => _tenantTiers;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get currentPage => _currentPage;
  bool get hasNextPage => _tiersPage?.hasNext ?? false;
  bool get hasPreviousPage => _tiersPage?.hasPrevious ?? false;

  TierProvider(this._apiService);

  /// Load tiers list with pagination and filters
  Future<void> loadTiers({
    int? page,
    String? search,
    bool? isActive,
    String? category,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 1;
      _tiersPage = null;
    }

    if (page != null) _currentPage = page;
    if (search != null) _searchQuery = search;
    if (isActive != null) _isActiveFilter = isActive;
    if (category != null) _categoryFilter = category;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tiers-list/',
        queryParameters: {
          'page': _currentPage,
          'page_size': _pageSize,
          if (_searchQuery != null && _searchQuery!.isNotEmpty)
            'search': _searchQuery,
          if (_isActiveFilter != null) 'is_active': _isActiveFilter,
          if (_categoryFilter != null) 'category': _categoryFilter,
        },
      );

      _tiersPage = PaginatedResponse.fromJson(
        response.data,
        (json) => Tier.fromJson(json),
      );

      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _tiersPage = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Load tiers active for a specific tenant
  Future<void> loadTenantTiers(int tenantId, {bool? isActive}) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/tiers/',
        queryParameters: {
          if (isActive != null) 'is_active': isActive,
        },
      );

      _tenantTiers = (response.data as List)
          .map((json) => TenantTier.fromJson(json))
          .toList();

      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _tenantTiers = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Activate tier for tenant
  Future<bool> activateTierForTenant({
    required int tenantId,
    required int tierId,
    bool isTrial = false,
    String billingCycle = 'monthly',
    int? customUsageLimit,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/tiers/activate/',
        data: {
          'tier_id': tierId,
          'is_trial': isTrial,
          'billing_cycle': billingCycle,
          if (customUsageLimit != null) 'custom_usage_limit': customUsageLimit,
        },
      );

      // Reload tenant tiers
      await loadTenantTiers(tenantId);

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

  /// Deactivate tier for tenant
  Future<bool> deactivateTierForTenant({
    required int tenantId,
    required int tierId,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/tiers/$tierId/deactivate/',
      );

      // Reload tenant tiers
      await loadTenantTiers(tenantId);

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

  /// Create new tier (admin only)
  Future<bool> createTier(Map<String, dynamic> tierData) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tiers/',
        data: tierData,
      );

      // Reload list after creation
      await loadTiers(refresh: true);

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

  /// Load next page
  Future<void> loadNextPage() async {
    if (!hasNextPage || _isLoading) return;
    await loadTiers(page: _currentPage + 1);
  }

  /// Load previous page
  Future<void> loadPreviousPage() async {
    if (!hasPreviousPage || _isLoading || _currentPage <= 1) return;
    await loadTiers(page: _currentPage - 1);
  }

  /// Clear filters and reload
  Future<void> clearFilters() async {
    _searchQuery = null;
    _isActiveFilter = null;
    _categoryFilter = null;
    await loadTiers(refresh: true);
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
