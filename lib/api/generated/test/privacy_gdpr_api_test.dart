import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for PrivacyGDPRApi
void main() {
  final instance = BeautyflowApi().getPrivacyGDPRApi();

  group(PrivacyGDPRApi, () {
    // Lista consensi GDPR
    //
    // Ottiene la lista dei consensi GDPR del cliente autenticato
    //
    //Future<GDPRConsentListResponse> consumerPrivacyConsentsRetrieve() async
    test('test consumerPrivacyConsentsRetrieve', () async {
      // TODO
    });

  });
}
