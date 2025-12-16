# beautyflow_api.api.TestSmsApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testSmsCreate**](TestSmsApi.md#testsmscreate) | **POST** /test-sms/ | Invia un SMS di test


# **testSmsCreate**
> BuiltMap<String, JsonObject> testSmsCreate(phoneNumber, message, senderId)

Invia un SMS di test

Invia un messaggio SMS di test al numero specificato. Aggiunge automaticamente il prefisso +39 se non presente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTestSmsApi();
final String phoneNumber = +39 333 1234567; // String | Numero di telefono del destinatario
final String message = Questo è un messaggio di test da BeautyFlow; // String | Testo del messaggio (opzionale)
final String senderId = BeautyFlow; // String | ID mittente personalizzato (opzionale)

try {
    final response = api.testSmsCreate(phoneNumber, message, senderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TestSmsApi->testSmsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **String**| Numero di telefono del destinatario | 
 **message** | **String**| Testo del messaggio (opzionale) | [optional] 
 **senderId** | **String**| ID mittente personalizzato (opzionale) | [optional] 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

