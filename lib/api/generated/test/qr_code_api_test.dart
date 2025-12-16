import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for QRCodeApi
void main() {
  final instance = BeautyflowApi().getQRCodeApi();

  group(QRCodeApi, () {
    // Genera QR Code con informazioni tenant
    //
    // Genera un QR code contenente URL base e nome tenant con logo sovrapposto
    //
    //Future areeQrCodeRetrieve() async
    test('test areeQrCodeRetrieve', () async {
      // TODO
    });

  });
}
