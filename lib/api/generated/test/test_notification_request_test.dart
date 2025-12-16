import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for TestNotificationRequest
void main() {
  final instance = TestNotificationRequestBuilder();
  // TODO add properties to the builder and call build()

  group(TestNotificationRequest, () {
    // VisibilityEnum visibility (default value: VisibilityEnum.individual)
    test('to test the property `visibility`', () async {
      // TODO
    });

    // Se True, testa l'invio in bulk per gruppi di utenti
    // bool testBulk (default value: false)
    test('to test the property `testBulk`', () async {
      // TODO
    });

    // Dizionario con filtri per ruoli (es. {\"is_admin\": true})
    // BuiltMap<String, JsonObject> rolesFilter
    test('to test the property `rolesFilter`', () async {
      // TODO
    });

    // Lista di ID aree da includere nel test
    // BuiltList<int> areas
    test('to test the property `areas`', () async {
      // TODO
    });

    // ID utente a cui inviare le notifiche (solo per test individuali)
    // int userId
    test('to test the property `userId`', () async {
      // TODO
    });

  });
}
