import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for PermessiApi
void main() {
  final instance = BeautyflowApi().getPermessiApi();

  group(PermessiApi, () {
    // Approva o rifiuta una richiesta di permesso
    //
    // Permette all'amministratore di approvare o rifiutare una richiesta di permesso
    //
    //Future<PermissionRequestActionResponse> operatorsPermissionsAdminCreate(String object, PermissionRequestAction permissionRequestAction) async
    test('test operatorsPermissionsAdminCreate', () async {
      // TODO
    });

    // Ottieni tutte le richieste di permesso
    //
    // Recupera l'elenco di tutte le richieste di permesso per un'area
    //
    //Future<BuiltList<PermissionRequestList>> operatorsPermissionsAdminList(int areaId, String object, { String status }) async
    test('test operatorsPermissionsAdminList', () async {
      // TODO
    });

    // Crea una nuova richiesta di permesso
    //
    // Consente all'operatore di creare una nuova richiesta di permesso
    //
    //Future<PermissionRequestCreated> operatorsPermissionsOperatorCreate(String object, PermissionRequestCreate permissionRequestCreate) async
    test('test operatorsPermissionsOperatorCreate', () async {
      // TODO
    });

    // Elimina una richiesta di permesso
    //
    // Consente all'operatore di eliminare una propria richiesta di permesso
    //
    //Future operatorsPermissionsOperatorDestroy(int id, String object) async
    test('test operatorsPermissionsOperatorDestroy', () async {
      // TODO
    });

    // Ottieni le proprie richieste di permesso
    //
    // Recupera l'elenco delle richieste di permesso dell'operatore corrente
    //
    //Future<BuiltList<OperatorPermissionRequestList>> operatorsPermissionsOperatorList(String object, { String status }) async
    test('test operatorsPermissionsOperatorList', () async {
      // TODO
    });

  });
}
