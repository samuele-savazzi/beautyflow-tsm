import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for TestBulkSmsApi
void main() {
  final instance = BeautyflowApi().getTestBulkSmsApi();

  group(TestBulkSmsApi, () {
    // Invia SMS di test in bulk
    //
    // Invia un messaggio SMS di test a più numeri. Aggiunge automaticamente il prefisso +39 se non presente.
    //
    //Future<BuiltMap<String, JsonObject>> testBulkSmsCreate({ BuiltMap<String, JsonObject> requestBody }) async
    test('test testBulkSmsCreate', () async {
      // TODO
    });

  });
}
