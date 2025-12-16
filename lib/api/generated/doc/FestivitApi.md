# beautyflow_api.api.FestivitApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeConfigHolidaysCreate**](FestivitApi.md#areeconfigholidayscreate) | **POST** /api/aree/config/holidays/ | Crea una nuova festività
[**areeConfigHolidaysDestroy**](FestivitApi.md#areeconfigholidaysdestroy) | **DELETE** /api/aree/config/holidays/ | Elimina una festività
[**areeConfigHolidaysList**](FestivitApi.md#areeconfigholidayslist) | **GET** /api/aree/config/holidays/ | Ottieni le festività per un&#39;area
[**areeConfigHolidaysUpdate**](FestivitApi.md#areeconfigholidaysupdate) | **PUT** /api/aree/config/holidays/ | Aggiorna una festività


# **areeConfigHolidaysCreate**
> HolidayCreated areeConfigHolidaysCreate(object, holidayCreate)

Crea una nuova festività

Crea una nuova festività per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFestivitApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final HolidayCreate holidayCreate = ; // HolidayCreate | 

try {
    final response = api.areeConfigHolidaysCreate(object, holidayCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FestivitApi->areeConfigHolidaysCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **holidayCreate** | [**HolidayCreate**](HolidayCreate.md)|  | 

### Return type

[**HolidayCreated**](HolidayCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigHolidaysDestroy**
> areeConfigHolidaysDestroy(id, object)

Elimina una festività

Elimina una festività esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFestivitApi();
final int id = 56; // int | ID della festività da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.areeConfigHolidaysDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling FestivitApi->areeConfigHolidaysDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della festività da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigHolidaysList**
> BuiltList<HolidayList> areeConfigHolidaysList(areaId, object, endDate, startDate)

Ottieni le festività per un'area

Recupera tutte le festività per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFestivitApi();
final int areaId = 56; // int | ID dell'area per cui recuperare le festività
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String endDate = endDate_example; // String | Data di fine (formato YYYY-MM-DD) per filtrare le festività
final String startDate = startDate_example; // String | Data di inizio (formato YYYY-MM-DD) per filtrare le festività

try {
    final response = api.areeConfigHolidaysList(areaId, object, endDate, startDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FestivitApi->areeConfigHolidaysList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare le festività | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **endDate** | **String**| Data di fine (formato YYYY-MM-DD) per filtrare le festività | [optional] 
 **startDate** | **String**| Data di inizio (formato YYYY-MM-DD) per filtrare le festività | [optional] 

### Return type

[**BuiltList&lt;HolidayList&gt;**](HolidayList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigHolidaysUpdate**
> areeConfigHolidaysUpdate(id, object, holidayUpdate)

Aggiorna una festività

Aggiorna una festività esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFestivitApi();
final int id = 56; // int | ID della festività da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final HolidayUpdate holidayUpdate = ; // HolidayUpdate | 

try {
    api.areeConfigHolidaysUpdate(id, object, holidayUpdate);
} catch on DioException (e) {
    print('Exception when calling FestivitApi->areeConfigHolidaysUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della festività da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **holidayUpdate** | [**HolidayUpdate**](HolidayUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

