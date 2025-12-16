import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for PremiumApi
void main() {
  final instance = BeautyflowApi().getPremiumApi();

  group(PremiumApi, () {
    // Report storico subscription
    //
    // Genera report analitici sulle subscription premium con statistiche aggregate
    //
    //Future premiumHistoryReportRetrieve(String object, { int areaId, String endDate, String movementType, String startDate }) async
    test('test premiumHistoryReportRetrieve', () async {
      // TODO
    });

    // Assegna operatori premium (bulk)
    //
    // Assegna o aggiorna multipli operatori a un piano premium in una sola operazione
    //
    //Future<BuiltList<PremiumOperatorAccess>> premiumOperatorAccessBulkCreate(String object, PremiumOperatorAccessBulk premiumOperatorAccessBulk) async
    test('test premiumOperatorAccessBulkCreate', () async {
      // TODO
    });

    // Assegna operatore premium
    //
    // Assegna un operatore a un piano premium con giorni extra
    //
    //Future<PremiumOperatorAccess> premiumOperatorAccessCreate(String object, PremiumOperatorAccess premiumOperatorAccess) async
    test('test premiumOperatorAccessCreate', () async {
      // TODO
    });

    // Rimuovi operatore premium
    //
    // Rimuove un operatore da un piano premium
    //
    //Future premiumOperatorAccessDestroy(int id, String object) async
    test('test premiumOperatorAccessDestroy', () async {
      // TODO
    });

    // Lista operatori premium
    //
    // Recupera la lista di operatori con accesso premium
    //
    //Future<BuiltList<PremiumOperatorAccess>> premiumOperatorAccessList(String object, { bool active, int operator_, int premiumType }) async
    test('test premiumOperatorAccessList', () async {
      // TODO
    });

    // Aggiorna accesso premium
    //
    // Aggiorna giorni extra o stato attivo di un accesso premium
    //
    //Future<PremiumOperatorAccess> premiumOperatorAccessPartialUpdate(int id, String object, { PatchedPremiumOperatorAccess patchedPremiumOperatorAccess }) async
    test('test premiumOperatorAccessPartialUpdate', () async {
      // TODO
    });

    // Dettaglio accesso premium
    //
    // Recupera i dettagli di un accesso premium operatore
    //
    //Future<PremiumOperatorAccess> premiumOperatorAccessRetrieve(int id, String object) async
    test('test premiumOperatorAccessRetrieve', () async {
      // TODO
    });

    // Cancella subscription premium
    //
    // Cancella/disattiva una subscription premium
    //
    //Future<PremiumSubscription> premiumSubscriptionsCancelCreate(int id, String object, SubscriptionCancel subscriptionCancel) async
    test('test premiumSubscriptionsCancelCreate', () async {
      // TODO
    });

    // Crea subscription premium
    //
    // Crea una subscription premium per un cliente
    //
    //Future<PremiumSubscription> premiumSubscriptionsCreate(String object, PremiumSubscription premiumSubscription) async
    test('test premiumSubscriptionsCreate', () async {
      // TODO
    });

    // Elimina subscription premium
    //
    // Elimina una subscription premium
    //
    //Future premiumSubscriptionsDestroy(int id, String object) async
    test('test premiumSubscriptionsDestroy', () async {
      // TODO
    });

    // Storico subscription premium
    //
    // Recupera lo storico completo delle movimentazioni di una subscription
    //
    //Future<BuiltList<PremiumSubscriptionHistory>> premiumSubscriptionsHistoryList(String object, int subscriptionId) async
    test('test premiumSubscriptionsHistoryList', () async {
      // TODO
    });

    // Aggiorna subscription premium
    //
    // Aggiorna una subscription premium
    //
    //Future<PremiumSubscription> premiumSubscriptionsPartialUpdate(int id, String object, { PatchedPremiumSubscription patchedPremiumSubscription }) async
    test('test premiumSubscriptionsPartialUpdate', () async {
      // TODO
    });

    // Riattiva subscription premium
    //
    // Riattiva una subscription premium precedentemente cancellata
    //
    //Future<PremiumSubscription> premiumSubscriptionsReactivateCreate(int id, String object, { SubscriptionReactivate subscriptionReactivate }) async
    test('test premiumSubscriptionsReactivateCreate', () async {
      // TODO
    });

    // Rinnova subscription premium
    //
    // Rinnova una subscription estendendo la data di scadenza
    //
    //Future<PremiumSubscription> premiumSubscriptionsRenewCreate(int id, String object, { SubscriptionRenew subscriptionRenew }) async
    test('test premiumSubscriptionsRenewCreate', () async {
      // TODO
    });

    // Lista subscription premium
    //
    // Recupera le subscription premium dei clienti
    //
    //Future<PaginatedSubscriptionResponse> premiumSubscriptionsRetrieve(String object, { bool active, int areaId, int customer, int page, int pageSize }) async
    test('test premiumSubscriptionsRetrieve', () async {
      // TODO
    });

    // Dettaglio subscription premium
    //
    // Recupera i dettagli di una subscription premium
    //
    //Future<PremiumSubscription> premiumSubscriptionsRetrieve2(int id, String object) async
    test('test premiumSubscriptionsRetrieve2', () async {
      // TODO
    });

    // Crea piano premium
    //
    // Crea un nuovo piano premium
    //
    //Future<PremiumType> premiumTypesCreate(String object, PremiumType premiumType) async
    test('test premiumTypesCreate', () async {
      // TODO
    });

    // Elimina piano premium
    //
    // Elimina un piano premium
    //
    //Future premiumTypesDestroy(int id, String object) async
    test('test premiumTypesDestroy', () async {
      // TODO
    });

    // Lista piani premium
    //
    // Recupera tutti i piani premium disponibili
    //
    //Future<BuiltList<PremiumType>> premiumTypesList(String object, { bool active, int areaId }) async
    test('test premiumTypesList', () async {
      // TODO
    });

    // Aggiorna piano premium
    //
    // Aggiorna parzialmente un piano premium
    //
    //Future<PremiumType> premiumTypesPartialUpdate(int id, String object, { PatchedPremiumType patchedPremiumType }) async
    test('test premiumTypesPartialUpdate', () async {
      // TODO
    });

    // Dettaglio piano premium
    //
    // Recupera i dettagli di un piano premium specifico
    //
    //Future<PremiumType> premiumTypesRetrieve(int id, String object, { bool includeAvailableOperators }) async
    test('test premiumTypesRetrieve', () async {
      // TODO
    });

  });
}
