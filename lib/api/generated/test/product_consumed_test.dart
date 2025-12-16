import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ProductConsumed
void main() {
  final instance = ProductConsumedBuilder();
  // TODO add properties to the builder and call build()

  group(ProductConsumed, () {
    // ID del prodotto
    // int productId
    test('to test the property `productId`', () async {
      // TODO
    });

    // Quantità consumata
    // double quantity
    test('to test the property `quantity`', () async {
      // TODO
    });

    // Costo unitario (opzionale, default da prodotto)
    // double unitCost
    test('to test the property `unitCost`', () async {
      // TODO
    });

    // Prezzo vendita unitario
    // double salePricePerUnit
    test('to test the property `salePricePerUnit`', () async {
      // TODO
    });

    // Sconto percentuale (0-100)
    // double discountPercentage (default value: '0.00')
    test('to test the property `discountPercentage`', () async {
      // TODO
    });

    // Sconto fisso in euro
    // double discountAmount (default value: '0.00')
    test('to test the property `discountAmount`', () async {
      // TODO
    });

    // Importo pagato in contanti per questo prodotto
    // double cashAmount (default value: '0.00')
    test('to test the property `cashAmount`', () async {
      // TODO
    });

    // Importo pagato con carta per questo prodotto
    // double cardAmount (default value: '0.00')
    test('to test the property `cardAmount`', () async {
      // TODO
    });

    // ID operatore che ha effettuato la vendita (default: operatore del booking)
    // int soldByOperatorId
    test('to test the property `soldByOperatorId`', () async {
      // TODO
    });

  });
}
