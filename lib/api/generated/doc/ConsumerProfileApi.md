# beautyflow_api.api.ConsumerProfileApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerChangePasswordCreate**](ConsumerProfileApi.md#consumerchangepasswordcreate) | **POST** /api/consumer/change-password/ | Cambia password
[**consumerCompletePhoneChangeCreate**](ConsumerProfileApi.md#consumercompletephonechangecreate) | **POST** /api/consumer/complete-phone-change/ | Completa cambio numero - Step 3
[**consumerDeleteAccountCreate**](ConsumerProfileApi.md#consumerdeleteaccountcreate) | **POST** /api/consumer/delete-account/ | Elimina account
[**consumerProfileRetrieve**](ConsumerProfileApi.md#consumerprofileretrieve) | **GET** /api/consumer/profile/ | Profilo cliente con premium
[**consumerRequestPhoneChangeCreate**](ConsumerProfileApi.md#consumerrequestphonechangecreate) | **POST** /api/consumer/request-phone-change/ | Richiesta cambio numero - Step 1
[**consumerUpdateProfileUpdate**](ConsumerProfileApi.md#consumerupdateprofileupdate) | **PUT** /api/consumer/update-profile/ | Aggiorna profilo completo
[**consumerVerifyOldAndSendNewOtpCreate**](ConsumerProfileApi.md#consumerverifyoldandsendnewotpcreate) | **POST** /api/consumer/verify-old-and-send-new-otp/ | Verifica vecchio numero e invia OTP al nuovo - Step 2


# **consumerChangePasswordCreate**
> ChangePasswordResponse consumerChangePasswordCreate(object, changePasswordRequest)

Cambia password

Permette al cliente autenticato di cambiare la propria password

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final ChangePasswordRequest changePasswordRequest = ; // ChangePasswordRequest | 

try {
    final response = api.consumerChangePasswordCreate(object, changePasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerChangePasswordCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

### Return type

[**ChangePasswordResponse**](ChangePasswordResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerCompletePhoneChangeCreate**
> CompletePhoneChangeResponse consumerCompletePhoneChangeCreate(object, completePhoneChangeRequest)

Completa cambio numero - Step 3

Conferma il cambio numero verificando l'OTP ricevuto sul nuovo numero e aggiornando il database

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final CompletePhoneChangeRequest completePhoneChangeRequest = ; // CompletePhoneChangeRequest | 

try {
    final response = api.consumerCompletePhoneChangeCreate(object, completePhoneChangeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerCompletePhoneChangeCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **completePhoneChangeRequest** | [**CompletePhoneChangeRequest**](CompletePhoneChangeRequest.md)|  | 

### Return type

[**CompletePhoneChangeResponse**](CompletePhoneChangeResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerDeleteAccountCreate**
> DeleteAccountResponse consumerDeleteAccountCreate(object, deleteAccountRequest)

Elimina account

Elimina definitivamente l'account del cliente autenticato e tutti i dati associati (GDPR compliant). Azione irreversibile.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DeleteAccountRequest deleteAccountRequest = ; // DeleteAccountRequest | 

try {
    final response = api.consumerDeleteAccountCreate(object, deleteAccountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerDeleteAccountCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **deleteAccountRequest** | [**DeleteAccountRequest**](DeleteAccountRequest.md)|  | 

### Return type

[**DeleteAccountResponse**](DeleteAccountResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerProfileRetrieve**
> CustomerProfileWithPremiumResponse consumerProfileRetrieve(object)

Profilo cliente con premium

Recupera informazioni complete del cliente autenticato includendo abbonamento premium attivo e operatori associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.consumerProfileRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerProfileRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**CustomerProfileWithPremiumResponse**](CustomerProfileWithPremiumResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerRequestPhoneChangeCreate**
> RequestPhoneChangeResponse consumerRequestPhoneChangeCreate(object)

Richiesta cambio numero - Step 1

Avvia la procedura di cambio numero inviando un OTP al numero attuale registrato nel database

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.consumerRequestPhoneChangeCreate(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerRequestPhoneChangeCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**RequestPhoneChangeResponse**](RequestPhoneChangeResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerUpdateProfileUpdate**
> UpdateProfileResponse consumerUpdateProfileUpdate(object, updateProfileRequest)

Aggiorna profilo completo

Permette al cliente autenticato di aggiornare i propri dati personali e medici. Email e telefono richiedono API separate con verifica.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final UpdateProfileRequest updateProfileRequest = ; // UpdateProfileRequest | 

try {
    final response = api.consumerUpdateProfileUpdate(object, updateProfileRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerUpdateProfileUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **updateProfileRequest** | [**UpdateProfileRequest**](UpdateProfileRequest.md)|  | [optional] 

### Return type

[**UpdateProfileResponse**](UpdateProfileResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerVerifyOldAndSendNewOtpCreate**
> VerifyOldPhoneResponse consumerVerifyOldAndSendNewOtpCreate(object, verifyOldPhoneRequest)

Verifica vecchio numero e invia OTP al nuovo - Step 2

Verifica l'OTP del numero attuale e, se corretto, invia un OTP al nuovo numero

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerProfileApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final VerifyOldPhoneRequest verifyOldPhoneRequest = ; // VerifyOldPhoneRequest | 

try {
    final response = api.consumerVerifyOldAndSendNewOtpCreate(object, verifyOldPhoneRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsumerProfileApi->consumerVerifyOldAndSendNewOtpCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **verifyOldPhoneRequest** | [**VerifyOldPhoneRequest**](VerifyOldPhoneRequest.md)|  | 

### Return type

[**VerifyOldPhoneResponse**](VerifyOldPhoneResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

