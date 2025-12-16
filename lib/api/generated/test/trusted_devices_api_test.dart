import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for TrustedDevicesApi
void main() {
  final instance = BeautyflowApi().getTrustedDevicesApi();

  group(TrustedDevicesApi, () {
    // Registra dispositivo come fidato per utente autenticato
    //
    //Future<RegisterDeviceResponse> trustedDevicesRegisterCreate(RegisterDeviceRequest registerDeviceRequest) async
    test('test trustedDevicesRegisterCreate', () async {
      // TODO
    });

  });
}
