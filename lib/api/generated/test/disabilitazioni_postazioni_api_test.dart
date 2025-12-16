import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for DisabilitazioniPostazioniApi
void main() {
  final instance = BeautyflowApi().getDisabilitazioniPostazioniApi();

  group(DisabilitazioniPostazioniApi, () {
    // Crea una nuova disabilitazione
    //
    // Crea una nuova disabilitazione per una postazione con fasce orarie associate
    //
    //Future<DisabilityCreateResponse> workstationsDisabilitiesCreate(String object, DisabilityCreate disabilityCreate) async
    test('test workstationsDisabilitiesCreate', () async {
      // TODO
    });

    // Elimina una disabilitazione
    //
    // Elimina una disabilitazione esistente
    //
    //Future workstationsDisabilitiesDestroy(int id, String object) async
    test('test workstationsDisabilitiesDestroy', () async {
      // TODO
    });

    // Ottieni tutte le disabilitazioni
    //
    // Recupera l'elenco di tutte le disabilitazioni per una postazione
    //
    //Future<BuiltList<DisabilityList>> workstationsDisabilitiesList(String object, { int workstationId }) async
    test('test workstationsDisabilitiesList', () async {
      // TODO
    });

    // Aggiorna una disabilitazione
    //
    // Aggiorna una disabilitazione esistente
    //
    //Future<DisabilityUpdateResponse> workstationsDisabilitiesUpdate(int id, String object, { DisabilityUpdate disabilityUpdate }) async
    test('test workstationsDisabilitiesUpdate', () async {
      // TODO
    });

  });
}
