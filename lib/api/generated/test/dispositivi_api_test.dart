import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for DispositiviApi
void main() {
  final instance = BeautyflowApi().getDispositiviApi();

  group(DispositiviApi, () {
    // Registra un token di dispositivo
    //
    // Registra un nuovo token di dispositivo per l'utente corrente
    //
    //Future<DeviceToken> notificationsDevicesCreate(String object, DeviceToken deviceToken) async
    test('test notificationsDevicesCreate', () async {
      // TODO
    });

    // Elimina un token di dispositivo
    //
    // Elimina un token di dispositivo dell'utente corrente
    //
    //Future<DeleteTokenResponse> notificationsDevicesDestroy(String object, { int id, String platform, String token }) async
    test('test notificationsDevicesDestroy', () async {
      // TODO
    });

    // Ottieni i token dei dispositivi
    //
    // Recupera l'elenco dei token dei dispositivi dell'utente corrente
    //
    //Future<BuiltList<DeviceToken>> notificationsDevicesList(String object, { bool active, String platform }) async
    test('test notificationsDevicesList', () async {
      // TODO
    });

    // Aggiorna lo stato di un token
    //
    // Aggiorna lo stato (attivo/inattivo) di un token di dispositivo
    //
    //Future<DeviceToken> notificationsDevicesUpdate(String object, UpdateDeviceToken updateDeviceToken) async
    test('test notificationsDevicesUpdate', () async {
      // TODO
    });

  });
}
