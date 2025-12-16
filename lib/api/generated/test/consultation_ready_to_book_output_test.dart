import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ConsultationReadyToBookOutput
void main() {
  final instance = ConsultationReadyToBookOutputBuilder();
  // TODO add properties to the builder and call build()

  group(ConsultationReadyToBookOutput, () {
    // int id
    test('to test the property `id`', () async {
      // TODO
    });

    // int customer
    test('to test the property `customer`', () async {
      // TODO
    });

    // String customerName
    test('to test the property `customerName`', () async {
      // TODO
    });

    // Servizio non prenotabile (bookable=False)
    // int service
    test('to test the property `service`', () async {
      // TODO
    });

    // String serviceName
    test('to test the property `serviceName`', () async {
      // TODO
    });

    // StatusEnum status
    test('to test the property `status`', () async {
      // TODO
    });

    // Step e durate definitive passate dal frontend. Immutabili dopo il salvataggio. Formato: [{'step_id': int, 'step_name': str, 'duration_minutes': int, active: bool, category_selected: int, category_name}]
    // JsonObject serviceStepsSnapshot
    test('to test the property `serviceStepsSnapshot`', () async {
      // TODO
    });

    // Descrizione dettagliata del servizio personalizzato dopo la consultation
    // String finalDescription
    test('to test the property `finalDescription`', () async {
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
