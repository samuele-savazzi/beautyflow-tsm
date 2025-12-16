# beautyflow_api.api.VerificaClienteApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerOtpCreate**](VerificaClienteApi.md#consumerotpcreate) | **POST** /api/consumer/otp/ | Invia codice OTP
[**consumerOtpUpdate**](VerificaClienteApi.md#consumerotpupdate) | **PUT** /api/consumer/otp/ | Verifica codice OTP
[**consumerVerifyPhoneRetrieve**](VerificaClienteApi.md#consumerverifyphoneretrieve) | **GET** /api/consumer/verify-phone/ | Verifica esistenza numero di telefono


# **consumerOtpCreate**
> OTPResponse consumerOtpCreate(oTPRequest)

Invia codice OTP

Genera e salva un nuovo codice OTP per la verifica di un numero di telefono

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getVerificaClienteApi();
final OTPRequest oTPRequest = ; // OTPRequest | 

try {
    final response = api.consumerOtpCreate(oTPRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VerificaClienteApi->consumerOtpCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oTPRequest** | [**OTPRequest**](OTPRequest.md)|  | 

### Return type

[**OTPResponse**](OTPResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerOtpUpdate**
> OTPVerifyResponse consumerOtpUpdate(oTPVerifyRequest)

Verifica codice OTP

Verifica la validità di un codice OTP per un numero di telefono

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getVerificaClienteApi();
final OTPVerifyRequest oTPVerifyRequest = ; // OTPVerifyRequest | 

try {
    final response = api.consumerOtpUpdate(oTPVerifyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VerificaClienteApi->consumerOtpUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oTPVerifyRequest** | [**OTPVerifyRequest**](OTPVerifyRequest.md)|  | 

### Return type

[**OTPVerifyResponse**](OTPVerifyResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerVerifyPhoneRetrieve**
> PhoneVerificationResponse consumerVerifyPhoneRetrieve(phone)

Verifica esistenza numero di telefono

Verifica se un numero di telefono è già registrato nel database

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getVerificaClienteApi();
final String phone = phone_example; // String | Numero di telefono da verificare

try {
    final response = api.consumerVerifyPhoneRetrieve(phone);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VerificaClienteApi->consumerVerifyPhoneRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**| Numero di telefono da verificare | 

### Return type

[**PhoneVerificationResponse**](PhoneVerificationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

