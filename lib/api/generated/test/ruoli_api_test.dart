import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for RuoliApi
void main() {
  final instance = BeautyflowApi().getRuoliApi();

  group(RuoliApi, () {
    // Ottieni tutti i ruoli
    //
    // Recupera l'elenco di tutti i ruoli disponibili
    //
    //Future<BuiltList<RoleList>> rolesList(String object) async
    test('test rolesList', () async {
      // TODO
    });

  });
}
