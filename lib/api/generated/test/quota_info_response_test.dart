import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for QuotaInfoResponse
void main() {
  final instance = QuotaInfoResponseBuilder();
  // TODO add properties to the builder and call build()

  group(QuotaInfoResponse, () {
    // Nome del piano commerciale corrente
    // String planName
    test('to test the property `planName`', () async {
      // TODO
    });

    // Data di scadenza del piano
    // String planExpiresAt
    test('to test the property `planExpiresAt`', () async {
      // TODO
    });

    // Ciclo di fatturazione (monthly/yearly/one_time)
    // String billingCycle
    test('to test the property `billingCycle`', () async {
      // TODO
    });

    // Rinnovo automatico attivo
    // bool autoRenew
    test('to test the property `autoRenew`', () async {
      // TODO
    });

    // Quota attiva
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // Limite SMS totali
    // int smsQuotaLimit
    test('to test the property `smsQuotaLimit`', () async {
      // TODO
    });

    // SMS già utilizzati
    // int smsQuotaUsed
    test('to test the property `smsQuotaUsed`', () async {
      // TODO
    });

    // SMS rimanenti
    // int smsQuotaRemaining
    test('to test the property `smsQuotaRemaining`', () async {
      // TODO
    });

    // Data ultimo reset SMS
    // String smsLastResetDate
    test('to test the property `smsLastResetDate`', () async {
      // TODO
    });

    // Limite default operatori per area
    // int defaultMaxOperatorsPerArea
    test('to test the property `defaultMaxOperatorsPerArea`', () async {
      // TODO
    });

    // Limite default workstation per operatore
    // int defaultMaxWorkstationsPerOperator
    test('to test the property `defaultMaxWorkstationsPerOperator`', () async {
      // TODO
    });

    // Data ultimo pagamento
    // DateTime lastPaymentDate
    test('to test the property `lastPaymentDate`', () async {
      // TODO
    });

    // Importo ultimo pagamento
    // double lastPaymentAmount
    test('to test the property `lastPaymentAmount`', () async {
      // TODO
    });

  });
}
