# beautyflow_api.api.StepApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviziStepsUpdate**](StepApi.md#servizistepsupdate) | **PUT** /api/servizi/{service_id}/steps/ | Aggiorna l&#39;ordine degli step


# **serviziStepsUpdate**
> serviziStepsUpdate(serviceId, stepOrderUpdate)

Aggiorna l'ordine degli step

Aggiorna l'indice degli step di un servizio

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getStepApi();
final int serviceId = 56; // int | ID del servizio di cui aggiornare gli step
final StepOrderUpdate stepOrderUpdate = ; // StepOrderUpdate | 

try {
    api.serviziStepsUpdate(serviceId, stepOrderUpdate);
} catch on DioException (e) {
    print('Exception when calling StepApi->serviziStepsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceId** | **int**| ID del servizio di cui aggiornare gli step | 
 **stepOrderUpdate** | [**StepOrderUpdate**](StepOrderUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

