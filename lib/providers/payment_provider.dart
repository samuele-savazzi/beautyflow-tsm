import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import '../api/services/api_service.dart';
import '../config/environment.dart';

class PaymentProvider with ChangeNotifier {
  final ApiService _apiService;

  // Payments data
  Map<String, dynamic>? _paymentsResponse;
  List<dynamic>? _payments;
  bool _isLoading = false;
  String? _error;

  // Filters and pagination
  int _currentPage = 1;
  int _pageSize = 20;
  String? _transactionTypeFilter;
  String? _statusFilter;
  String? _dateFrom;
  String? _dateTo;

  // Getters
  List<dynamic>? get payments => _payments;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get currentPage => _currentPage;
  int? get totalPages => _paymentsResponse?['total_pages'];
  int? get count => _paymentsResponse?['count'];
  bool get hasNextPage => _currentPage < (totalPages ?? 0);
  bool get hasPreviousPage => _currentPage > 1;

  PaymentProvider(this._apiService);

  /// Load payments for a tenant with filters and pagination
  Future<void> loadTenantPayments(
    int tenantId, {
    int? page,
    String? transactionType,
    String? status,
    String? dateFrom,
    String? dateTo,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 1;
      _payments = null;
    }

    if (page != null) _currentPage = page;
    if (transactionType != null) _transactionTypeFilter = transactionType;
    if (status != null) _statusFilter = status;
    if (dateFrom != null) _dateFrom = dateFrom;
    if (dateTo != null) _dateTo = dateTo;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.dio.get(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/',
        queryParameters: {
          'page': _currentPage,
          'page_size': _pageSize,
          if (_transactionTypeFilter != null && _transactionTypeFilter!.isNotEmpty)
            'transaction_type': _transactionTypeFilter,
          if (_statusFilter != null && _statusFilter!.isNotEmpty)
            'status': _statusFilter,
          if (_dateFrom != null && _dateFrom!.isNotEmpty)
            'date_from': _dateFrom,
          if (_dateTo != null && _dateTo!.isNotEmpty)
            'date_to': _dateTo,
        },
      );

      _paymentsResponse = response.data;
      _payments = response.data['results'] as List<dynamic>;
      _error = null;
    } on DioException catch (e) {
      _error = _getErrorMessage(e);
      _payments = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Load next page
  Future<void> loadNextPage(int tenantId) async {
    if (!hasNextPage || _isLoading) return;
    await loadTenantPayments(tenantId, page: _currentPage + 1);
  }

  /// Load previous page
  Future<void> loadPreviousPage(int tenantId) async {
    if (!hasPreviousPage || _isLoading || _currentPage <= 1) return;
    await loadTenantPayments(tenantId, page: _currentPage - 1);
  }

  /// Clear filters and reload
  Future<void> clearFilters(int tenantId) async {
    _transactionTypeFilter = null;
    _statusFilter = null;
    _dateFrom = null;
    _dateTo = null;
    await loadTenantPayments(tenantId, refresh: true);
  }

  /// Recharge SMS for tenant
  Future<bool> rechargeSMS({
    required int tenantId,
    required int smsQuantity,
    required String amount,
    String? paymentMethod,
    String? description,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/quota/recharge-sms/',
        data: {
          'tenant_id': tenantId,
          'sms_quantity': smsQuantity,
          'payment_amount': amount,
          if (paymentMethod != null) 'payment_method': paymentMethod,
          if (description != null) 'description': description,
        },
      );

      // Reload payments list
      await loadTenantPayments(tenantId, refresh: true);

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

  /// Create a manual payment transaction
  Future<bool> createPayment({
    required int tenantId,
    required Map<String, dynamic> paymentData,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/',
        data: paymentData,
      );

      // Reload payments list
      await loadTenantPayments(tenantId, refresh: true);

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

  /// Create a payment transaction with file attachments (multipart)
  Future<bool> createPaymentWithAttachments({
    required int tenantId,
    required Map<String, dynamic> paymentData,
    required List<String> filePaths,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Build FormData with all payment fields
      final formData = FormData.fromMap(paymentData);

      // Add files to FormData
      for (var filePath in filePaths) {
        formData.files.add(MapEntry(
          'attachments[]',
          await MultipartFile.fromFile(filePath),
        ));
      }

      // Send multipart request
      await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/',
        data: formData,
      );

      // Reload payments list
      await loadTenantPayments(tenantId, refresh: true);

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

  /// Update an existing payment transaction
  Future<bool> updatePayment({
    required int tenantId,
    required int paymentId,
    required Map<String, dynamic> paymentData,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.put(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/$paymentId/',
        data: paymentData,
      );

      // Reload payments list
      await loadTenantPayments(tenantId);

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

  /// Delete a payment transaction (with automatic attachments cleanup)
  Future<bool> deletePayment({
    required int tenantId,
    required int paymentId,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Use new endpoint with automatic attachment cleanup
      await _apiService.dio.delete(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/$paymentId/delete/',
      );

      // Reload payments list
      await loadTenantPayments(tenantId);

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

  /// Delete a single attachment from a payment transaction
  Future<bool> deleteAttachment({
    required int tenantId,
    required int paymentId,
    required int attachmentId,
  }) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      await _apiService.dio.delete(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/$paymentId/attachments/$attachmentId/',
      );

      // Reload payments list to refresh attachments
      await loadTenantPayments(tenantId);

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

  /// Upload payment attachment (invoice/receipt)
  Future<String?> uploadPaymentAttachment({
    required int tenantId,
    required int paymentId,
    required String filePath,
  }) async {
    try {
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath),
      });

      final response = await _apiService.dio.post(
        '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/transactions/$paymentId/attachments/',
        data: formData,
      );

      return response.data['signed_url'] as String?;
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
