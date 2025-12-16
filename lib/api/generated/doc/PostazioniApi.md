# beautyflow_api.api.PostazioniApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workstationsCreate**](PostazioniApi.md#workstationscreate) | **POST** /api/workstations/ | Crea una nuova postazione
[**workstationsDestroy**](PostazioniApi.md#workstationsdestroy) | **DELETE** /api/workstations/ | Elimina una postazione
[**workstationsDetailRetrieve**](PostazioniApi.md#workstationsdetailretrieve) | **GET** /api/workstations/detail/ | Ottieni una postazione specifica
[**workstationsList**](PostazioniApi.md#workstationslist) | **GET** /api/workstations/ | Ottieni tutte le postazioni
[**workstationsUpdate**](PostazioniApi.md#workstationsupdate) | **PUT** /api/workstations/ | Aggiorna una postazione


# **workstationsCreate**
> WorkStationCreateResponse workstationsCreate(object, workStationCreate)

Crea una nuova postazione

Crea una nuova postazione con i relativi servizi associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPostazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final WorkStationCreate workStationCreate = ; // WorkStationCreate | 

try {
    final response = api.workstationsCreate(object, workStationCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostazioniApi->workstationsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **workStationCreate** | [**WorkStationCreate**](WorkStationCreate.md)|  | 

### Return type

[**WorkStationCreateResponse**](WorkStationCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsDestroy**
> workstationsDestroy(id, object)

Elimina una postazione

Elimina una postazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPostazioniApi();
final int id = 56; // int | ID della postazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.workstationsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling PostazioniApi->workstationsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della postazione da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsDetailRetrieve**
> WorkStationDetail workstationsDetailRetrieve(id, object)

Ottieni una postazione specifica

Recupera i dettagli di una postazione specifica con le relative disabilitazioni

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPostazioniApi();
final int id = 56; // int | ID della postazione da recuperare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.workstationsDetailRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostazioniApi->workstationsDetailRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della postazione da recuperare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**WorkStationDetail**](WorkStationDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsList**
> BuiltList<WorkStationList> workstationsList(object, areaId)

Ottieni tutte le postazioni

Recupera l'elenco di tutte le postazioni disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPostazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int areaId = 56; // int | Parametro per filtrare le postazioni per area

try {
    final response = api.workstationsList(object, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostazioniApi->workstationsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| Parametro per filtrare le postazioni per area | [optional] 

### Return type

[**BuiltList&lt;WorkStationList&gt;**](WorkStationList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workstationsUpdate**
> WorkStationUpdateResponse workstationsUpdate(object, workStationUpdate)

Aggiorna una postazione

Aggiorna i dati di una postazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPostazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final WorkStationUpdate workStationUpdate = ; // WorkStationUpdate | 

try {
    final response = api.workstationsUpdate(object, workStationUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PostazioniApi->workstationsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **workStationUpdate** | [**WorkStationUpdate**](WorkStationUpdate.md)|  | 

### Return type

[**WorkStationUpdateResponse**](WorkStationUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

