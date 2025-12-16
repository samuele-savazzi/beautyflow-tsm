import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for AccountInformationApi
void main() {
  final instance = BeautyflowApi().getAccountInformationApi();

  group(AccountInformationApi, () {
    // Verifica quota operatori per area
    //
    // Restituisce informazioni sulla quota operatori per una specifica area: quanti operatori sono già assegnati e quanti se ne possono ancora aggiungere. Solo amministratori.
    //
    //Future<OperatorQuotaResponse> accountOperatorQuotaRetrieve(int areaId, String object) async
    test('test accountOperatorQuotaRetrieve', () async {
      // TODO
    });

    // Storico pagamenti tenant
    //
    // Restituisce lo storico pagamenti del tenant con supporto per paginazione e filtri avanzati (date range, tipo transazione, stato). Solo amministratori.
    //
    //Future<PaginatedPaymentHistoryResponse> accountPaymentHistoryRetrieve(String object, { String dateFrom, String dateTo, int page, int pageSize, String status, String transactionType }) async
    test('test accountPaymentHistoryRetrieve', () async {
      // TODO
    });

    // Informazioni quota account
    //
    // Restituisce tutte le informazioni sulla quota corrente del tenant (SMS, operatori, workstation, piano commerciale). Solo amministratori.
    //
    //Future<QuotaInfoResponse> accountQuotaInfoRetrieve(String object) async
    test('test accountQuotaInfoRetrieve', () async {
      // TODO
    });

    // Verifica quota workstation per operatore
    //
    // Restituisce informazioni sulla quota workstation per un specifico operatore: quante workstation sono già assegnate e quante se ne possono ancora aggiungere. Accessibile ad amministratori, titolari e segreteria.
    //
    //Future<WorkstationQuotaResponse> accountWorkstationQuotaRetrieve(String object, int operatorId) async
    test('test accountWorkstationQuotaRetrieve', () async {
      // TODO
    });

  });
}
