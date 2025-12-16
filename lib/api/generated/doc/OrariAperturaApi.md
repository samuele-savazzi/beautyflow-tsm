# beautyflow_api.api.OrariAperturaApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**areeDailyHoursRetrieve**](OrariAperturaApi.md#areedailyhoursretrieve) | **GET** /api/aree/daily-hours/ | Ottieni gli orari per una data specifica


# **areeDailyHoursRetrieve**
> DailyHoursResponse areeDailyHoursRetrieve(date, object, areaId)

Ottieni gli orari per una data specifica

Restituisce gli orari di apertura per la data specificata, considerando orari standard, festività, aperture e chiusure speciali

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getOrariAperturaApi();
final String date = date_example; // String | Data in formato YYYY-MM-DD per cui ottenere gli orari
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int areaId = 56; // int | ID dell'area (opzionale - se non specificato, vengono restituite tutte le aree)

try {
    final response = api.areeDailyHoursRetrieve(date, object, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrariAperturaApi->areeDailyHoursRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **String**| Data in formato YYYY-MM-DD per cui ottenere gli orari | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| ID dell'area (opzionale - se non specificato, vengono restituite tutte le aree) | [optional] 

### Return type

[**DailyHoursResponse**](DailyHoursResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

