import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ConsumerProfileApi
void main() {
  final instance = BeautyflowApi().getConsumerProfileApi();

  group(ConsumerProfileApi, () {
    // Cambia password
    //
    // Permette al cliente autenticato di cambiare la propria password
    //
    //Future<ChangePasswordResponse> consumerChangePasswordCreate(String object, ChangePasswordRequest changePasswordRequest) async
    test('test consumerChangePasswordCreate', () async {
      // TODO
    });

    // Completa cambio numero - Step 3
    //
    // Conferma il cambio numero verificando l'OTP ricevuto sul nuovo numero e aggiornando il database
    //
    //Future<CompletePhoneChangeResponse> consumerCompletePhoneChangeCreate(String object, CompletePhoneChangeRequest completePhoneChangeRequest) async
    test('test consumerCompletePhoneChangeCreate', () async {
      // TODO
    });

    // Elimina account
    //
    // Elimina definitivamente l'account del cliente autenticato e tutti i dati associati (GDPR compliant). Azione irreversibile.
    //
    //Future<DeleteAccountResponse> consumerDeleteAccountCreate(String object, DeleteAccountRequest deleteAccountRequest) async
    test('test consumerDeleteAccountCreate', () async {
      // TODO
    });

    // Profilo cliente con premium
    //
    // Recupera informazioni complete del cliente autenticato includendo abbonamento premium attivo e operatori associati
    //
    //Future<CustomerProfileWithPremiumResponse> consumerProfileRetrieve(String object) async
    test('test consumerProfileRetrieve', () async {
      // TODO
    });

    // Richiesta cambio numero - Step 1
    //
    // Avvia la procedura di cambio numero inviando un OTP al numero attuale registrato nel database
    //
    //Future<RequestPhoneChangeResponse> consumerRequestPhoneChangeCreate(String object) async
    test('test consumerRequestPhoneChangeCreate', () async {
      // TODO
    });

    // Aggiorna profilo completo
    //
    // Permette al cliente autenticato di aggiornare i propri dati personali e medici. Email e telefono richiedono API separate con verifica.
    //
    //Future<UpdateProfileResponse> consumerUpdateProfileUpdate(String object, { UpdateProfileRequest updateProfileRequest }) async
    test('test consumerUpdateProfileUpdate', () async {
      // TODO
    });

    // Verifica vecchio numero e invia OTP al nuovo - Step 2
    //
    // Verifica l'OTP del numero attuale e, se corretto, invia un OTP al nuovo numero
    //
    //Future<VerifyOldPhoneResponse> consumerVerifyOldAndSendNewOtpCreate(String object, VerifyOldPhoneRequest verifyOldPhoneRequest) async
    test('test consumerVerifyOldAndSendNewOtpCreate', () async {
      // TODO
    });

  });
}
