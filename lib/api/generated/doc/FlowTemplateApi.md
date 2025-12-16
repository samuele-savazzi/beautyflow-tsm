# beautyflow_api.api.FlowTemplateApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**flowTemplateRetrieve**](FlowTemplateApi.md#flowtemplateretrieve) | **GET** /api/flow-template/ | Ottieni i template dei flow


# **flowTemplateRetrieve**
> FlowAndPersonalTemplateResponse flowTemplateRetrieve(object, general)

Ottieni i template dei flow

Ottieni i template dei flow e i template personali

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFlowTemplateApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool general = true; // bool | Discriminante per ottenere i template generici o per le domande dei clienti abituali

try {
    final response = api.flowTemplateRetrieve(object, general);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlowTemplateApi->flowTemplateRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **general** | **bool**| Discriminante per ottenere i template generici o per le domande dei clienti abituali | [optional] [default to true]

### Return type

[**FlowAndPersonalTemplateResponse**](FlowAndPersonalTemplateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

