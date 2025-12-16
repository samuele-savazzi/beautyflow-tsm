import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for AvailabilityRequest
void main() {
  final instance = AvailabilityRequestBuilder();
  // TODO add properties to the builder and call build()

  group(AvailabilityRequest, () {
    // ID dell'operatore (single operator mode)
    // int operatorId
    test('to test the property `operatorId`', () async {
      // TODO
    });

    // ID dell'operatore primario (dual operators mode)
    // int primaryOperatorId
    test('to test the property `primaryOperatorId`', () async {
      // TODO
    });

    // ID dell'operatore addizionale (dual operators mode)
    // int additionalOperatorId
    test('to test the property `additionalOperatorId`', () async {
      // TODO
    });

    // ID dell'area
    // int areaId
    test('to test the property `areaId`', () async {
      // TODO
    });

    // ID del servizio principale
    // int primaryServiceId
    test('to test the property `primaryServiceId`', () async {
      // TODO
    });

    // ID del servizio aggiuntivo (obbligatorio per dual operators)
    // int additionalServiceId
    test('to test the property `additionalServiceId`', () async {
      // TODO
    });

    // Tempi per il servizio principale
    // BuiltList<JsonObject> timesPrimaryService
    test('to test the property `timesPrimaryService`', () async {
      // TODO
    });

    // Tempi per il servizio aggiuntivo
    // BuiltList<JsonObject> timesAdditionalService
    test('to test the property `timesAdditionalService`', () async {
      // TODO
    });

    // Lista delle postazioni disponibili per il servizio principale
    // BuiltList<String> avaibleWorkStationsPrimaryService
    test('to test the property `avaibleWorkStationsPrimaryService`', () async {
      // TODO
    });

    // Lista delle postazioni disponibili per il servizio aggiuntivo
    // BuiltList<String> avaibleWorkStationsAdditionalService
    test('to test the property `avaibleWorkStationsAdditionalService`', () async {
      // TODO
    });

    // Giorni lavorativi
    // BuiltMap<String, JsonObject> workingDays
    test('to test the property `workingDays`', () async {
      // TODO
    });

    // Orari specifici per operatore primario (opzionale, default: workingDays)
    // BuiltMap<String, JsonObject> primaryOperatorWorkingDays
    test('to test the property `primaryOperatorWorkingDays`', () async {
      // TODO
    });

    // Orari specifici per operatore addizionale (opzionale, default: workingDays)
    // BuiltMap<String, JsonObject> additionalOperatorWorkingDays
    test('to test the property `additionalOperatorWorkingDays`', () async {
      // TODO
    });

    // Slot minimi di gap tra prenotazioni. Gap deve essere 0 o >= valore specificato. Se non specificato, nessun controllo gap.
    // int minimumGapSlots
    test('to test the property `minimumGapSlots`', () async {
      // TODO
    });

    // Cerca disponibilità solo nel periodo mattino
    // bool searchOnlyMorning (default value: false)
    test('to test the property `searchOnlyMorning`', () async {
      // TODO
    });

    // Cerca disponibilità solo nel periodo pomeriggio
    // bool searchOnlyAfternoon (default value: false)
    test('to test the property `searchOnlyAfternoon`', () async {
      // TODO
    });

  });
}
