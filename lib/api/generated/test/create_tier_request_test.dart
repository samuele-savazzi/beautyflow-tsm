import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for CreateTierRequest
void main() {
  final instance = CreateTierRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CreateTierRequest, () {
    // Nome tier (es. 'Integrazione WhatsApp')
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Codice univoco (es. 'WHATSAPP_INTEGRATION')
    // String code
    test('to test the property `code`', () async {
      // TODO
    });

    // Descrizione dettagliata tier
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Material icon name (es. 'whatsapp')
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // CategoryE85Enum category
    test('to test the property `category`', () async {
      // TODO
    });

    // Tier attivo
    // bool isActive (default value: true)
    test('to test the property `isActive`', () async {
      // TODO
    });

    // Visibile nel marketplace
    // bool isPublic (default value: false)
    test('to test the property `isPublic`', () async {
      // TODO
    });

    // In evidenza
    // bool isFeatured (default value: false)
    test('to test the property `isFeatured`', () async {
      // TODO
    });

    // Permetti trial gratuito
    // bool allowTrial (default value: false)
    test('to test the property `allowTrial`', () async {
      // TODO
    });

    // Giorni trial (se allow_trial=True)
    // int trialDays
    test('to test the property `trialDays`', () async {
      // TODO
    });

    // BillingType874Enum billingType (default value: BillingType874Enum.monthly)
    test('to test the property `billingType`', () async {
      // TODO
    });

    // Prezzo mensile (€)
    // double monthlyPrice (default value: '0.00')
    test('to test the property `monthlyPrice`', () async {
      // TODO
    });

    // Prezzo annuale (€)
    // double yearlyPrice (default value: '0.00')
    test('to test the property `yearlyPrice`', () async {
      // TODO
    });

    // Costo setup iniziale (€)
    // double setupFee (default value: '0.00')
    test('to test the property `setupFee`', () async {
      // TODO
    });

    // Ha limite utilizzo
    // bool hasUsageLimit (default value: false)
    test('to test the property `hasUsageLimit`', () async {
      // TODO
    });

    // Limite utilizzo (se has_usage_limit=True)
    // int usageLimit
    test('to test the property `usageLimit`', () async {
      // TODO
    });

    // Unità misura (es. 'messaggi WhatsApp')
    // String usageUnit
    test('to test the property `usageUnit`', () async {
      // TODO
    });

    // Lista feature (es. [\"Invio messaggi\", \"Template personalizzati\"])
    // BuiltList<String> features
    test('to test the property `features`', () async {
      // TODO
    });

    // Metadata custom
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Ordine visualizzazione
    // int sortOrder (default value: 0)
    test('to test the property `sortOrder`', () async {
      // TODO
    });

    // URL documentazione
    // String documentationUrl
    test('to test the property `documentationUrl`', () async {
      // TODO
    });

    // URL video tutorial
    // String videoTutorialUrl
    test('to test the property `videoTutorialUrl`', () async {
      // TODO
    });

    // IDs tier richiesti
    // BuiltList<int> requiresTiers
    test('to test the property `requiresTiers`', () async {
      // TODO
    });

    // IDs tier conflittuali
    // BuiltList<int> conflictsWith
    test('to test the property `conflictsWith`', () async {
      // TODO
    });

  });
}
