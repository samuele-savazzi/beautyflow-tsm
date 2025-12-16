import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for GetFrequentServiceResponse
void main() {
  final instance = GetFrequentServiceResponseBuilder();
  // TODO add properties to the builder and call build()

  group(GetFrequentServiceResponse, () {
    // Indica se l'operatore ha impostato un servizio frequente
    // bool hasFrequentService
    test('to test the property `hasFrequentService`', () async {
      // TODO
    });

    // ServiceBasic service
    test('to test the property `service`', () async {
      // TODO
    });

    // Dizionario con chiave step_id (string) e valore oggetto categoria. Es: {\"568\": {...}, \"569\": {...}}
    // BuiltMap<String, CategoryDetail> categories
    test('to test the property `categories`', () async {
      // TODO
    });

    // Durata totale in minuti
    // int durationMinutes
    test('to test the property `durationMinutes`', () async {
      // TODO
    });

    // Durata formattata human readable (es: \"1 ora e 30 minuti\")
    // String durationHumanReadable
    test('to test the property `durationHumanReadable`', () async {
      // TODO
    });

    // Durata in slot da 5 minuti (es: 30 min = 6 slot)
    // int durationSlots
    test('to test the property `durationSlots`', () async {
      // TODO
    });

    // Data ultimo aggiornamento
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
