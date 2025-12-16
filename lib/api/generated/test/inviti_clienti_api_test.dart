import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for InvitiClientiApi
void main() {
  final instance = BeautyflowApi().getInvitiClientiApi();

  group(InvitiClientiApi, () {
    // Crea invito cliente
    //
    // Crea un nuovo invito per un cliente con dati pre-compilati
    //
    //Future<CustomerInvitationCreateResponse> consumerInvitationsCreate(String object, CustomerInvitationCreateRequest customerInvitationCreateRequest) async
    test('test consumerInvitationsCreate', () async {
      // TODO
    });

    // Revoca invito cliente
    //
    // Revoca un invito in stato pending
    //
    //Future<RevokeInvitationResponse> consumerInvitationsDestroy(String invitationId, String object) async
    test('test consumerInvitationsDestroy', () async {
      // TODO
    });

    // Lista inviti cliente
    //
    // Ottiene la lista degli inviti creati dal titolare autenticato
    //
    //Future<CustomerInvitationListResponse> consumerInvitationsRetrieve(String object) async
    test('test consumerInvitationsRetrieve', () async {
      // TODO
    });

    // Dettagli invito cliente
    //
    // Ottiene i dettagli di un singolo invito creato dal titolare
    //
    //Future<CustomerInvitationDetailResponse> consumerInvitationsRetrieve2(String invitationId, String object) async
    test('test consumerInvitationsRetrieve2', () async {
      // TODO
    });

  });
}
