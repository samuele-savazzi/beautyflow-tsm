import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for HourlySlot
void main() {
  final instance = HourlySlotBuilder();
  // TODO add properties to the builder and call build()

  group(HourlySlot, () {
    // Data dello slot
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Periodo (morning/afternoon)
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Orario di inizio dello slot
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // Orario di fine dello slot
    // String endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // Indice slot di inizio
    // int startIdx
    test('to test the property `startIdx`', () async {
      // TODO
    });

    // Indice slot di fine
    // int endIdx
    test('to test the property `endIdx`', () async {
      // TODO
    });

    // ID postazione (single workstation)
    // int workstationId
    test('to test the property `workstationId`', () async {
      // TODO
    });

    // ID postazione primaria (multi-workstation)
    // int primaryWorkstationId
    test('to test the property `primaryWorkstationId`', () async {
      // TODO
    });

    // ID postazione aggiuntiva (multi-workstation)
    // int additionalWorkstationId
    test('to test the property `additionalWorkstationId`', () async {
      // TODO
    });

    // Lista di tutti gli ID postazioni coinvolte
    // BuiltList<int> workstationIds
    test('to test the property `workstationIds`', () async {
      // TODO
    });

    // Punteggio di qualità della disponibilità (0-100)
    // int availabilityScore
    test('to test the property `availabilityScore`', () async {
      // TODO
    });

  });
}
