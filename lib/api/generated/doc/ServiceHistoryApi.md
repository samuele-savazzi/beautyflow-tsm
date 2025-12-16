# beautyflow_api.api.ServiceHistoryApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceHistoryRetrieve**](ServiceHistoryApi.md#servicehistoryretrieve) | **GET** /api/service-history/ | Lista storico servizi (paginata)
[**serviceHistoryRetrieve2**](ServiceHistoryApi.md#servicehistoryretrieve2) | **GET** /api/service-history/{id}/ | Dettaglio storico servizio
[**serviceHistoryUpdate**](ServiceHistoryApi.md#servicehistoryupdate) | **PUT** /api/service-history/{id}/ | Aggiorna storico servizio


# **serviceHistoryRetrieve**
> ServiceHistoryListResponse serviceHistoryRetrieve(object, customerId, dateFrom, dateTo, operatorId, page, pageSize, paid, serviceId, widgetName)

Lista storico servizi (paginata)

Ottiene lista paginata dello storico servizi con filtri opzionali

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiceHistoryApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int customerId = 56; // int | Filtra per ID cliente
final String dateFrom = dateFrom_example; // String | Data inizio filtro (YYYY-MM-DD)
final String dateTo = dateTo_example; // String | Data fine filtro (YYYY-MM-DD)
final int operatorId = 56; // int | Filtra per ID operatore
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final bool paid = true; // bool | Filtra per stato pagamento
final int serviceId = 56; // int | Filtra per ID servizio
final String widgetName = widgetName_example; // String | Filtra per nome widget

try {
    final response = api.serviceHistoryRetrieve(object, customerId, dateFrom, dateTo, operatorId, page, pageSize, paid, serviceId, widgetName);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiceHistoryApi->serviceHistoryRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **customerId** | **int**| Filtra per ID cliente | [optional] 
 **dateFrom** | **String**| Data inizio filtro (YYYY-MM-DD) | [optional] 
 **dateTo** | **String**| Data fine filtro (YYYY-MM-DD) | [optional] 
 **operatorId** | **int**| Filtra per ID operatore | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **paid** | **bool**| Filtra per stato pagamento | [optional] 
 **serviceId** | **int**| Filtra per ID servizio | [optional] 
 **widgetName** | **String**| Filtra per nome widget | [optional] 

### Return type

[**ServiceHistoryListResponse**](ServiceHistoryListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceHistoryRetrieve2**
> ServiceHistoryDetail serviceHistoryRetrieve2(id, object)

Dettaglio storico servizio

Ottiene dettaglio completo di un record storico servizio

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiceHistoryApi();
final int id = 56; // int | ID del record storico
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.serviceHistoryRetrieve2(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiceHistoryApi->serviceHistoryRetrieve2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del record storico | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**ServiceHistoryDetail**](ServiceHistoryDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceHistoryUpdate**
> ServiceHistoryUpdateResponse serviceHistoryUpdate(id, object, serviceHistoryUpdate)

Aggiorna storico servizio

Aggiorna un record dello storico servizi

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getServiceHistoryApi();
final int id = 56; // int | ID del record storico da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final ServiceHistoryUpdate serviceHistoryUpdate = ; // ServiceHistoryUpdate | 

try {
    final response = api.serviceHistoryUpdate(id, object, serviceHistoryUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ServiceHistoryApi->serviceHistoryUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del record storico da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **serviceHistoryUpdate** | [**ServiceHistoryUpdate**](ServiceHistoryUpdate.md)|  | [optional] 

### Return type

[**ServiceHistoryUpdateResponse**](ServiceHistoryUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

