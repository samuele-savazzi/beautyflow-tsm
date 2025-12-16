# beautyflow_api.api.ApertureEChiusureApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeConfigSpecialClosingsCreate**](ApertureEChiusureApi.md#areeconfigspecialclosingscreate) | **POST** /api/aree/config/special-closings/ | Crea una nuova chiusura speciale
[**areeConfigSpecialClosingsDestroy**](ApertureEChiusureApi.md#areeconfigspecialclosingsdestroy) | **DELETE** /api/aree/config/special-closings/ | Elimina una chiusura speciale
[**areeConfigSpecialClosingsList**](ApertureEChiusureApi.md#areeconfigspecialclosingslist) | **GET** /api/aree/config/special-closings/ | Ottieni le chiusure speciali per un&#39;area
[**areeConfigSpecialClosingsUpdate**](ApertureEChiusureApi.md#areeconfigspecialclosingsupdate) | **PUT** /api/aree/config/special-closings/ | Aggiorna una chiusura speciale
[**areeConfigSpecialOpeningsCreate**](ApertureEChiusureApi.md#areeconfigspecialopeningscreate) | **POST** /api/aree/config/special-openings/ | Crea una nuova apertura speciale con gestione operatori
[**areeConfigSpecialOpeningsDestroy**](ApertureEChiusureApi.md#areeconfigspecialopeningsdestroy) | **DELETE** /api/aree/config/special-openings/ | Elimina un&#39;apertura speciale
[**areeConfigSpecialOpeningsRetrieve**](ApertureEChiusureApi.md#areeconfigspecialopeningsretrieve) | **GET** /api/aree/config/special-openings/ | Ottieni le aperture speciali per un&#39;area con operatori
[**areeConfigSpecialOpeningsUpdate**](ApertureEChiusureApi.md#areeconfigspecialopeningsupdate) | **PUT** /api/aree/config/special-openings/ | Aggiorna un&#39;apertura speciale con operatori


# **areeConfigSpecialClosingsCreate**
> SpecialClosingCreated areeConfigSpecialClosingsCreate(object, specialClosingCreate)

Crea una nuova chiusura speciale

Crea una nuova chiusura speciale per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final SpecialClosingCreate specialClosingCreate = ; // SpecialClosingCreate | 

try {
    final response = api.areeConfigSpecialClosingsCreate(object, specialClosingCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialClosingsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **specialClosingCreate** | [**SpecialClosingCreate**](SpecialClosingCreate.md)|  | 

### Return type

[**SpecialClosingCreated**](SpecialClosingCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialClosingsDestroy**
> areeConfigSpecialClosingsDestroy(id, object)

Elimina una chiusura speciale

Elimina una chiusura speciale esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int id = 56; // int | ID della chiusura speciale da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.areeConfigSpecialClosingsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialClosingsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della chiusura speciale da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialClosingsList**
> BuiltList<SpecialClosingList> areeConfigSpecialClosingsList(areaId, object, endDate, startDate)

Ottieni le chiusure speciali per un'area

Recupera tutte le chiusure speciali per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int areaId = 56; // int | ID dell'area per cui recuperare le chiusure speciali
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String endDate = endDate_example; // String | Data di fine (formato YYYY-MM-DD) per filtrare le chiusure speciali
final String startDate = startDate_example; // String | Data di inizio (formato YYYY-MM-DD) per filtrare le chiusure speciali

try {
    final response = api.areeConfigSpecialClosingsList(areaId, object, endDate, startDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialClosingsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare le chiusure speciali | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **endDate** | **String**| Data di fine (formato YYYY-MM-DD) per filtrare le chiusure speciali | [optional] 
 **startDate** | **String**| Data di inizio (formato YYYY-MM-DD) per filtrare le chiusure speciali | [optional] 

### Return type

[**BuiltList&lt;SpecialClosingList&gt;**](SpecialClosingList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialClosingsUpdate**
> areeConfigSpecialClosingsUpdate(id, object, specialClosingUpdate)

Aggiorna una chiusura speciale

Aggiorna una chiusura speciale esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int id = 56; // int | ID della chiusura speciale da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final SpecialClosingUpdate specialClosingUpdate = ; // SpecialClosingUpdate | 

try {
    api.areeConfigSpecialClosingsUpdate(id, object, specialClosingUpdate);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialClosingsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della chiusura speciale da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **specialClosingUpdate** | [**SpecialClosingUpdate**](SpecialClosingUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialOpeningsCreate**
> OperatorsResponse areeConfigSpecialOpeningsCreate(object, specialOpeningRequest)

Crea una nuova apertura speciale con gestione operatori

Crea una nuova apertura speciale per una specifica area. Supporta modalità \"get_operators_only\" per ottenere la lista degli operatori prima della creazione finale.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final SpecialOpeningRequest specialOpeningRequest = {"area_id":1,"date":"2025-07-15","reason":"Apertura straordinaria","morning_open":true,"morning_opening_time":"08:00","morning_closing_time":"12:00","afternoon_open":true,"afternoon_opening_time":"14:00","afternoon_closing_time":"18:00","get_operators_only":true}; // SpecialOpeningRequest | 

try {
    final response = api.areeConfigSpecialOpeningsCreate(object, specialOpeningRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialOpeningsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **specialOpeningRequest** | [**SpecialOpeningRequest**](SpecialOpeningRequest.md)|  | 

### Return type

[**OperatorsResponse**](OperatorsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialOpeningsDestroy**
> areeConfigSpecialOpeningsDestroy(id, object)

Elimina un'apertura speciale

Elimina un'apertura speciale esistente e tutte le associazioni operatori

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int id = 56; // int | ID dell'apertura speciale da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.areeConfigSpecialOpeningsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialOpeningsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'apertura speciale da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialOpeningsRetrieve**
> BuiltList<SpecialOpeningDetail> areeConfigSpecialOpeningsRetrieve(areaId, object, endDate, startDate)

Ottieni le aperture speciali per un'area con operatori

Recupera tutte le aperture speciali per una specifica area includendo gli operatori associati e i loro orari

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int areaId = 56; // int | ID dell'area per cui recuperare le aperture speciali
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String endDate = endDate_example; // String | Data di fine (formato YYYY-MM-DD) per filtrare le aperture speciali
final String startDate = startDate_example; // String | Data di inizio (formato YYYY-MM-DD) per filtrare le aperture speciali

try {
    final response = api.areeConfigSpecialOpeningsRetrieve(areaId, object, endDate, startDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialOpeningsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare le aperture speciali | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **endDate** | **String**| Data di fine (formato YYYY-MM-DD) per filtrare le aperture speciali | [optional] 
 **startDate** | **String**| Data di inizio (formato YYYY-MM-DD) per filtrare le aperture speciali | [optional] 

### Return type

[**BuiltList&lt;SpecialOpeningDetail&gt;**](SpecialOpeningDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSpecialOpeningsUpdate**
> OperatorsResponseUpdate areeConfigSpecialOpeningsUpdate(id, object, specialOpeningUpdate)

Aggiorna un'apertura speciale con operatori

Aggiorna un'apertura speciale esistente e i suoi operatori associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getApertureEChiusureApi();
final int id = 56; // int | ID dell'apertura speciale da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final SpecialOpeningUpdate specialOpeningUpdate = {"date":"2025-07-16","reason":"Apertura straordinaria modificata","morning_open":true,"morning_opening_time":"09:00","morning_closing_time":"13:00","afternoon_open":false,"afternoon_opening_time":null,"afternoon_closing_time":null,"operator_schedules":[{"operator_id":123,"morning_working":true,"morning_start_time":"09:00","morning_end_time":"13:00","afternoon_working":false,"ignore_afternoon":true,"notes":"Solo mattina per la modifica"},{"operator_id":456,"morning_working":true,"morning_start_time":"09:30","morning_end_time":"12:30","afternoon_working":false,"ignore_afternoon":true,"notes":"Nuovo operatore aggiunto"}]}; // SpecialOpeningUpdate | 

try {
    final response = api.areeConfigSpecialOpeningsUpdate(id, object, specialOpeningUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ApertureEChiusureApi->areeConfigSpecialOpeningsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'apertura speciale da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **specialOpeningUpdate** | [**SpecialOpeningUpdate**](SpecialOpeningUpdate.md)|  | 

### Return type

[**OperatorsResponseUpdate**](OperatorsResponseUpdate.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

