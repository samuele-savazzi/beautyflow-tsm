import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for DualOperatorsHourlyAvailabilityRequest
void main() {
  final instance = DualOperatorsHourlyAvailabilityRequestBuilder();
  // TODO add properties to the builder and call build()

  group(DualOperatorsHourlyAvailabilityRequest, () {
    // ID dell'operatore primario
    // int primaryOperatorId
    test('to test the property `primaryOperatorId`', () async {
      // TODO
    });

    // ID dell'operatore addizionale (DEVE essere diverso dal primario)
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

    // Tempi per il servizio aggiuntivo (obbligatorio)
    // BuiltList<JsonObject> timesAdditionalService
    test('to test the property `timesAdditionalService`', () async {
      // TODO
    });

    // Lista delle postazioni disponibili per il servizio principale
    // BuiltList<String> avaibleWorkStationsPrimaryService
    test('to test the property `avaibleWorkStationsPrimaryService`', () async {
      // TODO
    });

    // Lista delle postazioni disponibili per il servizio aggiuntivo (possono sovrapporsi con primary)
    // BuiltList<String> avaibleWorkStationsAdditionalService
    test('to test the property `avaibleWorkStationsAdditionalService`', () async {
      // TODO
    });

    // Singolo giorno lavorativo (deve contenere esattamente 1 giorno)
    // BuiltMap<String, JsonObject> workingDays
    test('to test the property `workingDays`', () async {
      // TODO
    });

  });
}
