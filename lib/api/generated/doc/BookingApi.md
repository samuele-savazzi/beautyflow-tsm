# beautyflow_api.api.BookingApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookingAreeRetrieve**](BookingApi.md#bookingareeretrieve) | **GET** /api/booking/aree/ | Ottieni aree con calendario operatori per 2 mesi
[**bookingServicesRetrieve**](BookingApi.md#bookingservicesretrieve) | **GET** /api/booking/services/ | Ottieni servizi con dettagli per operatori


# **bookingAreeRetrieve**
> AreasWithOperatorSchedule bookingAreeRetrieve(object, areaId, endDate, startDate)

Ottieni aree con calendario operatori per 2 mesi

Restituisce tutte le aree con il calendario dettagliato dei giorni lavorativi di ogni operatore per i prossimi 2 mesi

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBookingApi();
final String object = object_example; // String | oggetto della richiesta
final int areaId = 56; // int | Filtra per ID area specifica
final String endDate = endDate_example; // String | Data di fine (YYYY-MM-DD). Default: 7 giorni
final String startDate = startDate_example; // String | Data di inizio (YYYY-MM-DD). Default: oggi

try {
    final response = api.bookingAreeRetrieve(object, areaId, endDate, startDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BookingApi->bookingAreeRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **areaId** | **int**| Filtra per ID area specifica | [optional] 
 **endDate** | **String**| Data di fine (YYYY-MM-DD). Default: 7 giorni | [optional] 
 **startDate** | **String**| Data di inizio (YYYY-MM-DD). Default: oggi | [optional] 

### Return type

[**AreasWithOperatorSchedule**](AreasWithOperatorSchedule.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookingServicesRetrieve**
> ServicesAreaResponse bookingServicesRetrieve(areaId, object, operatorIds)

Ottieni servizi con dettagli per operatori

Restituisce tutti i servizi con tempi, prezzi e postazioni per operatori specifici di un'area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getBookingApi();
final int areaId = 56; // int | ID dell'area
final String object = object_example; // String | oggetto della richiesta
final String operatorIds = operatorIds_example; // String | Lista di ID operatori (comma separated)

try {
    final response = api.bookingServicesRetrieve(areaId, object, operatorIds);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BookingApi->bookingServicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area | 
 **object** | **String**| oggetto della richiesta | 
 **operatorIds** | **String**| Lista di ID operatori (comma separated) | 

### Return type

[**ServicesAreaResponse**](ServicesAreaResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

