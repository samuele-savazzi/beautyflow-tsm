# beautyflow_api.api.TestBulkSmsApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testBulkSmsCreate**](TestBulkSmsApi.md#testbulksmscreate) | **POST** /test-bulk-sms/ | Invia SMS di test in bulk


# **testBulkSmsCreate**
> BuiltMap<String, JsonObject> testBulkSmsCreate(requestBody)

Invia SMS di test in bulk

Invia un messaggio SMS di test a più numeri. Aggiunge automaticamente il prefisso +39 se non presente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTestBulkSmsApi();
final BuiltMap<String, JsonObject> requestBody = Object; // BuiltMap<String, JsonObject> | 

try {
    final response = api.testBulkSmsCreate(requestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TestBulkSmsApi->testBulkSmsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)|  | [optional] 

### Return type

[**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

