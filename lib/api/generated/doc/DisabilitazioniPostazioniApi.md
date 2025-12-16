# beautyflow_api.api.DisabilitazioniPostazioniApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workstationsDisabilitiesCreate**](DisabilitazioniPostazioniApi.md#workstationsdisabilitiescreate) | **POST** /api/workstations/disabilities/ | Crea una nuova disabilitazione
[**workstationsDisabilitiesDestroy**](DisabilitazioniPostazioniApi.md#workstationsdisabilitiesdestroy) | **DELETE** /api/workstations/disabilities/ | Elimina una disabilitazione
[**workstationsDisabilitiesList**](DisabilitazioniPostazioniApi.md#workstationsdisabilitieslist) | **GET** /api/workstations/disabilities/ | Ottieni tutte le disabilitazioni
[**workstationsDisabilitiesUpdate**](DisabilitazioniPostazioniApi.md#workstationsdisabilitiesupdate) | **PUT** /api/workstations/disabilities/ | Aggiorna una disabilitazione


# **workstationsDisabilitiesCreate**
> DisabilityCreateResponse workstationsDisabilitiesCreate(object, disabilityCreate)

Crea una nuova disabilitazione

Crea una nuova disabilitazione per una postazione con fasce orarie associate

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniPostazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DisabilityCreate disabilityCreate = ; // DisabilityCreate | 

try {
    final response = api.workstationsDisabilitiesCreate(object, disabilityCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniPostazioniApi->workstationsDisabilitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **disabilityCreate** | [**DisabilityCreate**](DisabilityCreate.md)|  | 

### Return type

[**DisabilityCreateResponse**](DisabilityCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsDisabilitiesDestroy**
> workstationsDisabilitiesDestroy(id, object)

Elimina una disabilitazione

Elimina una disabilitazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniPostazioniApi();
final int id = 56; // int | ID della disabilitazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.workstationsDisabilitiesDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniPostazioniApi->workstationsDisabilitiesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della disabilitazione da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsDisabilitiesList**
> BuiltList<DisabilityList> workstationsDisabilitiesList(object, workstationId)

Ottieni tutte le disabilitazioni

Recupera l'elenco di tutte le disabilitazioni per una postazione

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniPostazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int workstationId = 56; // int | ID della postazione per filtrare le disabilitazioni

try {
    final response = api.workstationsDisabilitiesList(object, workstationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniPostazioniApi->workstationsDisabilitiesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **workstationId** | **int**| ID della postazione per filtrare le disabilitazioni | [optional] 

### Return type

[**BuiltList&lt;DisabilityList&gt;**](DisabilityList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsDisabilitiesUpdate**
> DisabilityUpdateResponse workstationsDisabilitiesUpdate(id, object, disabilityUpdate)

Aggiorna una disabilitazione

Aggiorna una disabilitazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniPostazioniApi();
final int id = 56; // int | ID della disabilitazione da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DisabilityUpdate disabilityUpdate = ; // DisabilityUpdate | 

try {
    final response = api.workstationsDisabilitiesUpdate(id, object, disabilityUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniPostazioniApi->workstationsDisabilitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della disabilitazione da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **disabilityUpdate** | [**DisabilityUpdate**](DisabilityUpdate.md)|  | [optional] 

### Return type

[**DisabilityUpdateResponse**](DisabilityUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

