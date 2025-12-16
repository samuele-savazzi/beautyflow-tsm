# beautyflow_api.api.AutenticazioneClienteApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailVerificationRetrieve**](AutenticazioneClienteApi.md#emailverificationretrieve) | **GET** /api/email/verification/ | Verifica esistenza email
[**registerCreate**](AutenticazioneClienteApi.md#registercreate) | **POST** /api/register/ | Registrazione cliente


# **emailVerificationRetrieve**
> EmailVerificationResponse emailVerificationRetrieve(email)

Verifica esistenza email

Verifica se una email è già registrata nel database

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAutenticazioneClienteApi();
final String email = email_example; // String | Email da verificare

try {
    final response = api.emailVerificationRetrieve(email);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AutenticazioneClienteApi->emailVerificationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email da verificare | 

### Return type

[**EmailVerificationResponse**](EmailVerificationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerCreate**
> CustomerRegistrationResponse registerCreate(customerRegistrationRequest)

Registrazione cliente

Registra un nuovo cliente con controllo unicità email

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAutenticazioneClienteApi();
final CustomerRegistrationRequest customerRegistrationRequest = ; // CustomerRegistrationRequest | 

try {
    final response = api.registerCreate(customerRegistrationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AutenticazioneClienteApi->registerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerRegistrationRequest** | [**CustomerRegistrationRequest**](CustomerRegistrationRequest.md)|  | 

### Return type

[**CustomerRegistrationResponse**](CustomerRegistrationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

