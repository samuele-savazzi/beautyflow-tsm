import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for TipologiaNotificheApi
void main() {
  final instance = BeautyflowApi().getTipologiaNotificheApi();

  group(TipologiaNotificheApi, () {
    // Ottieni tipologie di notifica
    //
    // Recupera l'elenco di tutte le tipologie di notifica disponibili
    //
    //Future<BuiltList<NotificationType>> notificationsTypeList(String object) async
    test('test notificationsTypeList', () async {
      // TODO
    });

    // Aggiorna tipologie di notifica
    //
    // Aggiorna il tempo di vita, il colore e il flag per mostrare come popup di più tipologie di notifica
    //
    //Future<BuiltList<NotificationType>> notificationsTypeUpdate(String object, BuiltList<NotificationTypeUpdateItem> notificationTypeUpdateItem) async
    test('test notificationsTypeUpdate', () async {
      // TODO
    });

  });
}
