import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for BookingItem
void main() {
  final instance = BookingItemBuilder();
  // TODO add properties to the builder and call build()

  group(BookingItem, () {
    // ID del booking
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // Data della prenotazione
    // Date bookingDate
    test('to test the property `bookingDate`', () async {
      // TODO
    });

    // Orario di inizio
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // Orario di fine
    // String endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // Durata in minuti
    // int durationMinutes
    test('to test the property `durationMinutes`', () async {
      // TODO
    });

    // Prezzo totale
    // double totalPrice
    test('to test the property `totalPrice`', () async {
      // TODO
    });

    // Stato della prenotazione
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Nome completo dell'operatore
    // String operatorName
    test('to test the property `operatorName`', () async {
      // TODO
    });

    // URL foto operatore
    // String operatorPhoto
    test('to test the property `operatorPhoto`', () async {
      // TODO
    });

    // Nome dell'area
    // String areaName
    test('to test the property `areaName`', () async {
      // TODO
    });

    // Nome del servizio principale
    // String primaryServiceName
    test('to test the property `primaryServiceName`', () async {
      // TODO
    });

    // Nome del servizio aggiuntivo
    // String additionalServiceName
    test('to test the property `additionalServiceName`', () async {
      // TODO
    });

    // Se la prenotazione è una consultazione
    // bool consultation
    test('to test the property `consultation`', () async {
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

  });
}
