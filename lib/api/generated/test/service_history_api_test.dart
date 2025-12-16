import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ServiceHistoryApi
void main() {
  final instance = BeautyflowApi().getServiceHistoryApi();

  group(ServiceHistoryApi, () {
    // Lista storico servizi (paginata)
    //
    // Ottiene lista paginata dello storico servizi con filtri opzionali
    //
    //Future<ServiceHistoryListResponse> serviceHistoryRetrieve(String object, { int customerId, String dateFrom, String dateTo, int operatorId, int page, int pageSize, bool paid, int serviceId, String widgetName }) async
    test('test serviceHistoryRetrieve', () async {
      // TODO
    });

    // Dettaglio storico servizio
    //
    // Ottiene dettaglio completo di un record storico servizio
    //
    //Future<ServiceHistoryDetail> serviceHistoryRetrieve2(int id, String object) async
    test('test serviceHistoryRetrieve2', () async {
      // TODO
    });

    // Aggiorna storico servizio
    //
    // Aggiorna un record dello storico servizi
    //
    //Future<ServiceHistoryUpdateResponse> serviceHistoryUpdate(int id, String object, { ServiceHistoryUpdate serviceHistoryUpdate }) async
    test('test serviceHistoryUpdate', () async {
      // TODO
    });

  });
}
