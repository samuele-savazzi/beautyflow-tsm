import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ServiceSteps
void main() {
  final instance = ServiceStepsBuilder();
  // TODO add properties to the builder and call build()

  group(ServiceSteps, () {
    // ID dello step
    // int stepId
    test('to test the property `stepId`', () async {
      // TODO
    });

    // Nome dello step
    // String stepName
    test('to test the property `stepName`', () async {
      // TODO
    });

    // Tipo di step (fixed, operator, category_fixed, category_operator, consultation)
    // String stepType
    test('to test the property `stepType`', () async {
      // TODO
    });

    // Tempo in minuti per questo step (solo per step senza categorie, con tempi personalizzati operatore se disponibili)
    // int stepTime
    test('to test the property `stepTime`', () async {
      // TODO
    });

    // Lista delle categorie disponibili per questo step. Array vuoto per step senza categorie (FIXED, OPERATOR).
    // BuiltList<CategoryOption> categories
    test('to test the property `categories`', () async {
      // TODO
    });

  });
}
