import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for BookingCreateRequest
void main() {
  final instance = BookingCreateRequestBuilder();
  // TODO add properties to the builder and call build()

  group(BookingCreateRequest, () {
    // ID dell'operatore primario
    // int operatorId
    test('to test the property `operatorId`', () async {
      // TODO
    });

    // ID dell'area
    // int areaId
    test('to test the property `areaId`', () async {
      // TODO
    });

    // ID operatore aggiuntivo per dual operators (esegue additionalService)
    // int additionalOperatorId
    test('to test the property `additionalOperatorId`', () async {
      // TODO
    });

    // Data prenotazione (YYYY-MM-DD)
    // String bookingDate
    test('to test the property `bookingDate`', () async {
      // TODO
    });

    // Orario inizio (HH:MM)
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // Prezzo totale
    // double totalPrice
    test('to test the property `totalPrice`', () async {
      // TODO
    });

    // ID servizio primario
    // int primaryServiceId
    test('to test the property `primaryServiceId`', () async {
      // TODO
    });

    // ID servizio aggiuntivo (opzionale, richiesto per dual operators)
    // int additionalServiceId
    test('to test the property `additionalServiceId`', () async {
      // TODO
    });

    // Lista tempi servizio primario con formato [{active: bool, time: int}]
    // BuiltList<BuiltMap<String, JsonObject>> timesPrimaryService
    test('to test the property `timesPrimaryService`', () async {
      // TODO
    });

    // Lista tempi servizio aggiuntivo (richiesto se additional_operator_id)
    // BuiltList<BuiltMap<String, JsonObject>> timesAdditionalService
    test('to test the property `timesAdditionalService`', () async {
      // TODO
    });

    // Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
    // BuiltList<BuiltMap<String, JsonObject>> serviceStepsSnapshot
    test('to test the property `serviceStepsSnapshot`', () async {
      // TODO
    });

    // Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
    // BuiltList<BuiltMap<String, JsonObject>> additionalServiceStepsSnapshot
    test('to test the property `additionalServiceStepsSnapshot`', () async {
      // TODO
    });

    // ID postazione primaria
    // int primaryIdWorkstation
    test('to test the property `primaryIdWorkstation`', () async {
      // TODO
    });

    // ID postazione secondaria (per additionalService con dual operators)
    // int secondaryIdWorkstation
    test('to test the property `secondaryIdWorkstation`', () async {
      // TODO
    });

    // ID customer registrato (ometti per guest bookings)
    // int customerId
    test('to test the property `customerId`', () async {
      // TODO
    });

    // Nome guest (richiesto se non customer_id)
    // String guestFirstName
    test('to test the property `guestFirstName`', () async {
      // TODO
    });

    // Cognome guest (richiesto se non customer_id)
    // String guestLastName
    test('to test the property `guestLastName`', () async {
      // TODO
    });

    // Telefono guest (richiesto se non customer_id)
    // String guestPhoneNumber
    test('to test the property `guestPhoneNumber`', () async {
      // TODO
    });

    // ID consultazione da convertire in booking (opzionale)
    // int consultationId
    test('to test the property `consultationId`', () async {
      // TODO
    });

    // ID servizio della consultazione (per dual operators: specifica a quale booking linkare)
    // int consultationServiceId
    test('to test the property `consultationServiceId`', () async {
      // TODO
    });

  });
}
