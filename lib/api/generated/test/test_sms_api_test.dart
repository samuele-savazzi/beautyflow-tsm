import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for TestSmsApi
void main() {
  final instance = BeautyflowApi().getTestSmsApi();

  group(TestSmsApi, () {
    // Invia un SMS di test
    //
    // Invia un messaggio SMS di test al numero specificato. Aggiunge automaticamente il prefisso +39 se non presente.
    //
    //Future<BuiltMap<String, JsonObject>> testSmsCreate(String phoneNumber, { String message, String senderId }) async
    test('test testSmsCreate', () async {
      // TODO
    });

  });
}
