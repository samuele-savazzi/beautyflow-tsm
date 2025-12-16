import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for NotificheApi
void main() {
  final instance = BeautyflowApi().getNotificheApi();

  group(NotificheApi, () {
    // Segna notifiche come lette
    //
    // Segna come lette una o più notifiche dell'utente corrente
    //
    //Future<MarkNotificationsReadResponse> notificationsCreate(String object, MarkNotificationsRead markNotificationsRead) async
    test('test notificationsCreate', () async {
      // TODO
    });

    // Elimina notifiche
    //
    // Elimina una o più notifiche dell'utente corrente
    //
    //Future<DeleteNotificationResponse> notificationsDestroy(String object, { bool allRead, int notificationId }) async
    test('test notificationsDestroy', () async {
      // TODO
    });

    // Ottieni le notifiche
    //
    // Recupera l'elenco delle notifiche dell'utente corrente
    //
    //Future<BuiltList<Notification>> notificationsList(String object, { bool read, String type }) async
    test('test notificationsList', () async {
      // TODO
    });

    // Invia notifiche di test
    //
    // Invia notifiche di test all'utente corrente o a gruppi di utenti in base ai parametri
    //
    //Future<TestNotificationResponse> notificationsTestCreate({ TestNotificationRequest testNotificationRequest }) async
    test('test notificationsTestCreate', () async {
      // TODO
    });

    // Ottieni la chiave pubblica VAPID
    //
    // Restituisce la chiave pubblica VAPID necessaria per configurare le notifiche push
    //
    //Future<VapidPublicKeyResponse> notificationsVapidPublicKeyRetrieve(String object) async
    test('test notificationsVapidPublicKeyRetrieve', () async {
      // TODO
    });

  });
}
