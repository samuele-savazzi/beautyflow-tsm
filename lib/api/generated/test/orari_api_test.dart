import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for OrariApi
void main() {
  final instance = BeautyflowApi().getOrariApi();

  group(OrariApi, () {
    // Ottieni i giorni della settimana
    //
    // Recupera l'elenco di tutti i giorni della settimana
    //
    //Future<BuiltList<DayOfWeekList>> areeConfigDaysList(String object) async
    test('test areeConfigDaysList', () async {
      // TODO
    });

    // Crea nuovi orari giornalieri per un'area
    //
    // Crea nuovi orari giornalieri per una specifica area, utilizzando la stessa struttura della PUT
    //
    //Future<DailyScheduleCreated> areeConfigSchedulesCreate(String object, DailyScheduleCreate dailyScheduleCreate) async
    test('test areeConfigSchedulesCreate', () async {
      // TODO
    });

    // Ottieni gli orari giornalieri per un'area
    //
    // Recupera gli orari giornalieri per una specifica area
    //
    //Future<BuiltList<DailyScheduleList>> areeConfigSchedulesList(int areaId, String object) async
    test('test areeConfigSchedulesList', () async {
      // TODO
    });

    // Aggiorna gli orari giornalieri per un'area
    //
    // Aggiorna gli orari giornalieri e le fasce orarie per una specifica area
    //
    //Future areeConfigSchedulesUpdate(int id, String object, DailyScheduleUpdate dailyScheduleUpdate) async
    test('test areeConfigSchedulesUpdate', () async {
      // TODO
    });

  });
}
