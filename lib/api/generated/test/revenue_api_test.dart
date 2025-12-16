import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for RevenueApi
void main() {
  final instance = BeautyflowApi().getRevenueApi();

  group(RevenueApi, () {
    // Ottieni revenue giornaliero
    //
    // Ritorna dati revenue per area o operatore in una data specifica (default: oggi)
    //
    //Future<DailyRevenueResponse> revenueDailyRetrieve(int areaId, String object, { String date, int operatorId }) async
    test('test revenueDailyRetrieve', () async {
      // TODO
    });

  });
}
