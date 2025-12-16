import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for PostazioniApi
void main() {
  final instance = BeautyflowApi().getPostazioniApi();

  group(PostazioniApi, () {
    // Crea una nuova postazione
    //
    // Crea una nuova postazione con i relativi servizi associati
    //
    //Future<WorkStationCreateResponse> workstationsCreate(String object, WorkStationCreate workStationCreate) async
    test('test workstationsCreate', () async {
      // TODO
    });

    // Elimina una postazione
    //
    // Elimina una postazione esistente
    //
    //Future workstationsDestroy(int id, String object) async
    test('test workstationsDestroy', () async {
      // TODO
    });

    // Ottieni una postazione specifica
    //
    // Recupera i dettagli di una postazione specifica con le relative disabilitazioni
    //
    //Future<WorkStationDetail> workstationsDetailRetrieve(int id, String object) async
    test('test workstationsDetailRetrieve', () async {
      // TODO
    });

    // Ottieni tutte le postazioni
    //
    // Recupera l'elenco di tutte le postazioni disponibili
    //
    //Future<BuiltList<WorkStationList>> workstationsList(String object, { int areaId }) async
    test('test workstationsList', () async {
      // TODO
    });

    // Aggiorna una postazione
    //
    // Aggiorna i dati di una postazione esistente
    //
    //Future<WorkStationUpdateResponse> workstationsUpdate(String object, WorkStationUpdate workStationUpdate) async
    test('test workstationsUpdate', () async {
      // TODO
    });

  });
}
