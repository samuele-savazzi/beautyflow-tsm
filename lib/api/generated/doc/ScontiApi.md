# beautyflow_api.api.ScontiApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discountsManagementCreate**](ScontiApi.md#discountsmanagementcreate) | **POST** /api/discounts/management/ | Crea un nuovo tipo di sconto
[**discountsManagementDestroy**](ScontiApi.md#discountsmanagementdestroy) | **DELETE** /api/discounts/management/ | Elimina un tipo di sconto
[**discountsManagementList**](ScontiApi.md#discountsmanagementlist) | **GET** /api/discounts/management/ | Ottieni tutti i tipi di sconto
[**discountsManagementUpdate**](ScontiApi.md#discountsmanagementupdate) | **PUT** /api/discounts/management/ | Aggiorna un tipo di sconto


# **discountsManagementCreate**
> DiscountTypeCreateResponse discountsManagementCreate(object, discountTypeCreate)

Crea un nuovo tipo di sconto

Crea un nuovo tipo di sconto con le relative configurazioni

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getScontiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DiscountTypeCreate discountTypeCreate = ; // DiscountTypeCreate | 

try {
    final response = api.discountsManagementCreate(object, discountTypeCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ScontiApi->discountsManagementCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **discountTypeCreate** | [**DiscountTypeCreate**](DiscountTypeCreate.md)|  | 

### Return type

[**DiscountTypeCreateResponse**](DiscountTypeCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discountsManagementDestroy**
> discountsManagementDestroy(id, object)

Elimina un tipo di sconto

Elimina un tipo di sconto esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getScontiApi();
final int id = 56; // int | ID del tipo di sconto da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.discountsManagementDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling ScontiApi->discountsManagementDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del tipo di sconto da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discountsManagementList**
> BuiltList<DiscountTypeList> discountsManagementList(object, activeOnly)

Ottieni tutti i tipi di sconto

Recupera l'elenco di tutti i tipi di sconto disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getScontiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool activeOnly = true; // bool | Se true, restituisce solo i tipi di sconto attivi

try {
    final response = api.discountsManagementList(object, activeOnly);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ScontiApi->discountsManagementList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **activeOnly** | **bool**| Se true, restituisce solo i tipi di sconto attivi | [optional] 

### Return type

[**BuiltList&lt;DiscountTypeList&gt;**](DiscountTypeList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **discountsManagementUpdate**
> DiscountTypeUpdateResponse discountsManagementUpdate(id, object, discountTypeUpdate)

Aggiorna un tipo di sconto

Aggiorna un tipo di sconto esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getScontiApi();
final int id = 56; // int | ID del tipo di sconto da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DiscountTypeUpdate discountTypeUpdate = ; // DiscountTypeUpdate | 

try {
    final response = api.discountsManagementUpdate(id, object, discountTypeUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ScontiApi->discountsManagementUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del tipo di sconto da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **discountTypeUpdate** | [**DiscountTypeUpdate**](DiscountTypeUpdate.md)|  | [optional] 

### Return type

[**DiscountTypeUpdateResponse**](DiscountTypeUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

