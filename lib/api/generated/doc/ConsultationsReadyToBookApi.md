# beautyflow_api.api.ConsultationsReadyToBookApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consultationsReadyToBookListRetrieve**](ConsultationsReadyToBookApi.md#consultationsreadytobooklistretrieve) | **GET** /api/consultations/ready-to-book-list/ | Lista consultazioni pronte da prenotare


# **consultationsReadyToBookListRetrieve**
> ConsultationReadyToBookListResponse consultationsReadyToBookListRetrieve(object, areaId, customerName, operatorName, page, pageSize, serviceName)

Lista consultazioni pronte da prenotare

Ottiene lista paginata delle consultazioni in stato 'ready_to_book'. Include filtri per nome cliente, operatore, servizio e area.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsReadyToBookApi();
final String object = object_example; // String | Parametro oggetto per Casbin (consultation)
final int areaId = 56; // int | Filtra per area/sede
final String customerName = customerName_example; // String | Filtra per nome o cognome cliente (ricerca parziale)
final String operatorName = operatorName_example; // String | Filtra per nome o cognome operatore (ricerca parziale)
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final String serviceName = serviceName_example; // String | Filtra per nome servizio (ricerca parziale)

try {
    final response = api.consultationsReadyToBookListRetrieve(object, areaId, customerName, operatorName, page, pageSize, serviceName);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsReadyToBookApi->consultationsReadyToBookListRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto per Casbin (consultation) | 
 **areaId** | **int**| Filtra per area/sede | [optional] 
 **customerName** | **String**| Filtra per nome o cognome cliente (ricerca parziale) | [optional] 
 **operatorName** | **String**| Filtra per nome o cognome operatore (ricerca parziale) | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **serviceName** | **String**| Filtra per nome servizio (ricerca parziale) | [optional] 

### Return type

[**ConsultationReadyToBookListResponse**](ConsultationReadyToBookListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

