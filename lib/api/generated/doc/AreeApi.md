# beautyflow_api.api.AreeApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeConfigScheduledChangesPartialUpdate**](AreeApi.md#areeconfigscheduledchangespartialupdate) | **PATCH** /api/aree/config/scheduled-changes/ | Disattiva modifica programmata
[**areeList**](AreeApi.md#areelist) | **GET** /api/aree/ | Ottieni le aree
[**areeMaxCustomerDayViewList**](AreeApi.md#areemaxcustomerdayviewlist) | **GET** /api/aree/max-customer-day-view/ | Ottieni le aree con max customer day view
[**areeMaxCustomerDayViewUpdate**](AreeApi.md#areemaxcustomerdayviewupdate) | **PUT** /api/aree/max-customer-day-view/ | Aggiorna max customer day view


# **areeConfigScheduledChangesPartialUpdate**
> DeleteResponse areeConfigScheduledChangesPartialUpdate()

Disattiva modifica programmata

Disattiva una modifica programmata senza eliminarla (soft delete)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAreeApi();

try {
    final response = api.areeConfigScheduledChangesPartialUpdate();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AreeApi->areeConfigScheduledChangesPartialUpdate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeList**
> BuiltList<Aree> areeList(object)

Ottieni le aree

Ottieni le aree

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAreeApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.areeList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AreeApi->areeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;Aree&gt;**](Aree.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeMaxCustomerDayViewList**
> BuiltList<MaxCustomerDayViewResponse> areeMaxCustomerDayViewList(object)

Ottieni le aree con max customer day view

Ottieni tutte le aree secondarie (main_area=False) con il relativo max_customer_day_view

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAreeApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.areeMaxCustomerDayViewList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AreeApi->areeMaxCustomerDayViewList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;MaxCustomerDayViewResponse&gt;**](MaxCustomerDayViewResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeMaxCustomerDayViewUpdate**
> UpdateMaxCustomerDayViewResponse areeMaxCustomerDayViewUpdate(object, updateMaxCustomerDayViewRequest)

Aggiorna max customer day view

Aggiorna il valore di max_customer_day_view per un'area specifica

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAreeApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final UpdateMaxCustomerDayViewRequest updateMaxCustomerDayViewRequest = ; // UpdateMaxCustomerDayViewRequest | 

try {
    final response = api.areeMaxCustomerDayViewUpdate(object, updateMaxCustomerDayViewRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AreeApi->areeMaxCustomerDayViewUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **updateMaxCustomerDayViewRequest** | [**UpdateMaxCustomerDayViewRequest**](UpdateMaxCustomerDayViewRequest.md)|  | 

### Return type

[**UpdateMaxCustomerDayViewResponse**](UpdateMaxCustomerDayViewResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

