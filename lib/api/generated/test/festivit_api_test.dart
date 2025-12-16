import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for FestivitApi
void main() {
  final instance = BeautyflowApi().getFestivitApi();

  group(FestivitApi, () {
    // Crea una nuova festività
    //
    // Crea una nuova festività per una specifica area
    //
    //Future<HolidayCreated> areeConfigHolidaysCreate(String object, HolidayCreate holidayCreate) async
    test('test areeConfigHolidaysCreate', () async {
      // TODO
    });

    // Elimina una festività
    //
    // Elimina una festività esistente
    //
    //Future areeConfigHolidaysDestroy(int id, String object) async
    test('test areeConfigHolidaysDestroy', () async {
      // TODO
    });

    // Ottieni le festività per un'area
    //
    // Recupera tutte le festività per una specifica area
    //
    //Future<BuiltList<HolidayList>> areeConfigHolidaysList(int areaId, String object, { String endDate, String startDate }) async
    test('test areeConfigHolidaysList', () async {
      // TODO
    });

    // Aggiorna una festività
    //
    // Aggiorna una festività esistente
    //
    //Future areeConfigHolidaysUpdate(int id, String object, HolidayUpdate holidayUpdate) async
    test('test areeConfigHolidaysUpdate', () async {
      // TODO
    });

  });
}
