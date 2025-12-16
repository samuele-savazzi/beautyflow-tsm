import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for DisabilitazioniOperatoriApi
void main() {
  final instance = BeautyflowApi().getDisabilitazioniOperatoriApi();

  group(DisabilitazioniOperatoriApi, () {
    // Crea una nuova disabilitazione
    //
    // Crea una nuova disabilitazione per un operatore con fasce orarie associate
    //
    //Future<OperatorDisabilityCreateResponse> operatorsDisabilitiesCreate(String object, OperatorDisabilityCreate operatorDisabilityCreate) async
    test('test operatorsDisabilitiesCreate', () async {
      // TODO
    });

    // Elimina una disabilitazione
    //
    // Elimina una disabilitazione esistente
    //
    //Future operatorsDisabilitiesDestroy(int id, String object) async
    test('test operatorsDisabilitiesDestroy', () async {
      // TODO
    });

    // Ottieni tutte le disabilitazioni
    //
    // Recupera l'elenco di tutte le disabilitazioni per un operatore
    //
    //Future<BuiltList<OperatorDisabilityList>> operatorsDisabilitiesList(String object, { int operatorId }) async
    test('test operatorsDisabilitiesList', () async {
      // TODO
    });

    // Aggiorna una disabilitazione
    //
    // Aggiorna una disabilitazione esistente
    //
    //Future<OperatorDisabilityUpdateResponse> operatorsDisabilitiesUpdate(int id, String object, { OperatorDisabilityUpdate operatorDisabilityUpdate }) async
    test('test operatorsDisabilitiesUpdate', () async {
      // TODO
    });

  });
}
