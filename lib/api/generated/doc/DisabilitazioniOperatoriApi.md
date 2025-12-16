# beautyflow_api.api.DisabilitazioniOperatoriApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operatorsDisabilitiesCreate**](DisabilitazioniOperatoriApi.md#operatorsdisabilitiescreate) | **POST** /api/operators/disabilities/ | Crea una nuova disabilitazione
[**operatorsDisabilitiesDestroy**](DisabilitazioniOperatoriApi.md#operatorsdisabilitiesdestroy) | **DELETE** /api/operators/disabilities/ | Elimina una disabilitazione
[**operatorsDisabilitiesList**](DisabilitazioniOperatoriApi.md#operatorsdisabilitieslist) | **GET** /api/operators/disabilities/ | Ottieni tutte le disabilitazioni
[**operatorsDisabilitiesUpdate**](DisabilitazioniOperatoriApi.md#operatorsdisabilitiesupdate) | **PUT** /api/operators/disabilities/ | Aggiorna una disabilitazione


# **operatorsDisabilitiesCreate**
> OperatorDisabilityCreateResponse operatorsDisabilitiesCreate(object, operatorDisabilityCreate)

Crea una nuova disabilitazione

Crea una nuova disabilitazione per un operatore con fasce orarie associate

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final OperatorDisabilityCreate operatorDisabilityCreate = ; // OperatorDisabilityCreate | 

try {
    final response = api.operatorsDisabilitiesCreate(object, operatorDisabilityCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniOperatoriApi->operatorsDisabilitiesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorDisabilityCreate** | [**OperatorDisabilityCreate**](OperatorDisabilityCreate.md)|  | 

### Return type

[**OperatorDisabilityCreateResponse**](OperatorDisabilityCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsDisabilitiesDestroy**
> operatorsDisabilitiesDestroy(id, object)

Elimina una disabilitazione

Elimina una disabilitazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniOperatoriApi();
final int id = 56; // int | ID della disabilitazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.operatorsDisabilitiesDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniOperatoriApi->operatorsDisabilitiesDestroy: $e\n');
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

# **operatorsDisabilitiesList**
> BuiltList<OperatorDisabilityList> operatorsDisabilitiesList(object, operatorId)

Ottieni tutte le disabilitazioni

Recupera l'elenco di tutte le disabilitazioni per un operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int operatorId = 56; // int | ID dell'operatore per filtrare le disabilitazioni

try {
    final response = api.operatorsDisabilitiesList(object, operatorId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniOperatoriApi->operatorsDisabilitiesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorId** | **int**| ID dell'operatore per filtrare le disabilitazioni | [optional] 

### Return type

[**BuiltList&lt;OperatorDisabilityList&gt;**](OperatorDisabilityList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsDisabilitiesUpdate**
> OperatorDisabilityUpdateResponse operatorsDisabilitiesUpdate(id, object, operatorDisabilityUpdate)

Aggiorna una disabilitazione

Aggiorna una disabilitazione esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDisabilitazioniOperatoriApi();
final int id = 56; // int | ID della disabilitazione da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final OperatorDisabilityUpdate operatorDisabilityUpdate = ; // OperatorDisabilityUpdate | 

try {
    final response = api.operatorsDisabilitiesUpdate(id, object, operatorDisabilityUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DisabilitazioniOperatoriApi->operatorsDisabilitiesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della disabilitazione da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorDisabilityUpdate** | [**OperatorDisabilityUpdate**](OperatorDisabilityUpdate.md)|  | [optional] 

### Return type

[**OperatorDisabilityUpdateResponse**](OperatorDisabilityUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

