import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for BookingDeleteResponse
void main() {
  final instance = BookingDeleteResponseBuilder();
  // TODO add properties to the builder and call build()

  group(BookingDeleteResponse, () {
    // Stato della cancellazione
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // ID del booking cancellato (se success=true)
    // int bookingId
    test('to test the property `bookingId`', () async {
      // TODO
    });

    // Numero di slot eliminati (se success=true)
    // int slotsDeleted
    test('to test the property `slotsDeleted`', () async {
      // TODO
    });

    // Messaggio di errore (se success=false)
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

  });
}
