import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ConsultationCreate
void main() {
  final instance = ConsultationCreateBuilder();
  // TODO add properties to the builder and call build()

  group(ConsultationCreate, () {
    // ID operatore autorizzato
    // int operatorId
    test('to test the property `operatorId`', () async {
      // TODO
    });

    // ID servizio non prenotabile
    // int serviceId
    test('to test the property `serviceId`', () async {
      // TODO
    });

    // Data consultazione (YYYY-MM-DD)
    // Date bookingDate
    test('to test the property `bookingDate`', () async {
      // TODO
    });

    // Orario inizio (HH:MM)
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // Risposte alle domande del servizio
    // JsonObject answers
    test('to test the property `answers`', () async {
      // TODO
    });

  });
}
