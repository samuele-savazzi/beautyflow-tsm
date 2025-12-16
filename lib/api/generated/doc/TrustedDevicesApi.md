# beautyflow_api.api.TrustedDevicesApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trustedDevicesRegisterCreate**](TrustedDevicesApi.md#trusteddevicesregistercreate) | **POST** /api/trusted-devices/register/ | 


# **trustedDevicesRegisterCreate**
> RegisterDeviceResponse trustedDevicesRegisterCreate(registerDeviceRequest)



Registra dispositivo come fidato per utente autenticato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTrustedDevicesApi();
final RegisterDeviceRequest registerDeviceRequest = ; // RegisterDeviceRequest | 

try {
    final response = api.trustedDevicesRegisterCreate(registerDeviceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TrustedDevicesApi->trustedDevicesRegisterCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerDeviceRequest** | [**RegisterDeviceRequest**](RegisterDeviceRequest.md)|  | 

### Return type

[**RegisterDeviceResponse**](RegisterDeviceResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

