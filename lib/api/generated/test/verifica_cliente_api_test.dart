import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for VerificaClienteApi
void main() {
  final instance = BeautyflowApi().getVerificaClienteApi();

  group(VerificaClienteApi, () {
    // Invia codice OTP
    //
    // Genera e salva un nuovo codice OTP per la verifica di un numero di telefono
    //
    //Future<OTPResponse> consumerOtpCreate(OTPRequest oTPRequest) async
    test('test consumerOtpCreate', () async {
      // TODO
    });

    // Verifica codice OTP
    //
    // Verifica la validità di un codice OTP per un numero di telefono
    //
    //Future<OTPVerifyResponse> consumerOtpUpdate(OTPVerifyRequest oTPVerifyRequest) async
    test('test consumerOtpUpdate', () async {
      // TODO
    });

    // Verifica esistenza numero di telefono
    //
    // Verifica se un numero di telefono è già registrato nel database
    //
    //Future<PhoneVerificationResponse> consumerVerifyPhoneRetrieve(String phone) async
    test('test consumerVerifyPhoneRetrieve', () async {
      // TODO
    });

  });
}
