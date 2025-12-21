import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';
import '../models/tenant.dart';

/// Provider per gestione QuotaTypes
class QuotaTypeProvider with ChangeNotifier {
  final ApiService _apiService;

  QuotaTypeProvider(this._apiService);

  List<QuotaType>? _quotaTypes;
  bool _isLoading = false;
  String? _error;

  List<QuotaType>? get quotaTypes => _quotaTypes;
  bool get isLoading => _isLoading;
  String? get error => _error;

  /// Carica tutti i quota types attivi
  Future<void> loadQuotaTypes({
    bool? isActive,
    bool? isFeatured,
    String? search,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final queryParams = <String, dynamic>{};
      if (isActive != null) queryParams['is_active'] = isActive;
      if (isFeatured != null) queryParams['is_featured'] = isFeatured;
      if (search != null && search.isNotEmpty) queryParams['search'] = search;
      queryParams['page_size'] = 100; // Get all

      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/quota-types/',
        queryParameters: queryParams,
      );

      final results = response.data['results'] as List<dynamic>;
      _quotaTypes = results
          .map((json) => QuotaType.fromJson(json as Map<String, dynamic>))
          .toList();

      // Sort by display_order
      _quotaTypes!.sort((a, b) {
        final orderA = a.displayOrder ?? 999;
        final orderB = b.displayOrder ?? 999;
        return orderA.compareTo(orderB);
      });
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Get quota type by code
  QuotaType? getByCode(String code) {
    return _quotaTypes?.firstWhere(
      (qt) => qt.code == code,
      orElse: () => _quotaTypes!.first,
    );
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
    return 'Errore durante il caricamento dei piani';
  }
}
