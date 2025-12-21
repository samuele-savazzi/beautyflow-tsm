import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';

class AuditLogProvider with ChangeNotifier {
  final ApiService _apiService;

  // Audit logs data
  Map<String, dynamic>? _auditLogsResponse;
  List<dynamic>? _auditLogs;
  bool _isLoading = false;
  String? _error;

  // Pagination
  int _currentPage = 1;
  int _pageSize = 50;

  // Filters
  int? _tenantIdFilter;
  int? _adminIdFilter;
  String? _actionFilter;
  String? _entityTypeFilter;
  int? _entityIdFilter;
  String? _dateFrom;
  String? _dateTo;
  bool? _wasImpersonating;

  // Getters
  List<dynamic>? get auditLogs => _auditLogs;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get currentPage => _currentPage;
  int? get count => _auditLogsResponse?['count'];
  String? get nextPage => _auditLogsResponse?['next'];
  String? get previousPage => _auditLogsResponse?['previous'];
  bool get hasNextPage => nextPage != null;
  bool get hasPreviousPage => previousPage != null;

  AuditLogProvider(this._apiService);

  /// Load audit logs with filters and pagination
  Future<void> loadAuditLogs({
    int? page,
    int? pageSize,
    int? tenantId,
    int? adminId,
    String? action,
    String? entityType,
    int? entityId,
    String? dateFrom,
    String? dateTo,
    bool? wasImpersonating,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 1;
      _auditLogs = null;
    }

    if (page != null) _currentPage = page;
    if (pageSize != null) _pageSize = pageSize;
    if (tenantId != null) _tenantIdFilter = tenantId;
    if (adminId != null) _adminIdFilter = adminId;
    if (action != null) _actionFilter = action;
    if (entityType != null) _entityTypeFilter = entityType;
    if (entityId != null) _entityIdFilter = entityId;
    if (dateFrom != null) _dateFrom = dateFrom;
    if (dateTo != null) _dateTo = dateTo;
    if (wasImpersonating != null) _wasImpersonating = wasImpersonating;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/audit-logs/',
        queryParameters: {
          'page': _currentPage,
          'page_size': _pageSize,
          if (_tenantIdFilter != null) 'tenant_id': _tenantIdFilter,
          if (_adminIdFilter != null) 'admin_id': _adminIdFilter,
          if (_actionFilter != null && _actionFilter!.isNotEmpty)
            'action': _actionFilter,
          if (_entityTypeFilter != null && _entityTypeFilter!.isNotEmpty)
            'entity_type': _entityTypeFilter,
          if (_entityIdFilter != null) 'entity_id': _entityIdFilter,
          if (_dateFrom != null && _dateFrom!.isNotEmpty)
            'date_from': _dateFrom,
          if (_dateTo != null && _dateTo!.isNotEmpty) 'date_to': _dateTo,
          if (_wasImpersonating != null)
            'was_impersonating': _wasImpersonating,
        },
      );

      _auditLogsResponse = response.data;
      _auditLogs = response.data['results'] as List<dynamic>;
      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _auditLogs = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Load recent audit logs (last 10)
  Future<void> loadRecentAuditLogs() async {
    await loadAuditLogs(pageSize: 10, page: 1, refresh: true);
  }

  /// Clear all filters and reload
  Future<void> clearFilters() async {
    _tenantIdFilter = null;
    _adminIdFilter = null;
    _actionFilter = null;
    _entityTypeFilter = null;
    _entityIdFilter = null;
    _dateFrom = null;
    _dateTo = null;
    _wasImpersonating = null;
    await loadAuditLogs(refresh: true);
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
