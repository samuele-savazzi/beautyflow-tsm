import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConsultationsReadyToBookApi
void main() {
  final instance = BeautyflowApi().getConsultationsReadyToBookApi();

  group(ConsultationsReadyToBookApi, () {
    // Lista consultazioni pronte da prenotare
    //
    // Ottiene lista paginata delle consultazioni in stato 'ready_to_book'. Include filtri per nome cliente, operatore, servizio e area.
    //
    //Future<ConsultationReadyToBookListResponse> consultationsReadyToBookListRetrieve(String object, { int areaId, String customerName, String operatorName, int page, int pageSize, String serviceName }) async
    test('test consultationsReadyToBookListRetrieve', () async {
      // TODO
    });

  });
}
