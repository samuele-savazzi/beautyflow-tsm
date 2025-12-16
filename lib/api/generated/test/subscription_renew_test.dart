import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for SubscriptionRenew
void main() {
  final instance = SubscriptionRenewBuilder();
  // TODO add properties to the builder and call build()

  group(SubscriptionRenew, () {
    // Durata del rinnovo in giorni (default 30)
    // int durationDays (default value: 30)
    test('to test the property `durationDays`', () async {
      // TODO
    });

    // Prezzo pagato per il rinnovo (se diverso dal prezzo standard)
    // double paidPrice
    test('to test the property `paidPrice`', () async {
      // TODO
    });

    // Note aggiuntive sul rinnovo
    // String notes
    test('to test the property `notes`', () async {
      // TODO
    });

  });
}
