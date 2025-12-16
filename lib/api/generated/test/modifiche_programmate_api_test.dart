import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ModificheProgrammateApi
void main() {
  final instance = BeautyflowApi().getModificheProgrammateApi();

  group(ModificheProgrammateApi, () {
    // Validazione e creazione modifica programmata
    //
    // Endpoint per validare e potenzialmente creare una modifica programmata agli orari delle aree
    //
    //Future<ValidationResponse> areeConfigScheduledChangesCreate(ScheduledTimeChangeRequest scheduledTimeChangeRequest) async
    test('test areeConfigScheduledChangesCreate', () async {
      // TODO
    });

    // Elimina modifica programmata
    //
    // Elimina una modifica programmata e ripristina tutte le correzioni applicate
    //
    //Future<DeleteResponse> areeConfigScheduledChangesDestroy(int id, String object) async
    test('test areeConfigScheduledChangesDestroy', () async {
      // TODO
    });

    // Lista modifiche programmate
    //
    // Endpoint per recuperare le modifiche programmate agli orari delle aree con filtri e paginazione
    //
    //Future<ScheduledTimeChangeListResponse> areeConfigScheduledChangesRetrieve(String object, { int areaId, int dayId, String effectiveFromEnd, String effectiveFromStart, bool isActive, String ordering, int page, int pageSize }) async
    test('test areeConfigScheduledChangesRetrieve', () async {
      // TODO
    });

  });
}
