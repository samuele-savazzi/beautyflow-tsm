# beautyflow_api.api.ConsultazioniApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consultationsConvertToBookingUpdate**](ConsultazioniApi.md#consultationsconverttobookingupdate) | **PUT** /api/consultations/{consultation_id}/convert-to-booking/ | Converti consultazione in booking
[**consultationsCreate**](ConsultazioniApi.md#consultationscreate) | **POST** /api/consultations/ | Crea nuova consultazione
[**consultationsDestroy**](ConsultazioniApi.md#consultationsdestroy) | **DELETE** /api/consultations/{consultation_id}/ | Cancella consultazione
[**consultationsList**](ConsultazioniApi.md#consultationslist) | **GET** /api/consultations/ | Ottieni lista consultazioni
[**consultationsRetrieve**](ConsultazioniApi.md#consultationsretrieve) | **GET** /api/consultations/{consultation_id}/ | Ottieni dettaglio consultazione
[**consultationsUpdate**](ConsultazioniApi.md#consultationsupdate) | **PUT** /api/consultations/{consultation_id}/ | Completa consultazione


# **consultationsConvertToBookingUpdate**
> ConsultationConvertResponse consultationsConvertToBookingUpdate(consultationId, object)

Converti consultazione in booking

Converte una consultazione completata in stato \"converted_to_booking\". Cambia solo lo stato, non crea automaticamente un nuovo booking.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final int consultationId = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto (consultation)

try {
    final response = api.consultationsConvertToBookingUpdate(consultationId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsConvertToBookingUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto (consultation) | 

### Return type

[**ConsultationConvertResponse**](ConsultationConvertResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsCreate**
> ConsultationDetail consultationsCreate(object, consultationCreate)

Crea nuova consultazione

Crea una nuova consultazione con booking e slot associati. Durata fissa 10 minuti.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto (consultation)
final ConsultationCreate consultationCreate = ; // ConsultationCreate | 

try {
    final response = api.consultationsCreate(object, consultationCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto (consultation) | 
 **consultationCreate** | [**ConsultationCreate**](ConsultationCreate.md)|  | 

### Return type

[**ConsultationDetail**](ConsultationDetail.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsDestroy**
> consultationsDestroy(consultationId, object)

Cancella consultazione

Cancella una consultazione. Solo admin/titular possono cancellare.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final int consultationId = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto (consultation)

try {
    api.consultationsDestroy(consultationId, object);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto (consultation) | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsList**
> BuiltList<ConsultationList> consultationsList(object, areaId, customerName, operatorName, serviceId, serviceName, status)

Ottieni lista consultazioni

Recupera l'elenco delle consultazioni. Operatori vedono solo le proprie, admin/titular/secretariat vedono tutte.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto (consultation)
final int areaId = 56; // int | Filtra per area/sede
final String customerName = customerName_example; // String | Filtra per nome o cognome cliente (ricerca parziale)
final String operatorName = operatorName_example; // String | Filtra per nome o cognome operatore (ricerca parziale)
final int serviceId = 56; // int | Filtra per ID servizio
final String serviceName = serviceName_example; // String | Filtra per nome servizio (ricerca parziale)
final String status = status_example; // String | Filtra per stato consultazione (confirmed, completed, converted_to_booking, ready_to_book, cancelled)

try {
    final response = api.consultationsList(object, areaId, customerName, operatorName, serviceId, serviceName, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto (consultation) | 
 **areaId** | **int**| Filtra per area/sede | [optional] 
 **customerName** | **String**| Filtra per nome o cognome cliente (ricerca parziale) | [optional] 
 **operatorName** | **String**| Filtra per nome o cognome operatore (ricerca parziale) | [optional] 
 **serviceId** | **int**| Filtra per ID servizio | [optional] 
 **serviceName** | **String**| Filtra per nome servizio (ricerca parziale) | [optional] 
 **status** | **String**| Filtra per stato consultazione (confirmed, completed, converted_to_booking, ready_to_book, cancelled) | [optional] 

### Return type

[**BuiltList&lt;ConsultationList&gt;**](ConsultationList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsRetrieve**
> ConsultationDetailResponse consultationsRetrieve(consultationId, object)

Ottieni dettaglio consultazione

Recupera il dettaglio completo di una consultazione specifica con risposte alle domande.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final int consultationId = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto (consultation)

try {
    final response = api.consultationsRetrieve(consultationId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto (consultation) | 

### Return type

[**ConsultationDetailResponse**](ConsultationDetailResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consultationsUpdate**
> ConsultationCompleteResponse consultationsUpdate(consultationId, object)

Completa consultazione

Marca la consultazione come completata. Solo l'operatore assegnato può completare.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsultazioniApi();
final int consultationId = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto (consultation)

try {
    final response = api.consultationsUpdate(consultationId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConsultazioniApi->consultationsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consultationId** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto (consultation) | 

### Return type

[**ConsultationCompleteResponse**](ConsultationCompleteResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

