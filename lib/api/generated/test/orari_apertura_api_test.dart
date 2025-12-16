import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for OrariAperturaApi
void main() {
  final instance = BeautyflowApi().getOrariAperturaApi();

  group(OrariAperturaApi, () {
    // Ottieni gli orari per una data specifica
    //
    // Restituisce gli orari di apertura per la data specificata, considerando orari standard, festività, aperture e chiusure speciali
    //
    //Future<DailyHoursResponse> areeDailyHoursRetrieve(String date, String object, { int areaId }) async
    test('test areeDailyHoursRetrieve', () async {
      // TODO
    });

  });
}
