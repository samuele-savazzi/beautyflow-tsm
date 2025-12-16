import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for ActivateTierRequest
void main() {
  final instance = ActivateTierRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ActivateTierRequest, () {
    // ID tier da attivare
    // int tierId
    test('to test the property `tierId`', () async {
      // TODO
    });

    // Attiva in modalità trial
    // bool isTrial (default value: false)
    test('to test the property `isTrial`', () async {
      // TODO
    });

    // ActivateTierRequestBillingCycleEnum billingCycle (default value: ActivateTierRequestBillingCycleEnum.monthly)
    test('to test the property `billingCycle`', () async {
      // TODO
    });

    // Rinnovo automatico
    // bool autoRenew (default value: true)
    test('to test the property `autoRenew`', () async {
      // TODO
    });

    // Data scadenza (opzionale)
    // DateTime expiresAt
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // Metadata attivazione
    // JsonObject activationMetadata
    test('to test the property `activationMetadata`', () async {
      // TODO
    });

  });
}
