import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ApertureEChiusureApi
void main() {
  final instance = BeautyflowApi().getApertureEChiusureApi();

  group(ApertureEChiusureApi, () {
    // Crea una nuova chiusura speciale
    //
    // Crea una nuova chiusura speciale per una specifica area
    //
    //Future<SpecialClosingCreated> areeConfigSpecialClosingsCreate(String object, SpecialClosingCreate specialClosingCreate) async
    test('test areeConfigSpecialClosingsCreate', () async {
      // TODO
    });

    // Elimina una chiusura speciale
    //
    // Elimina una chiusura speciale esistente
    //
    //Future areeConfigSpecialClosingsDestroy(int id, String object) async
    test('test areeConfigSpecialClosingsDestroy', () async {
      // TODO
    });

    // Ottieni le chiusure speciali per un'area
    //
    // Recupera tutte le chiusure speciali per una specifica area
    //
    //Future<BuiltList<SpecialClosingList>> areeConfigSpecialClosingsList(int areaId, String object, { String endDate, String startDate }) async
    test('test areeConfigSpecialClosingsList', () async {
      // TODO
    });

    // Aggiorna una chiusura speciale
    //
    // Aggiorna una chiusura speciale esistente
    //
    //Future areeConfigSpecialClosingsUpdate(int id, String object, SpecialClosingUpdate specialClosingUpdate) async
    test('test areeConfigSpecialClosingsUpdate', () async {
      // TODO
    });

    // Crea una nuova apertura speciale con gestione operatori
    //
    // Crea una nuova apertura speciale per una specifica area. Supporta modalità \"get_operators_only\" per ottenere la lista degli operatori prima della creazione finale.
    //
    //Future<OperatorsResponse> areeConfigSpecialOpeningsCreate(String object, SpecialOpeningRequest specialOpeningRequest) async
    test('test areeConfigSpecialOpeningsCreate', () async {
      // TODO
    });

    // Elimina un'apertura speciale
    //
    // Elimina un'apertura speciale esistente e tutte le associazioni operatori
    //
    //Future areeConfigSpecialOpeningsDestroy(int id, String object) async
    test('test areeConfigSpecialOpeningsDestroy', () async {
      // TODO
    });

    // Ottieni le aperture speciali per un'area con operatori
    //
    // Recupera tutte le aperture speciali per una specifica area includendo gli operatori associati e i loro orari
    //
    //Future<BuiltList<SpecialOpeningDetail>> areeConfigSpecialOpeningsRetrieve(int areaId, String object, { String endDate, String startDate }) async
    test('test areeConfigSpecialOpeningsRetrieve', () async {
      // TODO
    });

    // Aggiorna un'apertura speciale con operatori
    //
    // Aggiorna un'apertura speciale esistente e i suoi operatori associati
    //
    //Future<OperatorsResponseUpdate> areeConfigSpecialOpeningsUpdate(int id, String object, SpecialOpeningUpdate specialOpeningUpdate) async
    test('test areeConfigSpecialOpeningsUpdate', () async {
      // TODO
    });

  });
}
