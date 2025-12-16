# beautyflow_api.api.OrariApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeConfigDaysList**](OrariApi.md#areeconfigdayslist) | **GET** /api/aree/config/days/ | Ottieni i giorni della settimana
[**areeConfigSchedulesCreate**](OrariApi.md#areeconfigschedulescreate) | **POST** /api/aree/config/schedules/ | Crea nuovi orari giornalieri per un&#39;area
[**areeConfigSchedulesList**](OrariApi.md#areeconfigscheduleslist) | **GET** /api/aree/config/schedules/ | Ottieni gli orari giornalieri per un&#39;area
[**areeConfigSchedulesUpdate**](OrariApi.md#areeconfigschedulesupdate) | **PUT** /api/aree/config/schedules/ | Aggiorna gli orari giornalieri per un&#39;area


# **areeConfigDaysList**
> BuiltList<DayOfWeekList> areeConfigDaysList(object)

Ottieni i giorni della settimana

Recupera l'elenco di tutti i giorni della settimana

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOrariApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.areeConfigDaysList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrariApi->areeConfigDaysList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;DayOfWeekList&gt;**](DayOfWeekList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSchedulesCreate**
> DailyScheduleCreated areeConfigSchedulesCreate(object, dailyScheduleCreate)

Crea nuovi orari giornalieri per un'area

Crea nuovi orari giornalieri per una specifica area, utilizzando la stessa struttura della PUT

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOrariApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DailyScheduleCreate dailyScheduleCreate = ; // DailyScheduleCreate | 

try {
    final response = api.areeConfigSchedulesCreate(object, dailyScheduleCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrariApi->areeConfigSchedulesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **dailyScheduleCreate** | [**DailyScheduleCreate**](DailyScheduleCreate.md)|  | 

### Return type

[**DailyScheduleCreated**](DailyScheduleCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSchedulesList**
> BuiltList<DailyScheduleList> areeConfigSchedulesList(areaId, object)

Ottieni gli orari giornalieri per un'area

Recupera gli orari giornalieri per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOrariApi();
final int areaId = 56; // int | ID dell'area per cui recuperare gli orari
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.areeConfigSchedulesList(areaId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrariApi->areeConfigSchedulesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare gli orari | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;DailyScheduleList&gt;**](DailyScheduleList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigSchedulesUpdate**
> areeConfigSchedulesUpdate(id, object, dailyScheduleUpdate)

Aggiorna gli orari giornalieri per un'area

Aggiorna gli orari giornalieri e le fasce orarie per una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOrariApi();
final int id = 56; // int | ID dell'orario giornaliero da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DailyScheduleUpdate dailyScheduleUpdate = ; // DailyScheduleUpdate | 

try {
    api.areeConfigSchedulesUpdate(id, object, dailyScheduleUpdate);
} catch on DioException (e) {
    print('Exception when calling OrariApi->areeConfigSchedulesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID dell'orario giornaliero da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **dailyScheduleUpdate** | [**DailyScheduleUpdate**](DailyScheduleUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

