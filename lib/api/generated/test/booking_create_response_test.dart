import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for BookingCreateResponse
void main() {
  final instance = BookingCreateResponseBuilder();
  // TODO add properties to the builder and call build()

  group(BookingCreateResponse, () {
    // Stato della creazione
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // ID del booking creato (se success=true)
    // int bookingId
    test('to test the property `bookingId`', () async {
      // TODO
    });

    // Numero di slot creati (se success=true)
    // int slotsCreated
    test('to test the property `slotsCreated`', () async {
      // TODO
    });

    // Durata totale in minuti (se success=true)
    // int totalDuration
    test('to test the property `totalDuration`', () async {
      // TODO
    });

    // Messaggio di errore (se success=false)
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

  });
}
