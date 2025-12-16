# beautyflow_api.api.CustomersApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerValidRetrieve**](CustomersApi.md#customervalidretrieve) | **GET** /api/customer/valid/ | Lista clienti con filtri
[**customersBookingsRetrieve**](CustomersApi.md#customersbookingsretrieve) | **GET** /api/customers/{id}/bookings/ | Appuntamenti futuri cliente
[**customersDetailRetrieve**](CustomersApi.md#customersdetailretrieve) | **GET** /api/customers/{id}/detail/ | Dettaglio cliente con statistiche
[**customersRetrieve**](CustomersApi.md#customersretrieve) | **GET** /api/customers/ | Lista clienti con filtri
[**customersSearchRetrieve**](CustomersApi.md#customerssearchretrieve) | **GET** /api/customers/search/ | Ricerca clienti
[**customersUpdateUpdate**](CustomersApi.md#customersupdateupdate) | **PUT** /api/customers/{id}/update/ | Aggiorna informazioni cliente


# **customerValidRetrieve**
> CustomerListResponse customerValidRetrieve(object, active, blocked, page, pageSize, premium, search)

Lista clienti con filtri

Ottiene lista paginata di clienti con filtri per stato attivo, premium, bloccato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra clienti attivi (valid=true, blocked=false)
final bool blocked = true; // bool | Filtra clienti bloccati (blocked=true)
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final bool premium = true; // bool | Filtra clienti premium (con abbonamento attivo)
final String search = search_example; // String | Cerca per nome, cognome o telefono

try {
    final response = api.customerValidRetrieve(object, active, blocked, page, pageSize, premium, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customerValidRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra clienti attivi (valid=true, blocked=false) | [optional] 
 **blocked** | **bool**| Filtra clienti bloccati (blocked=true) | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **premium** | **bool**| Filtra clienti premium (con abbonamento attivo) | [optional] 
 **search** | **String**| Cerca per nome, cognome o telefono | [optional] 

### Return type

[**CustomerListResponse**](CustomerListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersBookingsRetrieve**
> CustomerBookingsResponse customersBookingsRetrieve(id, object)

Appuntamenti futuri cliente

Ottiene tutti gli appuntamenti di un cliente da oggi in poi (inclusi cancellati), ordinati per data e ora

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final int id = 56; // int | ID del cliente
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.customersBookingsRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customersBookingsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del cliente | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**CustomerBookingsResponse**](CustomerBookingsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersDetailRetrieve**
> CustomerDetailStats customersDetailRetrieve(id, object)

Dettaglio cliente con statistiche

Ottiene dettaglio completo cliente con anamnesi, frequenza prenotazioni e top 3 servizi

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final int id = 56; // int | ID del cliente
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.customersDetailRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customersDetailRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del cliente | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**CustomerDetailStats**](CustomerDetailStats.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersRetrieve**
> CustomerListResponse customersRetrieve(object, active, blocked, page, pageSize, premium, search)

Lista clienti con filtri

Ottiene lista paginata di clienti con filtri per stato attivo, premium, bloccato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra clienti attivi (valid=true, blocked=false)
final bool blocked = true; // bool | Filtra clienti bloccati (blocked=true)
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final bool premium = true; // bool | Filtra clienti premium (con abbonamento attivo)
final String search = search_example; // String | Cerca per nome, cognome o telefono

try {
    final response = api.customersRetrieve(object, active, blocked, page, pageSize, premium, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra clienti attivi (valid=true, blocked=false) | [optional] 
 **blocked** | **bool**| Filtra clienti bloccati (blocked=true) | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **premium** | **bool**| Filtra clienti premium (con abbonamento attivo) | [optional] 
 **search** | **String**| Cerca per nome, cognome o telefono | [optional] 

### Return type

[**CustomerListResponse**](CustomerListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersSearchRetrieve**
> CustomerSearchResponse customersSearchRetrieve(object, q)

Ricerca clienti

Ricerca rapida clienti per nome/cognome con limite 30 risultati. Minimo 2 caratteri richiesti.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String q = q_example; // String | Termine di ricerca (minimo 2 caratteri)

try {
    final response = api.customersSearchRetrieve(object, q);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customersSearchRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **q** | **String**| Termine di ricerca (minimo 2 caratteri) | 

### Return type

[**CustomerSearchResponse**](CustomerSearchResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersUpdateUpdate**
> CustomerUpdateResponse customersUpdateUpdate(id, object, customerUpdateRequest)

Aggiorna informazioni cliente

Modifica le informazioni di un cliente esistente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCustomersApi();
final int id = 56; // int | ID del cliente da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final CustomerUpdateRequest customerUpdateRequest = ; // CustomerUpdateRequest | 

try {
    final response = api.customersUpdateUpdate(id, object, customerUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->customersUpdateUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del cliente da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **customerUpdateRequest** | [**CustomerUpdateRequest**](CustomerUpdateRequest.md)|  | [optional] 

### Return type

[**CustomerUpdateResponse**](CustomerUpdateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

