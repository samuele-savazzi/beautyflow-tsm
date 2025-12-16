# beautyflow_api.api.OperatoriApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operatorsAvailableFrequentServicesRetrieve**](OperatoriApi.md#operatorsavailablefrequentservicesretrieve) | **GET** /api/operators/available-frequent-services/ | Ottieni i servizi selezionabili per il servizio frequente
[**operatorsCreate**](OperatoriApi.md#operatorscreate) | **POST** /api/operators/ | Crea un nuovo operatore
[**operatorsDestroy**](OperatoriApi.md#operatorsdestroy) | **DELETE** /api/operators/ | Elimina un operatore
[**operatorsDetailRetrieve**](OperatoriApi.md#operatorsdetailretrieve) | **GET** /api/operators/detail/ | Dettaglio operatore
[**operatorsFrequentServiceRetrieve**](OperatoriApi.md#operatorsfrequentserviceretrieve) | **GET** /api/operators/frequent-service/ | Ottieni il servizio più frequente di un operatore
[**operatorsList**](OperatoriApi.md#operatorslist) | **GET** /api/operators/ | Ottieni tutti gli operatori
[**operatorsSetFrequentServiceCreate**](OperatoriApi.md#operatorssetfrequentservicecreate) | **POST** /api/operators/set-frequent-service/ | Imposta il servizio più frequente per un operatore
[**operatorsSpecialOpeningsCreate**](OperatoriApi.md#operatorsspecialopeningscreate) | **POST** /api/operators/special-openings/ | Crea un&#39;apertura speciale per un operatore
[**operatorsSpecialOpeningsDestroy**](OperatoriApi.md#operatorsspecialopeningsdestroy) | **DELETE** /api/operators/special-openings/ | Elimina un&#39;apertura speciale per un operatore
[**operatorsSpecialOpeningsRetrieve**](OperatoriApi.md#operatorsspecialopeningsretrieve) | **GET** /api/operators/special-openings/ | Ottieni le aperture speciali di un operatore
[**operatorsSpecialOpeningsUpdate**](OperatoriApi.md#operatorsspecialopeningsupdate) | **PUT** /api/operators/special-openings/ | Aggiorna un&#39;apertura speciale per un operatore
[**operatorsUpdate**](OperatoriApi.md#operatorsupdate) | **PUT** /api/operators/ | Aggiorna un operatore


# **operatorsAvailableFrequentServicesRetrieve**
> GetAvailableServicesResponse operatorsAvailableFrequentServicesRetrieve(object, operatorId)

Ottieni i servizi selezionabili per il servizio frequente

Ritorna tutti i servizi dell'operatore (esclusi quelli con step/categorie CONSULTATION) con le loro categorie per permettere la selezione del servizio frequente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int operatorId = 56; // int | ID dell'operatore

try {
    final response = api.operatorsAvailableFrequentServicesRetrieve(object, operatorId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsAvailableFrequentServicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorId** | **int**| ID dell'operatore | 

### Return type

[**GetAvailableServicesResponse**](GetAvailableServicesResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsCreate**
> OperatorCreateResponse operatorsCreate(object, operatorCreate)

Crea un nuovo operatore

Crea un nuovo operatore con le relative associazioni

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final OperatorCreate operatorCreate = ; // OperatorCreate | 

try {
    final response = api.operatorsCreate(object, operatorCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorCreate** | [**OperatorCreate**](OperatorCreate.md)|  | 

### Return type

[**OperatorCreateResponse**](OperatorCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsDestroy**
> operatorsDestroy(id, object)

Elimina un operatore

Elimina un operatore esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final int id = 56; // int | ID dell'operatore da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.operatorsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'operatore da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsDetailRetrieve**
> OperatorDetail operatorsDetailRetrieve(id, object)

Dettaglio operatore

Recupera i dettagli di un operatore specifico

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final int id = 56; // int | ID dell'operatore da visualizzare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.operatorsDetailRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsDetailRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'operatore da visualizzare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**OperatorDetail**](OperatorDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsFrequentServiceRetrieve**
> GetFrequentServiceResponse operatorsFrequentServiceRetrieve(object, operatorId)

Ottieni il servizio più frequente di un operatore

Ritorna il servizio frequente dell'operatore con categorie selezionate e durata human readable.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int operatorId = 56; // int | ID dell'operatore

try {
    final response = api.operatorsFrequentServiceRetrieve(object, operatorId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsFrequentServiceRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorId** | **int**| ID dell'operatore | 

### Return type

[**GetFrequentServiceResponse**](GetFrequentServiceResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsList**
> BuiltList<OperatorList> operatorsList(object, areaId)

Ottieni tutti gli operatori

Recupera l'elenco di tutti gli operatori disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int areaId = 56; // int | Id dell' area per cui si voglio recuperare gli operatori

try {
    final response = api.operatorsList(object, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| Id dell' area per cui si voglio recuperare gli operatori | [optional] 

### Return type

[**BuiltList&lt;OperatorList&gt;**](OperatorList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsSetFrequentServiceCreate**
> SetFrequentServiceResponse operatorsSetFrequentServiceCreate(object, operatorId, setFrequentServiceRequest)

Imposta il servizio più frequente per un operatore

Permette al frontend di indicare il servizio più frequente dell'operatore con le categorie selezionate. La durata viene calcolata automaticamente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int operatorId = 56; // int | ID dell'operatore
final SetFrequentServiceRequest setFrequentServiceRequest = ; // SetFrequentServiceRequest | 

try {
    final response = api.operatorsSetFrequentServiceCreate(object, operatorId, setFrequentServiceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsSetFrequentServiceCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorId** | **int**| ID dell'operatore | 
 **setFrequentServiceRequest** | [**SetFrequentServiceRequest**](SetFrequentServiceRequest.md)|  | 

### Return type

[**SetFrequentServiceResponse**](SetFrequentServiceResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsSpecialOpeningsCreate**
> CreatedOperatorSpecialOpening operatorsSpecialOpeningsCreate(createOperatorSpecialOpening)

Crea un'apertura speciale per un operatore

Crea una nuova assegnazione di apertura speciale per un operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final CreateOperatorSpecialOpening createOperatorSpecialOpening = ; // CreateOperatorSpecialOpening | 

try {
    final response = api.operatorsSpecialOpeningsCreate(createOperatorSpecialOpening);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsSpecialOpeningsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOperatorSpecialOpening** | [**CreateOperatorSpecialOpening**](CreateOperatorSpecialOpening.md)|  | 

### Return type

[**CreatedOperatorSpecialOpening**](CreatedOperatorSpecialOpening.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsSpecialOpeningsDestroy**
> operatorsSpecialOpeningsDestroy()

Elimina un'apertura speciale per un operatore

Rimuove un'assegnazione di apertura speciale per un operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();

try {
    api.operatorsSpecialOpeningsDestroy();
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsSpecialOpeningsDestroy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsSpecialOpeningsRetrieve**
> BuiltList<OperatorSpecialOpeningList> operatorsSpecialOpeningsRetrieve(operatorId, specialOpeningId)

Ottieni le aperture speciali di un operatore

Recupera tutte le aperture speciali assegnate a un operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final int operatorId = 56; // int | ID dell'operatore di cui recuperare le aperture speciali
final int specialOpeningId = 56; // int | ID dell'apertura speciale

try {
    final response = api.operatorsSpecialOpeningsRetrieve(operatorId, specialOpeningId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsSpecialOpeningsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operatorId** | **int**| ID dell'operatore di cui recuperare le aperture speciali | [optional] 
 **specialOpeningId** | **int**| ID dell'apertura speciale | [optional] 

### Return type

[**BuiltList&lt;OperatorSpecialOpeningList&gt;**](OperatorSpecialOpeningList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsSpecialOpeningsUpdate**
> UpdatedOperatorSpecialOpening operatorsSpecialOpeningsUpdate(updateOperatorSpecialOpening)

Aggiorna un'apertura speciale per un operatore

Aggiorna un'assegnazione esistente di apertura speciale per un operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final UpdateOperatorSpecialOpening updateOperatorSpecialOpening = ; // UpdateOperatorSpecialOpening | 

try {
    final response = api.operatorsSpecialOpeningsUpdate(updateOperatorSpecialOpening);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsSpecialOpeningsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateOperatorSpecialOpening** | [**UpdateOperatorSpecialOpening**](UpdateOperatorSpecialOpening.md)|  | 

### Return type

[**UpdatedOperatorSpecialOpening**](UpdatedOperatorSpecialOpening.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsUpdate**
> OperatorUpdateResponse operatorsUpdate(id, object, operatorUpdate)

Aggiorna un operatore

Aggiorna i dati di un operatore esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOperatoriApi();
final int id = 56; // int | ID dell'operatore da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final OperatorUpdate operatorUpdate = ; // OperatorUpdate | 

try {
    final response = api.operatorsUpdate(id, object, operatorUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OperatoriApi->operatorsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'operatore da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **operatorUpdate** | [**OperatorUpdate**](OperatorUpdate.md)|  | [optional] 

### Return type

[**OperatorUpdateResponse**](OperatorUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

