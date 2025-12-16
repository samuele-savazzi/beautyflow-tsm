# beautyflow_api.api.BiometricApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**biometricCheckFingerprintRetrieve**](BiometricApi.md#biometriccheckfingerprintretrieve) | **GET** /api/biometric/check-fingerprint/ | 
[**biometricDeleteFingerprintCreate**](BiometricApi.md#biometricdeletefingerprintcreate) | **POST** /api/biometric/delete-fingerprint/ | 
[**biometricFingerprintAccountsRetrieve**](BiometricApi.md#biometricfingerprintaccountsretrieve) | **GET** /api/biometric/fingerprint-accounts/ | 
[**biometricGenerateTokenCreate**](BiometricApi.md#biometricgeneratetokencreate) | **POST** /api/biometric/generate-token/ | 
[**biometricManageAccountCreate**](BiometricApi.md#biometricmanageaccountcreate) | **POST** /api/biometric/manage-account/ | 


# **biometricCheckFingerprintRetrieve**
> CheckFingerprintResponse biometricCheckFingerprintRetrieve(deviceFingerprint)



Verifica se il dispositivo ha account per login biometrico

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBiometricApi();
final String deviceFingerprint = deviceFingerprint_example; // String | Fingerprint del dispositivo da verificare

try {
    final response = api.biometricCheckFingerprintRetrieve(deviceFingerprint);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BiometricApi->biometricCheckFingerprintRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceFingerprint** | **String**| Fingerprint del dispositivo da verificare | 

### Return type

[**CheckFingerprintResponse**](CheckFingerprintResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **biometricDeleteFingerprintCreate**
> DeleteFingerprintResponse biometricDeleteFingerprintCreate(deleteFingerprintRequest)



Elimina dispositivo e tutti gli account associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBiometricApi();
final DeleteFingerprintRequest deleteFingerprintRequest = ; // DeleteFingerprintRequest | 

try {
    final response = api.biometricDeleteFingerprintCreate(deleteFingerprintRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BiometricApi->biometricDeleteFingerprintCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteFingerprintRequest** | [**DeleteFingerprintRequest**](DeleteFingerprintRequest.md)|  | 

### Return type

[**DeleteFingerprintResponse**](DeleteFingerprintResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **biometricFingerprintAccountsRetrieve**
> FingerprintAccountsResponse biometricFingerprintAccountsRetrieve(deviceFingerprint)



Lista account del dispositivo con notifiche scadenza

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBiometricApi();
final String deviceFingerprint = deviceFingerprint_example; // String | Fingerprint del dispositivo

try {
    final response = api.biometricFingerprintAccountsRetrieve(deviceFingerprint);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BiometricApi->biometricFingerprintAccountsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceFingerprint** | **String**| Fingerprint del dispositivo | 

### Return type

[**FingerprintAccountsResponse**](FingerprintAccountsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **biometricGenerateTokenCreate**
> BiometricTokenResponse biometricGenerateTokenCreate(biometricTokenRequest)



Genera token JWT dopo verifica biometrica

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBiometricApi();
final BiometricTokenRequest biometricTokenRequest = ; // BiometricTokenRequest | 

try {
    final response = api.biometricGenerateTokenCreate(biometricTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BiometricApi->biometricGenerateTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **biometricTokenRequest** | [**BiometricTokenRequest**](BiometricTokenRequest.md)|  | 

### Return type

[**BiometricTokenResponse**](BiometricTokenResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **biometricManageAccountCreate**
> ManageAccountResponse biometricManageAccountCreate(manageAccountRequest)



Gestisci account specifico del dispositivo

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBiometricApi();
final ManageAccountRequest manageAccountRequest = ; // ManageAccountRequest | 

try {
    final response = api.biometricManageAccountCreate(manageAccountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BiometricApi->biometricManageAccountCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manageAccountRequest** | [**ManageAccountRequest**](ManageAccountRequest.md)|  | 

### Return type

[**ManageAccountResponse**](ManageAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

