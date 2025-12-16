import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ManageInvitationApi
void main() {
  final instance = BeautyflowApi().getManageInvitationApi();

  group(ManageInvitationApi, () {
    // Dettagli invito pubblico
    //
    // Ottiene i dettagli di un invito tramite token per il cliente invitato
    //
    //Future<InvitationDetailsResponse> consumerInviteRetrieve(String token) async
    test('test consumerInviteRetrieve', () async {
      // TODO
    });

  });
}
