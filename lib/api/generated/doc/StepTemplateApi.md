# beautyflow_api.api.StepTemplateApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stepTemplateList**](StepTemplateApi.md#steptemplatelist) | **GET** /api/step-template/ | Ottieni i template degli step


# **stepTemplateList**
> BuiltList<StepTemplateList> stepTemplateList(object)

Ottieni i template degli step

Ottieni i template degli step

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getStepTemplateApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.stepTemplateList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StepTemplateApi->stepTemplateList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;StepTemplateList&gt;**](StepTemplateList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

