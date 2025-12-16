import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConsumerApi
void main() {
  final instance = BeautyflowApi().getConsumerApi();

  group(ConsumerApi, () {
    // API pubblica per accettare un invito e creare l'account cliente.
    //
    //Future consumerInviteAcceptCreate(String token) async
    test('test consumerInviteAcceptCreate', () async {
      // TODO
    });

    // API per esportare tutti i dati del cliente (GDPR Art. 20).
    //
    //Future consumerPrivacyExportDataRetrieve() async
    test('test consumerPrivacyExportDataRetrieve', () async {
      // TODO
    });

    // API per revocare il consenso GDPR del cliente.
    //
    //Future consumerPrivacyRevokeConsentCreate() async
    test('test consumerPrivacyRevokeConsentCreate', () async {
      // TODO
    });

  });
}
