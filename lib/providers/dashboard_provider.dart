import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';

class DashboardProvider with ChangeNotifier {
  final ApiService _apiService;

  // Dashboard stats
  int _totalTenants = 0;
  int _activeTenants = 0;
  bool _isLoading = false;
  String? _error;
  DateTime? _lastUpdated;

  // Getters
  int get totalTenants => _totalTenants;
  int get activeTenants => _activeTenants;
  bool get isLoading => _isLoading;
  String? get error => _error;
  DateTime? get lastUpdated => _lastUpdated;

  DashboardProvider(this._apiService);

  /// Load dashboard statistics
  Future<void> loadDashboardStats() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Fetch all tenants (first page with large page_size to get count)
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/list/',
        queryParameters: {
          'page': 1,
          'page_size': 1, // Solo per ottenere il count
        },
      );

      final data = response.data as Map<String, dynamic>;
      _totalTenants = data['count'] as int? ?? 0;

      // Calculate active tenants (paid_until >= today)
      // Per precisione, dobbiamo recuperare tutti i tenant
      if (_totalTenants > 0) {
        await _calculateActiveTenants();
      } else {
        _activeTenants = 0;
      }

      _lastUpdated = DateTime.now();
      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _totalTenants = 0;
      _activeTenants = 0;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Calculate active tenants by fetching all and checking paid_until
  Future<void> _calculateActiveTenants() async {
    try {
      // Fetch all tenants with larger page size
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/list/',
        queryParameters: {
          'page': 1,
          'page_size': 1000, // Assumiamo max 1000 tenant
        },
      );

      final data = response.data as Map<String, dynamic>;
      final results = data['results'] as List<dynamic>? ?? [];

      final today = DateTime.now();

      // Count tenants where paid_until >= today
      _activeTenants = results.where((tenant) {
        final paidUntilStr = tenant['paid_until']?.toString();
        if (paidUntilStr == null || paidUntilStr.isEmpty) {
          return false;
        }

        try {
          final paidUntil = DateTime.parse(paidUntilStr);
          return paidUntil.isAfter(today) ||
                 paidUntil.year == today.year &&
                 paidUntil.month == today.month &&
                 paidUntil.day == today.day;
        } catch (e) {
          return false;
        }
      }).length;
    } catch (e) {
      // Se fallisce il calcolo, assumiamo tutti attivi
      _activeTenants = _totalTenants;
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
    return 'Errore durante il caricamento delle statistiche';
  }
}
