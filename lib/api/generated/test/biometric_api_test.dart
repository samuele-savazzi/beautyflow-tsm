import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for BiometricApi
void main() {
  final instance = BeautyflowApi().getBiometricApi();

  group(BiometricApi, () {
    // Verifica se il dispositivo ha account per login biometrico
    //
    //Future<CheckFingerprintResponse> biometricCheckFingerprintRetrieve(String deviceFingerprint) async
    test('test biometricCheckFingerprintRetrieve', () async {
      // TODO
    });

    // Elimina dispositivo e tutti gli account associati
    //
    //Future<DeleteFingerprintResponse> biometricDeleteFingerprintCreate(DeleteFingerprintRequest deleteFingerprintRequest) async
    test('test biometricDeleteFingerprintCreate', () async {
      // TODO
    });

    // Lista account del dispositivo con notifiche scadenza
    //
    //Future<FingerprintAccountsResponse> biometricFingerprintAccountsRetrieve(String deviceFingerprint) async
    test('test biometricFingerprintAccountsRetrieve', () async {
      // TODO
    });

    // Genera token JWT dopo verifica biometrica
    //
    //Future<BiometricTokenResponse> biometricGenerateTokenCreate(BiometricTokenRequest biometricTokenRequest) async
    test('test biometricGenerateTokenCreate', () async {
      // TODO
    });

    // Gestisci account specifico del dispositivo
    //
    //Future<ManageAccountResponse> biometricManageAccountCreate(ManageAccountRequest manageAccountRequest) async
    test('test biometricManageAccountCreate', () async {
      // TODO
    });

  });
}
