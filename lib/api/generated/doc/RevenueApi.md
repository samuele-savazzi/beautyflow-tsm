# beautyflow_api.api.RevenueApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**revenueDailyRetrieve**](RevenueApi.md#revenuedailyretrieve) | **GET** /api/revenue/daily/ | Ottieni revenue giornaliero


# **revenueDailyRetrieve**
> DailyRevenueResponse revenueDailyRetrieve(areaId, object, date, operatorId)

Ottieni revenue giornaliero

Ritorna dati revenue per area o operatore in una data specifica (default: oggi)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getRevenueApi();
final int areaId = 56; // int | ID dell'area
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String date = date_example; // String | Data nel formato YYYY-MM-DD (default: oggi)
final int operatorId = 56; // int | ID dell'operatore (opzionale - se fornito ritorna dati operatore)

try {
    final response = api.revenueDailyRetrieve(areaId, object, date, operatorId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RevenueApi->revenueDailyRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **date** | **String**| Data nel formato YYYY-MM-DD (default: oggi) | [optional] 
 **operatorId** | **int**| ID dell'operatore (opzionale - se fornito ritorna dati operatore) | [optional] 

### Return type

[**DailyRevenueResponse**](DailyRevenueResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

