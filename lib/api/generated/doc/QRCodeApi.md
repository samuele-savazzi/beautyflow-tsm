# beautyflow_api.api.QRCodeApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeQrCodeRetrieve**](QRCodeApi.md#areeqrcoderetrieve) | **GET** /api/aree/qr-code/ | Genera QR Code con informazioni tenant


# **areeQrCodeRetrieve**
> areeQrCodeRetrieve()

Genera QR Code con informazioni tenant

Genera un QR code contenente URL base e nome tenant con logo sovrapposto

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getQRCodeApi();

try {
    api.areeQrCodeRetrieve();
} catch on DioException (e) {
    print('Exception when calling QRCodeApi->areeQrCodeRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

