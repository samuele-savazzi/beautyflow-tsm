import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for FerieApi
void main() {
  final instance = BeautyflowApi().getFerieApi();

  group(FerieApi, () {
    // Approva o rifiuta una richiesta di ferie
    //
    // Permette all'amministratore di approvare o rifiutare una richiesta di ferie
    //
    //Future<LeaveRequestActionResponse> operatorsLeavesAdminCreate(String object, LeaveRequestAction leaveRequestAction) async
    test('test operatorsLeavesAdminCreate', () async {
      // TODO
    });

    // Ottieni tutte le richieste di ferie
    //
    // Recupera l'elenco di tutte le richieste di ferie per un'area
    //
    //Future<BuiltList<LeaveRequestList>> operatorsLeavesAdminList(int areaId, String object, { String status }) async
    test('test operatorsLeavesAdminList', () async {
      // TODO
    });

    // Crea una nuova richiesta di ferie
    //
    // Consente all'operatore di creare una nuova richiesta di ferie
    //
    //Future<LeaveRequestCreated> operatorsLeavesOperatorCreate(String object, LeaveRequestCreate leaveRequestCreate) async
    test('test operatorsLeavesOperatorCreate', () async {
      // TODO
    });

    // Elimina o annulla una richiesta di ferie
    //
    // Consente all'operatore di eliminare o annullare una propria richiesta di ferie
    //
    //Future operatorsLeavesOperatorDestroy(int id, String object, { String action }) async
    test('test operatorsLeavesOperatorDestroy', () async {
      // TODO
    });

    // Ottieni le proprie richieste di ferie
    //
    // Recupera l'elenco delle richieste di ferie dell'operatore corrente
    //
    //Future<BuiltList<OperatorLeaveRequestList>> operatorsLeavesOperatorList(String object, { String status }) async
    test('test operatorsLeavesOperatorList', () async {
      // TODO
    });

  });
}
