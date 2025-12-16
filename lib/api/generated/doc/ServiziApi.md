# beautyflow_api.api.ServiziApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviziCreate**](ServiziApi.md#servizicreate) | **POST** /api/servizi/ | Crea un nuovo servizio
[**serviziDestroy**](ServiziApi.md#servizidestroy) | **DELETE** /api/servizi/ | Elimina un servizio
[**serviziDetailRetrieve**](ServiziApi.md#servizidetailretrieve) | **GET** /api/servizi/detail/ | Ottieni un servizio specifico
[**serviziList**](ServiziApi.md#servizilist) | **GET** /api/servizi/ | Ottieni tutti i servizi
[**serviziOptionsWorkstationRetrieve**](ServiziApi.md#servizioptionsworkstationretrieve) | **GET** /api/servizi/options-workstation/ | Ottieni servizi raggruppati per macro area
[**serviziUpdate**](ServiziApi.md#serviziupdate) | **PUT** /api/servizi/ | Aggiorna un servizio esistente


# **serviziCreate**
> ServiceCreated serviziCreate(object, serviceCreate)

Crea un nuovo servizio

Crea un nuovo servizio con i relativi step e categorie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final ServiceCreate serviceCreate = ; // ServiceCreate | 

try {
    final response = api.serviziCreate(object, serviceCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **serviceCreate** | [**ServiceCreate**](ServiceCreate.md)|  | 

### Return type

[**ServiceCreated**](ServiceCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviziDestroy**
> serviziDestroy(id, object)

Elimina un servizio

Elimina un servizio e tutti i suoi step e categorie associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final int id = 56; // int | ID del servizio da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.serviziDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del servizio da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviziDetailRetrieve**
> ServiceDetail serviziDetailRetrieve(id, object)

Ottieni un servizio specifico

Recupera i dettagli di un servizio specifico con i suoi step e categorie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final int id = 56; // int | ID del servizio da recuperare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.serviziDetailRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziDetailRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del servizio da recuperare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**ServiceDetail**](ServiceDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviziList**
> BuiltList<ServiceList> serviziList(object)

Ottieni tutti i servizi

Recupera l'elenco di tutti i servizi disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.serviziList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;ServiceList&gt;**](ServiceList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviziOptionsWorkstationRetrieve**
> BuiltList<ServiceOptionWorkStation> serviziOptionsWorkstationRetrieve(object)

Ottieni servizi raggruppati per macro area

Restituisce i servizi raggruppati per macro area, includendo ID, nome e genere dei servizi

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.serviziOptionsWorkstationRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziOptionsWorkstationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;ServiceOptionWorkStation&gt;**](ServiceOptionWorkStation.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviziUpdate**
> ServiceUpdated serviziUpdate(id, object, serviceUpdate)

Aggiorna un servizio esistente

Aggiorna un servizio esistente con i relativi step e categorie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiziApi();
final int id = 56; // int | ID del servizio da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final ServiceUpdate serviceUpdate = ; // ServiceUpdate | 

try {
    final response = api.serviziUpdate(id, object, serviceUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiziApi->serviziUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del servizio da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **serviceUpdate** | [**ServiceUpdate**](ServiceUpdate.md)|  | 

### Return type

[**ServiceUpdated**](ServiceUpdated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

