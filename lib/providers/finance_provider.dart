import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

import '../api/services/api_service.dart';
import '../config/environment.dart';
import '../models/finance_models.dart';

/// Provider della contabilità aziendale: costi, cassa, IVA, imposte e report.
///
/// Tutte le rotte sotto `/admin-api/internal-billing/` sono riservate al ruolo
/// admin: il backend risponde 403 al commerciale.
class FinanceProvider with ChangeNotifier {
  final ApiService _apiService;

  FinanceProvider(this._apiService);

  String get _base => '${EnvironmentConfig.adminApiPath}/internal-billing';

  bool _isLoading = false;
  String? _error;
  bool get isLoading => _isLoading;
  String? get error => _error;

  List<Vendor> _vendors = [];
  List<ExpenseCategory> _categories = [];
  List<Expense> _expenses = [];
  int _expensesCount = 0;
  int _expensesPages = 1;
  List<CashAccount> _accounts = [];
  double _accountsTotal = 0;
  List<CashMovement> _movements = [];
  int _movementsPages = 1;
  List<VatSettlement> _settlements = [];
  VatSettlement? _currentSettlement;
  double _vatToSetAside = 0;
  List<TaxPayment> _taxPayments = [];
  double _estimatedIncomeTax = 0;
  LiquiditySnapshot? _liquidity;
  PnlReport? _pnl;
  FinanceDashboard? _dashboard;
  FiscalSettings? _fiscalSettings;

  List<Vendor> get vendors => _vendors;
  List<ExpenseCategory> get categories => _categories;
  List<Expense> get expenses => _expenses;
  int get expensesCount => _expensesCount;
  int get expensesPages => _expensesPages;
  List<CashAccount> get accounts => _accounts;
  double get accountsTotal => _accountsTotal;
  List<CashMovement> get movements => _movements;
  int get movementsPages => _movementsPages;
  List<VatSettlement> get settlements => _settlements;
  VatSettlement? get currentSettlement => _currentSettlement;
  double get vatToSetAside => _vatToSetAside;
  List<TaxPayment> get taxPayments => _taxPayments;
  double get estimatedIncomeTax => _estimatedIncomeTax;
  LiquiditySnapshot? get liquidity => _liquidity;
  PnlReport? get pnl => _pnl;
  FinanceDashboard? get dashboard => _dashboard;
  FiscalSettings? get fiscalSettings => _fiscalSettings;

  void _start() {
    _isLoading = true;
    _error = null;
    notifyListeners();
  }

  void _stop() {
    _isLoading = false;
    notifyListeners();
  }

  void _fail(Object error) {
    _error = _messageFrom(error);
    _isLoading = false;
    notifyListeners();
  }

  String _messageFrom(Object error) {
    if (error is DioException) {
      final data = error.response?.data;
      if (data is Map) {
        return data['error']?.toString() ??
            data['detail']?.toString() ??
            'Errore ${error.response?.statusCode ?? ''}';
      }
      if (error.response?.statusCode == 403) {
        return 'Sezione riservata agli amministratori';
      }
      return 'Errore ${error.response?.statusCode ?? ''}';
    }
    return error.toString();
  }

  // ============================================================
  // ANAGRAFICHE
  // ============================================================
  Future<void> loadVendors() async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/vendors/');
      _vendors = (response.data as List).map((e) => Vendor.fromJson(e)).toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveVendor(Map<String, dynamic> data, {int? id}) async {
    _start();
    try {
      if (id == null) {
        await _apiService.dio.post('$_base/vendors/', data: data);
      } else {
        await _apiService.dio.put('$_base/vendors/$id/', data: data);
      }
      await loadVendors();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<void> loadCategories() async {
    try {
      final response = await _apiService.dio.get('$_base/expense-categories/');
      _categories = (response.data as List)
          .map((e) => ExpenseCategory.fromJson(e))
          .toList();
      notifyListeners();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveCategory(Map<String, dynamic> data, {int? id}) async {
    _start();
    try {
      if (id == null) {
        await _apiService.dio.post('$_base/expense-categories/', data: data);
      } else {
        await _apiService.dio.put('$_base/expense-categories/$id/', data: data);
      }
      await loadCategories();
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // COSTI
  // ============================================================
  Future<void> loadExpenses({
    int page = 1,
    String? status,
    int? categoryId,
    int? vendorId,
    String? dateFrom,
    String? dateTo,
    bool recurringOnly = false,
    String? search,
  }) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/expenses/', queryParameters: {
        'page': page,
        if (status != null) 'status': status,
        if (categoryId != null) 'category_id': categoryId,
        if (vendorId != null) 'vendor_id': vendorId,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
        if (recurringOnly) 'recurring_only': 'true',
        if (search != null && search.isNotEmpty) 'search': search,
      });
      _expenses = (response.data['results'] as List)
          .map((e) => Expense.fromJson(e))
          .toList();
      _expensesCount = response.data['count'] ?? 0;
      _expensesPages = response.data['total_pages'] ?? 1;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveExpense(Map<String, dynamic> data, {int? id}) async {
    _start();
    try {
      if (id == null) {
        await _apiService.dio.post('$_base/expenses/', data: data);
      } else {
        await _apiService.dio.put('$_base/expenses/$id/', data: data);
      }
      await loadExpenses();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> markExpensePaid(int id, Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.post('$_base/expenses/$id/mark-paid/', data: data);
      await loadExpenses();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> deleteExpense(int id) async {
    _start();
    try {
      await _apiService.dio.delete('$_base/expenses/$id/');
      await loadExpenses();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // CASSA
  // ============================================================
  Future<void> loadAccounts() async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/cash-accounts/');
      _accounts = (response.data['accounts'] as List)
          .map((e) => CashAccount.fromJson(e))
          .toList();
      _accountsTotal =
          double.tryParse(response.data['total_balance'].toString()) ?? 0;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveAccount(Map<String, dynamic> data, {int? id}) async {
    _start();
    try {
      if (id == null) {
        await _apiService.dio.post('$_base/cash-accounts/', data: data);
      } else {
        await _apiService.dio.put('$_base/cash-accounts/$id/', data: data);
      }
      await loadAccounts();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<void> loadMovements({
    int page = 1,
    int? accountId,
    String? direction,
    String? movementKind,
    String? dateFrom,
    String? dateTo,
  }) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/cash-movements/', queryParameters: {
        'page': page,
        if (accountId != null) 'account_id': accountId,
        if (direction != null) 'direction': direction,
        if (movementKind != null) 'movement_kind': movementKind,
        if (dateFrom != null) 'date_from': dateFrom,
        if (dateTo != null) 'date_to': dateTo,
      });
      _movements = (response.data['results'] as List)
          .map((e) => CashMovement.fromJson(e))
          .toList();
      _movementsPages = response.data['total_pages'] ?? 1;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> createMovement(Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.post('$_base/cash-movements/', data: data);
      await loadMovements();
      await loadAccounts();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> transfer(Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/cash-movements/transfer/', data: data);
      await loadAccounts();
      await loadMovements();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> deleteMovement(int id) async {
    _start();
    try {
      await _apiService.dio.delete('$_base/cash-movements/$id/');
      await loadMovements();
      await loadAccounts();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // IVA
  // ============================================================
  Future<void> loadVatSettlements({int? year}) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/vat/settlements/',
          queryParameters: {if (year != null) 'year': year});
      _currentSettlement = response.data['current'] == null
          ? null
          : VatSettlement.fromJson(response.data['current']);
      _vatToSetAside =
          double.tryParse(response.data['to_set_aside'].toString()) ?? 0;
      _settlements = (response.data['settlements'] as List)
          .map((e) => VatSettlement.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> vatAction(int settlementId, String action,
      {Map<String, dynamic>? data}) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/vat/settlements/$settlementId/$action/', data: data ?? {});
      await loadVatSettlements();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // IMPOSTE
  // ============================================================
  Future<void> loadTaxPayments({int? year}) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/tax-payments/',
          queryParameters: {if (year != null) 'year': year});
      _taxPayments = (response.data['payments'] as List)
          .map((e) => TaxPayment.fromJson(e))
          .toList();
      _estimatedIncomeTax =
          double.tryParse(response.data['estimated_income_tax'].toString()) ?? 0;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveTaxPayment(Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.post('$_base/tax-payments/', data: data);
      await loadTaxPayments();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> markTaxPaid(int id, Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.post('$_base/tax-payments/$id/mark-paid/', data: data);
      await loadTaxPayments();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // REPORT
  // ============================================================
  Future<void> loadLiquidity() async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/reports/liquidity/');
      _liquidity = LiquiditySnapshot.fromJson(response.data);
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadPnl({String? start, String? end}) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/reports/pnl/', queryParameters: {
        if (start != null) 'start': start,
        if (end != null) 'end': end,
        'compare': 'true',
      });
      _pnl = PnlReport.fromJson(response.data);
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadDashboard() async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/dashboard/');
      _dashboard = FinanceDashboard.fromJson(response.data);
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  /// Scarica l'export CSV per il commercialista e lo salva su disco.
  ///
  /// Passa dal Dio autenticato: la rotta e' sotto `/admin-api/` e con il solo
  /// URL nudo il backend risponderebbe 401.
  Future<String?> downloadExport(String dataset,
      {String? start, String? end}) async {
    _start();
    try {
      final response = await _apiService.dio.get<List<int>>(
        '$_base/reports/export/',
        queryParameters: {
          'dataset': dataset,
          if (start != null) 'start': start,
          if (end != null) 'end': end,
        },
        options: Options(responseType: ResponseType.bytes),
      );
      final directory = await getTemporaryDirectory();
      final stamp = DateTime.now().toIso8601String().substring(0, 10);
      final file = File('${directory.path}/beautyflow_${dataset}_$stamp.csv');
      await file.writeAsBytes(response.data ?? <int>[]);
      _stop();
      return file.path;
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  // ============================================================
  // IMPOSTAZIONI FISCALI
  // ============================================================
  Future<void> loadFiscalSettings() async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/fiscal-settings/');
      _fiscalSettings = FiscalSettings.fromJson(response.data);
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveFiscalSettings(Map<String, dynamic> data) async {
    _start();
    try {
      final response =
          await _apiService.dio.put('$_base/fiscal-settings/', data: data);
      _fiscalSettings = FiscalSettings.fromJson(response.data);
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }
}
