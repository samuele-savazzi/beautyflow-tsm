import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for ForgotPasswordApi
void main() {
  final instance = BeautyflowApi().getForgotPasswordApi();

  group(ForgotPasswordApi, () {
    // Richiesta reset password
    //
    // Invia una richiesta di reset password via email se l'email esiste nel sistema
    //
    //Future<ForgotPasswordResponse> forgotPasswordRequestCreate(ForgotPasswordRequest forgotPasswordRequest) async
    test('test forgotPasswordRequestCreate', () async {
      // TODO
    });

    // Reset password
    //
    // Completa il reset della password utilizzando il token valido
    //
    //Future<ResetPasswordResponse> forgotPasswordResetCreate(ResetPasswordRequest resetPasswordRequest) async
    test('test forgotPasswordResetCreate', () async {
      // TODO
    });

    // Valida token di reset password
    //
    // Verifica la validità di un token di reset password
    //
    //Future<ValidateTokenResponse> forgotPasswordValidateCreate(ValidateTokenRequest validateTokenRequest) async
    test('test forgotPasswordValidateCreate', () async {
      // TODO
    });

  });
}
