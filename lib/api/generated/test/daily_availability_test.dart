import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for DailyAvailability
void main() {
  final instance = DailyAvailabilityBuilder();
  // TODO add properties to the builder and call build()

  group(DailyAvailability, () {
    // Data del giorno
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Se c'è almeno una disponibilità nel giorno
    // bool available
    test('to test the property `available`', () async {
      // TODO
    });

    // Se c'è disponibilità al mattino
    // bool morningAvailable
    test('to test the property `morningAvailable`', () async {
      // TODO
    });

    // Se c'è disponibilità al pomeriggio
    // bool afternoonAvailable
    test('to test the property `afternoonAvailable`', () async {
      // TODO
    });

  });
}
