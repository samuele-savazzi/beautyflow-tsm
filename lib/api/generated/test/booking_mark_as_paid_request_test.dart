import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for BookingMarkAsPaidRequest
void main() {
  final instance = BookingMarkAsPaidRequestBuilder();
  // TODO add properties to the builder and call build()

  group(BookingMarkAsPaidRequest, () {
    // ID del booking da pagare
    // int bookingId
    test('to test the property `bookingId`', () async {
      // TODO
    });

    // Importo pagato in contanti
    // double cashAmount (default value: '0.00')
    test('to test the property `cashAmount`', () async {
      // TODO
    });

    // Importo pagato con carta
    // double cardAmount (default value: '0.00')
    test('to test the property `cardAmount`', () async {
      // TODO
    });

    // Lista prodotti consumati/venduti
    // BuiltList<ProductConsumed> productsConsumed
    test('to test the property `productsConsumed`', () async {
      // TODO
    });

  });
}
