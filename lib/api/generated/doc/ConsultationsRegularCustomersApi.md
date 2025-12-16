# beautyflow_api.api.ConsultationsRegularCustomersApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consultationsMarkRegularCreate**](ConsultationsRegularCustomersApi.md#consultationsmarkregularcreate) | **POST** /api/consultations/mark-regular/ | Marca cliente come abituale
[**consultationsReadyToBookCreate**](ConsultationsRegularCustomersApi.md#consultationsreadytobookcreate) | **POST** /api/consultations/ready-to-book/ | Marca consultation pronta per booking
[**customersRegularServicesRetrieve**](ConsultationsRegularCustomersApi.md#customersregularservicesretrieve) | **GET** /api/customers/regular-services/ | Lista servizi abituali cliente
[**regularCustomersRetrieve**](ConsultationsRegularCustomersApi.md#regularcustomersretrieve) | **GET** /api/regular-customers/ | Lista clienti abituali
[**regularServicesDestroy**](ConsultationsRegularCustomersApi.md#regularservicesdestroy) | **DELETE** /api/regular-services/ | Elimina cliente abituale
[**regularServicesPartialUpdate**](ConsultationsRegularCustomersApi.md#regularservicespartialupdate) | **PATCH** /api/regular-services/ | Disattiva cliente abituale
[**regularServicesRetrieve**](ConsultationsRegularCustomersApi.md#regularservicesretrieve) | **GET** /api/regular-services/ | Dettaglio cliente abituale


# **consultationsMarkRegularCreate**
> CustomerRegularService consultationsMarkRegularCreate(consultationId, object, markRegularInput)

Marca cliente come abituale

Marca un cliente come abituale per un servizio dopo una consultation completata. Il cliente potrà in futuro prenotare autonomamente questo servizio senza nuove consultations. Richiede permesso operator_authorized.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int consultationId = 56; // int | ID della consultation completata
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)
final MarkRegularInput markRegularInput = ; // MarkRegularInput | 

try {
    final response = api.consultationsMarkRegularCreate(consultationId, object, markRegularInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->consultationsMarkRegularCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**| ID della consultation completata | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 
 **markRegularInput** | [**MarkRegularInput**](MarkRegularInput.md)|  | [optional] 

### Return type

[**CustomerRegularService**](CustomerRegularService.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsReadyToBookCreate**
> ConsultationReadyToBookOutput consultationsReadyToBookCreate(consultationId, object, consultationReadyToBook)

Marca consultation pronta per booking

Marca una consultation completata come 'ready_to_book', salvando lo snapshot degli step del servizio con durate definitive e descrizione finale. Elimina eventuali booking già creati e invia notifica al cliente. Opzionalmente può marcare il cliente come abituale. Richiede permesso operator_authorized.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int consultationId = 56; // int | ID della consultation completata
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)
final ConsultationReadyToBook consultationReadyToBook = ; // ConsultationReadyToBook | 

try {
    final response = api.consultationsReadyToBookCreate(consultationId, object, consultationReadyToBook);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->consultationsReadyToBookCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**| ID della consultation completata | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 
 **consultationReadyToBook** | [**ConsultationReadyToBook**](ConsultationReadyToBook.md)|  | 

### Return type

[**ConsultationReadyToBookOutput**](ConsultationReadyToBookOutput.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customersRegularServicesRetrieve**
> CustomerRegularServicesListResponse customersRegularServicesRetrieve(customerId, object, active)

Lista servizi abituali cliente

Ottiene la lista di tutti i servizi per cui un cliente è abituale. I clienti possono vedere solo i propri servizi, gli operatori possono vedere tutti.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int customerId = 56; // int | ID del cliente
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)
final bool active = true; // bool | Filtra per stato active (true/false)

try {
    final response = api.customersRegularServicesRetrieve(customerId, object, active);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->customersRegularServicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| ID del cliente | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 
 **active** | **bool**| Filtra per stato active (true/false) | [optional] 

### Return type

[**CustomerRegularServicesListResponse**](CustomerRegularServicesListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regularCustomersRetrieve**
> RegularCustomersListResponse regularCustomersRetrieve(object, page, pageSize, search)

Lista clienti abituali

Ottiene la lista paginata di tutti i clienti che hanno almeno un servizio abituale attivo. Include informazioni aggregate sui servizi per cui sono abituali.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final String search = search_example; // String | Cerca per nome o cognome cliente

try {
    final response = api.regularCustomersRetrieve(object, page, pageSize, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->regularCustomersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **search** | **String**| Cerca per nome o cognome cliente | [optional] 

### Return type

[**RegularCustomersListResponse**](RegularCustomersListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regularServicesDestroy**
> regularServicesDestroy(id, object)

Elimina cliente abituale

Elimina permanentemente la relazione cliente-abituale. Solo operator_authorized può eseguire questa operazione. Nota: preferire PATCH con active=false per soft delete.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int id = 56; // int | ID del CustomerRegularService
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)

try {
    api.regularServicesDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->regularServicesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del CustomerRegularService | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regularServicesPartialUpdate**
> CustomerRegularService regularServicesPartialUpdate(id, object, body)

Disattiva cliente abituale

Disattiva la relazione cliente-abituale (soft delete). Solo operator_authorized può eseguire questa operazione.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int id = 56; // int | ID del CustomerRegularService
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)
final JsonObject body = ; // JsonObject | 

try {
    final response = api.regularServicesPartialUpdate(id, object, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->regularServicesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del CustomerRegularService | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 
 **body** | **JsonObject**|  | [optional] 

### Return type

[**CustomerRegularService**](CustomerRegularService.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regularServicesRetrieve**
> CustomerRegularService regularServicesRetrieve(id, object)

Dettaglio cliente abituale

Ottiene i dettagli di una relazione cliente-abituale-servizio

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultationsRegularCustomersApi();
final int id = 56; // int | ID del CustomerRegularService
final String object = object_example; // String | Parametro oggetto per Casbin (consultation_regular)

try {
    final response = api.regularServicesRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultationsRegularCustomersApi->regularServicesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del CustomerRegularService | 
 **object** | **String**| Parametro oggetto per Casbin (consultation_regular) | 

### Return type

[**CustomerRegularService**](CustomerRegularService.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

