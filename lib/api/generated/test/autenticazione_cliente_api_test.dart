import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for AutenticazioneClienteApi
void main() {
  final instance = BeautyflowApi().getAutenticazioneClienteApi();

  group(AutenticazioneClienteApi, () {
    // Verifica esistenza email
    //
    // Verifica se una email è già registrata nel database
    //
    //Future<EmailVerificationResponse> emailVerificationRetrieve(String email) async
    test('test emailVerificationRetrieve', () async {
      // TODO
    });

    // Registrazione cliente
    //
    // Registra un nuovo cliente con controllo unicità email
    //
    //Future<CustomerRegistrationResponse> registerCreate(CustomerRegistrationRequest customerRegistrationRequest) async
    test('test registerCreate', () async {
      // TODO
    });

  });
}
