import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for OperatoriApi
void main() {
  final instance = BeautyflowApi().getOperatoriApi();

  group(OperatoriApi, () {
    // Ottieni i servizi selezionabili per il servizio frequente
    //
    // Ritorna tutti i servizi dell'operatore (esclusi quelli con step/categorie CONSULTATION) con le loro categorie per permettere la selezione del servizio frequente.
    //
    //Future<GetAvailableServicesResponse> operatorsAvailableFrequentServicesRetrieve(String object, int operatorId) async
    test('test operatorsAvailableFrequentServicesRetrieve', () async {
      // TODO
    });

    // Crea un nuovo operatore
    //
    // Crea un nuovo operatore con le relative associazioni
    //
    //Future<OperatorCreateResponse> operatorsCreate(String object, OperatorCreate operatorCreate) async
    test('test operatorsCreate', () async {
      // TODO
    });

    // Elimina un operatore
    //
    // Elimina un operatore esistente
    //
    //Future operatorsDestroy(int id, String object) async
    test('test operatorsDestroy', () async {
      // TODO
    });

    // Dettaglio operatore
    //
    // Recupera i dettagli di un operatore specifico
    //
    //Future<OperatorDetail> operatorsDetailRetrieve(int id, String object) async
    test('test operatorsDetailRetrieve', () async {
      // TODO
    });

    // Ottieni il servizio più frequente di un operatore
    //
    // Ritorna il servizio frequente dell'operatore con categorie selezionate e durata human readable.
    //
    //Future<GetFrequentServiceResponse> operatorsFrequentServiceRetrieve(String object, int operatorId) async
    test('test operatorsFrequentServiceRetrieve', () async {
      // TODO
    });

    // Ottieni tutti gli operatori
    //
    // Recupera l'elenco di tutti gli operatori disponibili
    //
    //Future<BuiltList<OperatorList>> operatorsList(String object, { int areaId }) async
    test('test operatorsList', () async {
      // TODO
    });

    // Imposta il servizio più frequente per un operatore
    //
    // Permette al frontend di indicare il servizio più frequente dell'operatore con le categorie selezionate. La durata viene calcolata automaticamente.
    //
    //Future<SetFrequentServiceResponse> operatorsSetFrequentServiceCreate(String object, int operatorId, SetFrequentServiceRequest setFrequentServiceRequest) async
    test('test operatorsSetFrequentServiceCreate', () async {
      // TODO
    });

    // Crea un'apertura speciale per un operatore
    //
    // Crea una nuova assegnazione di apertura speciale per un operatore
    //
    //Future<CreatedOperatorSpecialOpening> operatorsSpecialOpeningsCreate(CreateOperatorSpecialOpening createOperatorSpecialOpening) async
    test('test operatorsSpecialOpeningsCreate', () async {
      // TODO
    });

    // Elimina un'apertura speciale per un operatore
    //
    // Rimuove un'assegnazione di apertura speciale per un operatore
    //
    //Future operatorsSpecialOpeningsDestroy() async
    test('test operatorsSpecialOpeningsDestroy', () async {
      // TODO
    });

    // Ottieni le aperture speciali di un operatore
    //
    // Recupera tutte le aperture speciali assegnate a un operatore
    //
    //Future<BuiltList<OperatorSpecialOpeningList>> operatorsSpecialOpeningsRetrieve({ int operatorId, int specialOpeningId }) async
    test('test operatorsSpecialOpeningsRetrieve', () async {
      // TODO
    });

    // Aggiorna un'apertura speciale per un operatore
    //
    // Aggiorna un'assegnazione esistente di apertura speciale per un operatore
    //
    //Future<UpdatedOperatorSpecialOpening> operatorsSpecialOpeningsUpdate(UpdateOperatorSpecialOpening updateOperatorSpecialOpening) async
    test('test operatorsSpecialOpeningsUpdate', () async {
      // TODO
    });

    // Aggiorna un operatore
    //
    // Aggiorna i dati di un operatore esistente
    //
    //Future<OperatorUpdateResponse> operatorsUpdate(int id, String object, { OperatorUpdate operatorUpdate }) async
    test('test operatorsUpdate', () async {
      // TODO
    });

  });
}
