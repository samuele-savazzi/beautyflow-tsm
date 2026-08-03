import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';

import '../api/services/api_service.dart';
import '../config/environment.dart';
import '../models/billing_models.dart';

/// Provider dell'area commerciale: listini, contratti, scadenzario, fatture,
/// provvigioni e anagrafica commerciali.
///
/// Le rotte `/admin-api/` non passano dall'SDK generato: si chiamano a mano
/// con Dio, come già fa payment_provider.
class BillingProvider with ChangeNotifier {
  final ApiService _apiService;

  BillingProvider(this._apiService);

  String get _base => '${EnvironmentConfig.adminApiPath}/internal-billing';

  bool _isLoading = false;
  String? _error;

  bool get isLoading => _isLoading;
  String? get error => _error;

  // Listini
  List<PriceList> _priceLists = [];
  PriceList? _priceListDetail;
  List<PriceList> get priceLists => _priceLists;
  PriceList? get priceListDetail => _priceListDetail;

  // Commerciali
  List<Salesperson> _salespeople = [];
  List<Salesperson> get salespeople => _salespeople;

  // Contratti
  List<Contract> _contracts = [];
  Contract? _contractDetail;
  int _contractsCount = 0;
  int _contractsPages = 1;
  List<Contract> get contracts => _contracts;
  Contract? get contractDetail => _contractDetail;
  int get contractsCount => _contractsCount;
  int get contractsPages => _contractsPages;

  // Scadenzario
  List<Installment> _installments = [];
  int _installmentsCount = 0;
  int _installmentsPages = 1;
  List<Installment> get installments => _installments;
  int get installmentsCount => _installmentsCount;
  int get installmentsPages => _installmentsPages;

  // Fatture
  List<Invoice> _invoices = [];
  int _invoicesCount = 0;
  int _invoicesPages = 1;
  List<Invoice> get invoices => _invoices;
  int get invoicesCount => _invoicesCount;
  int get invoicesPages => _invoicesPages;

  // Provvigioni
  List<CommissionSummaryRow> _commissionSummary = [];
  List<Commission> _commissions = [];
  List<CommissionPayout> _payouts = [];
  List<CommissionSummaryRow> get commissionSummary => _commissionSummary;
  List<Commission> get commissions => _commissions;
  List<CommissionPayout> get payouts => _payouts;

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
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout) {
        return 'Timeout di connessione';
      }
      return 'Errore ${error.response?.statusCode ?? ''}';
    }
    return error.toString();
  }

  // ============================================================
  // LISTINI
  // ============================================================
  Future<void> loadPriceLists({String? status}) async {
    _start();
    try {
      final response = await _apiService.dio.get(
        '$_base/price-lists/',
        queryParameters: {if (status != null) 'status': status},
      );
      _priceLists = (response.data as List)
          .map((e) => PriceList.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadPriceListDetail(int id) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/price-lists/$id/');
      _priceListDetail = PriceList.fromJson(response.data);
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> createPriceList(Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.post('$_base/price-lists/', data: data);
      await loadPriceLists();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> activatePriceList(int id) async {
    _start();
    try {
      await _apiService.dio.post('$_base/price-lists/$id/activate/');
      await loadPriceLists();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> clonePriceList(int id, String code, String? name) async {
    _start();
    try {
      await _apiService.dio.post('$_base/price-lists/$id/clone/',
          data: {'code': code, if (name != null) 'name': name});
      await loadPriceLists();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> savePriceListItem(int priceListId, Map<String, dynamic> data,
      {int? itemId}) async {
    _start();
    try {
      if (itemId == null) {
        await _apiService.dio.post('$_base/price-lists/$priceListId/items/',
            data: data);
      } else {
        await _apiService.dio.put(
            '$_base/price-lists/$priceListId/items/$itemId/',
            data: data);
      }
      await loadPriceListDetail(priceListId);
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> deletePriceListItem(int priceListId, int itemId) async {
    _start();
    try {
      await _apiService.dio
          .delete('$_base/price-lists/$priceListId/items/$itemId/');
      await loadPriceListDetail(priceListId);
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // COMMERCIALI
  // ============================================================
  Future<void> loadSalespeople({bool onlyActive = false}) async {
    _start();
    try {
      final response = await _apiService.dio.get(
        '$_base/salespeople/',
        queryParameters: {if (onlyActive) 'is_active': 'true'},
      );
      _salespeople = (response.data as List)
          .map((e) => Salesperson.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<bool> saveSalesperson(Map<String, dynamic> data, {int? id}) async {
    _start();
    try {
      if (id == null) {
        await _apiService.dio.post('$_base/salespeople/', data: data);
      } else {
        await _apiService.dio.put('$_base/salespeople/$id/', data: data);
      }
      await loadSalespeople();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> deactivateSalesperson(int id) async {
    _start();
    try {
      await _apiService.dio.delete('$_base/salespeople/$id/');
      await loadSalespeople();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // PROFILO DI FATTURAZIONE
  // ============================================================
  Future<TenantBillingProfile?> loadBillingProfile(int tenantId) async {
    try {
      final response = await _apiService.dio.get(
          '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/billing-profile/');
      return TenantBillingProfile.fromJson(response.data);
    } on DioException catch (error) {
      // 404 = profilo non ancora compilato, non è un errore da mostrare
      if (error.response?.statusCode == 404) return null;
      _error = _messageFrom(error);
      notifyListeners();
      return null;
    }
  }

  Future<bool> saveBillingProfile(
      int tenantId, Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio.put(
          '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/billing-profile/',
          data: data);
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // CONTRATTI
  // ============================================================
  Future<void> loadContracts({
    int page = 1,
    int? tenantId,
    int? salespersonId,
    String? status,
    int? expiringDays,
  }) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/contracts/',
          queryParameters: {
            'page': page,
            if (tenantId != null) 'tenant_id': tenantId,
            if (salespersonId != null) 'salesperson_id': salespersonId,
            if (status != null) 'status': status,
            if (expiringDays != null) 'expiring_days': expiringDays,
          });
      _contracts = (response.data['results'] as List)
          .map((e) => Contract.fromJson(e))
          .toList();
      _contractsCount = response.data['count'] ?? 0;
      _contractsPages = response.data['total_pages'] ?? 1;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadContractDetail(int id) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/contracts/$id/');
      _contractDetail = Contract.fromJson(response.data);
      _commissions = (response.data['commissions'] as List?)
              ?.map((e) => Commission.fromJson(e))
              .toList() ??
          [];
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<Contract?> createContract(
      int tenantId, Map<String, dynamic> data) async {
    _start();
    try {
      final response = await _apiService.dio.post(
          '${EnvironmentConfig.adminApiPath}/tenants/$tenantId/contracts/',
          data: data);
      _stop();
      return Contract.fromJson(response.data);
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  Future<bool> terminateContract(int id, String reason) async {
    return _contractAction('$_base/contracts/$id/terminate/',
        data: {'reason': reason}, reloadId: id);
  }

  Future<bool> renewContractCycle(int id) async {
    return _contractAction('$_base/contracts/$id/renew-cycle/', reloadId: id);
  }

  Future<bool> migrateContractPriceList(int id, int priceListId) async {
    return _contractAction('$_base/contracts/$id/migrate-price-list/',
        data: {'price_list_id': priceListId}, reloadId: id);
  }

  /// Canone già pagato e non ancora goduto: è lo sconto che il cambio piano
  /// riporta sulla prima rata del nuovo contratto.
  Future<double?> residualCredit(int id, DateTime startDate) async {
    try {
      final response = await _apiService.dio.get(
        '$_base/contracts/$id/change-plan/',
        queryParameters: {'start_date': _apiDate(startDate)},
      );
      return (response.data['residual_credit'] as num?)?.toDouble() ?? 0;
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  /// Upgrade, downgrade o rimozione di moduli: cessa il contratto in corso e
  /// ne firma uno nuovo scontando il credito residuo.
  Future<Contract?> changePlan(int id, Map<String, dynamic> data) async {
    _start();
    try {
      final response =
          await _apiService.dio.post('$_base/contracts/$id/change-plan/', data: data);
      _stop();
      return Contract.fromJson(response.data['contract']);
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  static String _apiDate(DateTime date) =>
      '${date.year.toString().padLeft(4, '0')}-'
      '${date.month.toString().padLeft(2, '0')}-'
      '${date.day.toString().padLeft(2, '0')}';

  Future<bool> _contractAction(String path,
      {Map<String, dynamic>? data, int? reloadId}) async {
    _start();
    try {
      await _apiService.dio.post(path, data: data ?? {});
      if (reloadId != null) await loadContractDetail(reloadId);
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  /// Contratto figlio per voci aggiunte in corso d'opera: eredita impegno,
  /// piano rate e commerciale del padre.
  Future<Contract?> createAddon(int contractId, Map<String, dynamic> data) async {
    _start();
    try {
      final response =
          await _apiService.dio.post('$_base/contracts/$contractId/addon/', data: data);
      await loadContractDetail(contractId);
      return Contract.fromJson(response.data);
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  /// Carica il PDF firmato dal cliente sull'ultima versione archiviata.
  Future<bool> uploadSignedContract(
    int contractId, {
    required String fileName,
    required List<int> bytes,
    String signedByName = '',
  }) async {
    _start();
    try {
      final form = FormData.fromMap({
        'file': MultipartFile.fromBytes(bytes, filename: fileName),
        'signed_by_name': signedByName,
      });
      await _apiService.dio
          .post('$_base/contracts/$contractId/documents/', data: form);
      await loadContractDetail(contractId);
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<String?> contractDocumentUrl(int documentId) async {
    try {
      final response = await _apiService.dio
          .get('$_base/contracts/documents/$documentId/download/');
      return response.data['url'];
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  // ============================================================
  // SCADENZARIO
  // ============================================================
  Future<void> loadInstallments({
    int page = 1,
    String? status,
    int? tenantId,
    int? contractId,
    int? salespersonId,
    String? dueFrom,
    String? dueTo,
    bool overdueOnly = false,
  }) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/installments/',
          queryParameters: {
            'page': page,
            if (status != null) 'status': status,
            if (tenantId != null) 'tenant_id': tenantId,
            if (contractId != null) 'contract_id': contractId,
            if (salespersonId != null) 'salesperson_id': salespersonId,
            if (dueFrom != null) 'due_from': dueFrom,
            if (dueTo != null) 'due_to': dueTo,
            if (overdueOnly) 'overdue_only': 'true',
          });
      _installments = (response.data['results'] as List)
          .map((e) => Installment.fromJson(e))
          .toList();
      _installmentsCount = response.data['count'] ?? 0;
      _installmentsPages = response.data['total_pages'] ?? 1;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  /// Incasso di una rata: è l'operazione che aggiorna copertura, cassa,
  /// fattura e provvigioni in un colpo solo.
  Future<bool> markInstallmentPaid(
      int installmentId, Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/installments/$installmentId/mark-paid/', data: data);
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> cancelInstallment(int installmentId, String reason) async {
    _start();
    try {
      await _apiService.dio.post('$_base/installments/$installmentId/cancel/',
          data: {'reason': reason});
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> issueInvoiceForInstallment(int installmentId) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/installments/$installmentId/issue-invoice/');
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // FATTURE
  // ============================================================
  Future<void> loadInvoices({
    int page = 1,
    int? year,
    int? tenantId,
    String? status,
    String? search,
  }) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/invoices/', queryParameters: {
        'page': page,
        if (year != null) 'year': year,
        if (tenantId != null) 'tenant_id': tenantId,
        if (status != null) 'status': status,
        if (search != null && search.isNotEmpty) 'search': search,
      });
      _invoices = (response.data['results'] as List)
          .map((e) => Invoice.fromJson(e))
          .toList();
      _invoicesCount = response.data['count'] ?? 0;
      _invoicesPages = response.data['total_pages'] ?? 1;
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<String?> invoiceDownloadUrl(int invoiceId) async {
    try {
      final response =
          await _apiService.dio.get('$_base/invoices/$invoiceId/download/');
      return response.data['url'];
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  /// Rigenera il PDF: utile se il render era fallito o se e' cambiata
  /// l'intestazione aziendale nelle impostazioni fiscali.
  Future<bool> regenerateInvoicePdf(int invoiceId) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/invoices/$invoiceId/regenerate-pdf/');
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  Future<bool> voidInvoice(int invoiceId, String reason) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/invoices/$invoiceId/void/', data: {'reason': reason});
      _stop();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }

  // ============================================================
  // PROVVIGIONI
  // ============================================================
  Future<void> loadCommissionSummary({int? salespersonId}) async {
    _start();
    try {
      final response = await _apiService.dio.get('$_base/commissions/summary/',
          queryParameters: {
            if (salespersonId != null) 'salesperson_id': salespersonId
          });
      _commissionSummary = (response.data as List)
          .map((e) => CommissionSummaryRow.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadCommissions(
      {int page = 1, int? salespersonId, String? status}) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/commissions/', queryParameters: {
        'page': page,
        if (salespersonId != null) 'salesperson_id': salespersonId,
        if (status != null) 'status': status,
      });
      _commissions = (response.data['results'] as List)
          .map((e) => Commission.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<void> loadPayouts({int page = 1, String? status}) async {
    _start();
    try {
      final response =
          await _apiService.dio.get('$_base/payouts/', queryParameters: {
        'page': page,
        if (status != null) 'status': status,
      });
      _payouts = (response.data['results'] as List)
          .map((e) => CommissionPayout.fromJson(e))
          .toList();
      _stop();
    } catch (error) {
      _fail(error);
    }
  }

  Future<CommissionPayout?> createPayout(Map<String, dynamic> data) async {
    _start();
    try {
      final response = await _apiService.dio.post('$_base/payouts/', data: data);
      await loadCommissionSummary();
      return CommissionPayout.fromJson(response.data);
    } catch (error) {
      _fail(error);
      return null;
    }
  }

  Future<bool> markPayoutPaid(int payoutId, Map<String, dynamic> data) async {
    _start();
    try {
      await _apiService.dio
          .post('$_base/payouts/$payoutId/mark-paid/', data: data);
      await loadPayouts();
      return true;
    } catch (error) {
      _fail(error);
      return false;
    }
  }
}
