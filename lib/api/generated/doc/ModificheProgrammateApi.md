# beautyflow_api.api.ModificheProgrammateApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeConfigScheduledChangesCreate**](ModificheProgrammateApi.md#areeconfigscheduledchangescreate) | **POST** /api/aree/config/scheduled-changes/ | Validazione e creazione modifica programmata
[**areeConfigScheduledChangesDestroy**](ModificheProgrammateApi.md#areeconfigscheduledchangesdestroy) | **DELETE** /api/aree/config/scheduled-changes/ | Elimina modifica programmata
[**areeConfigScheduledChangesRetrieve**](ModificheProgrammateApi.md#areeconfigscheduledchangesretrieve) | **GET** /api/aree/config/scheduled-changes/ | Lista modifiche programmate


# **areeConfigScheduledChangesCreate**
> ValidationResponse areeConfigScheduledChangesCreate(scheduledTimeChangeRequest)

Validazione e creazione modifica programmata

Endpoint per validare e potenzialmente creare una modifica programmata agli orari delle aree

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getModificheProgrammateApi();
final ScheduledTimeChangeRequest scheduledTimeChangeRequest = {"area_id":1,"day_id":1,"timeslot":[{"period":"morning","start_time":"08:00","end_time":"12:00"},{"period":"afternoon","start_time":"14:00","end_time":"18:00"}],"effective_start_date":"2025-07-01","check_inconsistence_only":false,"incostence_corrected":[{"type":"operator_schedule","id":123,"name":"Mario Rossi","ignore":false,"period":"morning","start_time":"08:30","end_time":"12:30","date":"2025-07-01"}]}; // ScheduledTimeChangeRequest | 

try {
    final response = api.areeConfigScheduledChangesCreate(scheduledTimeChangeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModificheProgrammateApi->areeConfigScheduledChangesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scheduledTimeChangeRequest** | [**ScheduledTimeChangeRequest**](ScheduledTimeChangeRequest.md)|  | 

### Return type

[**ValidationResponse**](ValidationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigScheduledChangesDestroy**
> DeleteResponse areeConfigScheduledChangesDestroy(id, object)

Elimina modifica programmata

Elimina una modifica programmata e ripristina tutte le correzioni applicate

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getModificheProgrammateApi();
final int id = 56; // int | ID della modifica programmata da eliminare
final String object = object_example; // String | oggetto richiesto per identificare il contesto

try {
    final response = api.areeConfigScheduledChangesDestroy(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModificheProgrammateApi->areeConfigScheduledChangesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della modifica programmata da eliminare | 
 **object** | **String**| oggetto richiesto per identificare il contesto | 

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **areeConfigScheduledChangesRetrieve**
> ScheduledTimeChangeListResponse areeConfigScheduledChangesRetrieve(object, areaId, dayId, effectiveFromEnd, effectiveFromStart, isActive, ordering, page, pageSize)

Lista modifiche programmate

Endpoint per recuperare le modifiche programmate agli orari delle aree con filtri e paginazione

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getModificheProgrammateApi();
final String object = object_example; // String | oggetto richiesto per identificare il contesto
final int areaId = 56; // int | ID dell'area per filtrare le modifiche
final int dayId = 56; // int | ID del giorno della settimana (1-7)
final String effectiveFromEnd = effectiveFromEnd_example; // String | Data di fine filtro (formato YYYY-MM-DD)
final String effectiveFromStart = effectiveFromStart_example; // String | Data di inizio filtro (formato YYYY-MM-DD)
final bool isActive = true; // bool | Filtra per stato attivo (true/false)
final String ordering = ordering_example; // String | Campo per ordinamento (effective_from, created_at, area__name). Usa - per desc
final int page = 56; // int | Numero di pagina
final int pageSize = 56; // int | Numero di elementi per pagina (max 100)

try {
    final response = api.areeConfigScheduledChangesRetrieve(object, areaId, dayId, effectiveFromEnd, effectiveFromStart, isActive, ordering, page, pageSize);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ModificheProgrammateApi->areeConfigScheduledChangesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| ID dell'area per filtrare le modifiche | [optional] 
 **dayId** | **int**| ID del giorno della settimana (1-7) | [optional] 
 **effectiveFromEnd** | **String**| Data di fine filtro (formato YYYY-MM-DD) | [optional] 
 **effectiveFromStart** | **String**| Data di inizio filtro (formato YYYY-MM-DD) | [optional] 
 **isActive** | **bool**| Filtra per stato attivo (true/false) | [optional] 
 **ordering** | **String**| Campo per ordinamento (effective_from, created_at, area__name). Usa - per desc | [optional] 
 **page** | **int**| Numero di pagina | [optional] 
 **pageSize** | **int**| Numero di elementi per pagina (max 100) | [optional] 

### Return type

[**ScheduledTimeChangeListResponse**](ScheduledTimeChangeListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

