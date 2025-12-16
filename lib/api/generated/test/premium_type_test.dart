import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for PremiumType
void main() {
  final instance = PremiumTypeBuilder();
  // TODO add properties to the builder and call build()

  group(PremiumType, () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // Area associata al piano premium
    // int area
    test('to test the property `area`', () async {
      // TODO
    });

    // Nome del piano premium (es. 'Gold', 'Platinum')
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Prezzo del piano premium
    // double price
    test('to test the property `price`', () async {
      // TODO
    });

    // bool active
    test('to test the property `active`', () async {
      // TODO
    });

    // Numero di operatori con accesso premium attivo
    // int operatorsCount
    test('to test the property `operatorsCount`', () async {
      // TODO
    });

    // Lista operatori con accesso premium (incluso solo nelle subscription)
    // BuiltList<OperatorAccessNested> operatorAccesses
    test('to test the property `operatorAccesses`', () async {
      // TODO
    });

    // Lista operatori disponibili da associare (solo se richiesto con include_available_operators)
    // BuiltList<BuiltMap<String, JsonObject>> availableOperators
    test('to test the property `availableOperators`', () async {
      // TODO
    });

    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
