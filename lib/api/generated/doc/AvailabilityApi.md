# beautyflow_api.api.AvailabilityApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availabilityBatchCreate**](AvailabilityApi.md#availabilitybatchcreate) | **POST** /api/availability/batch/ | Trova disponibilità per multipli operatori ULTRA-VELOCE
[**availabilityBookingCreateCreate**](AvailabilityApi.md#availabilitybookingcreatecreate) | **POST** /api/availability/booking/create/ | Crea nuovo booking con slots
[**availabilityBookingDeleteDestroy**](AvailabilityApi.md#availabilitybookingdeletedestroy) | **DELETE** /api/availability/booking/delete/ | Cancella booking esistente
[**availabilityBookingListRetrieve**](AvailabilityApi.md#availabilitybookinglistretrieve) | **GET** /api/availability/booking/list/ | Lista appuntamenti utente
[**availabilityBookingMissedCreate**](AvailabilityApi.md#availabilitybookingmissedcreate) | **POST** /api/availability/booking/missed/ | Segna booking come saltato/cancellato
[**availabilityBookingPayCreate**](AvailabilityApi.md#availabilitybookingpaycreate) | **POST** /api/availability/booking/pay/ | Segna booking come pagato
[**availabilityBookingTodayRetrieve**](AvailabilityApi.md#availabilitybookingtodayretrieve) | **GET** /api/availability/booking/today/ | Booking di oggi con vendite prodotti
[**availabilityDailyCreate**](AvailabilityApi.md#availabilitydailycreate) | **POST** /api/availability/daily/ | Trova disponibilità giornaliera operatore
[**availabilityFirstCreate**](AvailabilityApi.md#availabilityfirstcreate) | **POST** /api/availability/first/ | Trova prima disponibilità operatore
[**availabilityHealthRetrieve**](AvailabilityApi.md#availabilityhealthretrieve) | **GET** /api/availability/health/ | Health check sistema disponibilità
[**availabilityHourlyCreate**](AvailabilityApi.md#availabilityhourlycreate) | **POST** /api/availability/hourly/ | Trova disponibilità orarie operatore per singolo giorno
[**availabilityHourlyDualOperatorsCreate**](AvailabilityApi.md#availabilityhourlydualoperatorscreate) | **POST** /api/availability/hourly/dual-operators/ | Trova disponibilità orarie per DUE OPERATORI DIVERSI
[**availabilityValidateCreate**](AvailabilityApi.md#availabilityvalidatecreate) | **POST** /api/availability/validate/ | Validazione richiesta disponibilità


# **availabilityBatchCreate**
> BatchResponse availabilityBatchCreate(batchRequest)

Trova disponibilità per multipli operatori ULTRA-VELOCE

Ricerca batch ULTRA-OTTIMIZZATA della prima disponibilità per più operatori contemporaneamente (<20ms per 5 operatori)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final BatchRequest batchRequest = ; // BatchRequest | 

try {
    final response = api.availabilityBatchCreate(batchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBatchCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequest** | [**BatchRequest**](BatchRequest.md)|  | 

### Return type

[**BatchResponse**](BatchResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingCreateCreate**
> BookingCreateResponse availabilityBookingCreateCreate(object, bookingCreateRequest)

Crea nuovo booking con slots

Crea un nuovo booking completo con tutti i relativi booking slots secondo la logica di business

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final BookingCreateRequest bookingCreateRequest = ; // BookingCreateRequest | 

try {
    final response = api.availabilityBookingCreateCreate(object, bookingCreateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingCreateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **bookingCreateRequest** | [**BookingCreateRequest**](BookingCreateRequest.md)|  | 

### Return type

[**BookingCreateResponse**](BookingCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingDeleteDestroy**
> BookingDeleteResponse availabilityBookingDeleteDestroy(bookingId, object)

Cancella booking esistente

Cancella un booking esistente mettendolo in stato cancelled e eliminando tutti i booking slots associati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final int bookingId = 56; // int | ID del booking da cancellare
final String object = object_example; // String | oggetto della richiesta

try {
    final response = api.availabilityBookingDeleteDestroy(bookingId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingDeleteDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookingId** | **int**| ID del booking da cancellare | 
 **object** | **String**| oggetto della richiesta | 

### Return type

[**BookingDeleteResponse**](BookingDeleteResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingListRetrieve**
> BookingListResponse availabilityBookingListRetrieve(object)

Lista appuntamenti utente

Ottiene la lista degli appuntamenti dell'utente autenticato dalla data odierna in poi, ordinati per data e ora

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta

try {
    final response = api.availabilityBookingListRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingListRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 

### Return type

[**BookingListResponse**](BookingListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingMissedCreate**
> BookingMarkAsMissedResponse availabilityBookingMissedCreate(object, bookingMarkAsMissedRequest)

Segna booking come saltato/cancellato

Segna un booking come no_show o cancelled, libera gli slot e aggiorna i revenue snapshots

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final BookingMarkAsMissedRequest bookingMarkAsMissedRequest = ; // BookingMarkAsMissedRequest | 

try {
    final response = api.availabilityBookingMissedCreate(object, bookingMarkAsMissedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingMissedCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **bookingMarkAsMissedRequest** | [**BookingMarkAsMissedRequest**](BookingMarkAsMissedRequest.md)|  | 

### Return type

[**BookingMarkAsMissedResponse**](BookingMarkAsMissedResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingPayCreate**
> BookingMarkAsPaidResponse availabilityBookingPayCreate(object, bookingMarkAsPaidRequest)

Segna booking come pagato

Segna un booking come pagato, registra il metodo di pagamento e crea le movimentazioni di magazzino per i prodotti venduti

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final BookingMarkAsPaidRequest bookingMarkAsPaidRequest = ; // BookingMarkAsPaidRequest | 

try {
    final response = api.availabilityBookingPayCreate(object, bookingMarkAsPaidRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingPayCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **bookingMarkAsPaidRequest** | [**BookingMarkAsPaidRequest**](BookingMarkAsPaidRequest.md)|  | 

### Return type

[**BookingMarkAsPaidResponse**](BookingMarkAsPaidResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityBookingTodayRetrieve**
> TodayBookingsResponse availabilityBookingTodayRetrieve(object, operatorIds)

Booking di oggi con vendite prodotti

Recupera tutti i booking di oggi per gli operatori specificati, includendo vendite prodotti. Query ottimizzata senza N+1.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final String operatorIds = operatorIds_example; // String | Array di IDs operatori separati da virgola (es: 1,2,3)

try {
    final response = api.availabilityBookingTodayRetrieve(object, operatorIds);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityBookingTodayRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **operatorIds** | **String**| Array di IDs operatori separati da virgola (es: 1,2,3) | 

### Return type

[**TodayBookingsResponse**](TodayBookingsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityDailyCreate**
> DailyAvailabilityResponse availabilityDailyCreate(object, availabilityRequest)

Trova disponibilità giornaliera operatore

Ricerca la disponibilità giornaliera di un operatore per uno o più servizi con algoritmo ultra-veloce (<30ms per 60 giorni). Limite massimo: 60 giorni.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final AvailabilityRequest availabilityRequest = ; // AvailabilityRequest | 

try {
    final response = api.availabilityDailyCreate(object, availabilityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityDailyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **availabilityRequest** | [**AvailabilityRequest**](AvailabilityRequest.md)|  | 

### Return type

[**DailyAvailabilityResponse**](DailyAvailabilityResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityFirstCreate**
> AvailabilityResponse availabilityFirstCreate(object, availabilityRequest)

Trova prima disponibilità operatore

Ricerca la prima disponibilità di un operatore per uno o più servizi con algoritmo ultra-veloce (<20ms)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final AvailabilityRequest availabilityRequest = ; // AvailabilityRequest | 

try {
    final response = api.availabilityFirstCreate(object, availabilityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityFirstCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **availabilityRequest** | [**AvailabilityRequest**](AvailabilityRequest.md)|  | 

### Return type

[**AvailabilityResponse**](AvailabilityResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityHealthRetrieve**
> HealthResponse availabilityHealthRetrieve()

Health check sistema disponibilità

Verifica lo stato del sistema di disponibilità e restituisce informazioni sui componenti

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();

try {
    final response = api.availabilityHealthRetrieve();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityHealthRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthResponse**](HealthResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityHourlyCreate**
> HourlyAvailabilityResponse availabilityHourlyCreate(object, hourlyAvailabilityRequest)

Trova disponibilità orarie operatore per singolo giorno

Ricerca tutti gli slot orari disponibili di un operatore per un singolo giorno con algoritmo ultra-veloce (<50ms). Deve contenere esattamente 1 giorno nei workingDays.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final HourlyAvailabilityRequest hourlyAvailabilityRequest = ; // HourlyAvailabilityRequest | 

try {
    final response = api.availabilityHourlyCreate(object, hourlyAvailabilityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityHourlyCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **hourlyAvailabilityRequest** | [**HourlyAvailabilityRequest**](HourlyAvailabilityRequest.md)|  | 

### Return type

[**HourlyAvailabilityResponse**](HourlyAvailabilityResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityHourlyDualOperatorsCreate**
> DualOperatorsHourlyAvailabilityResponse availabilityHourlyDualOperatorsCreate(object, dualOperatorsHourlyAvailabilityRequest)

Trova disponibilità orarie per DUE OPERATORI DIVERSI

Ricerca tutte le combinazioni di slot orari disponibili dove ENTRAMBI gli operatori (primario e addizionale) sono liberi per servizi consecutivi. Servizio addizionale inizia esattamente quando finisce servizio primario. NO controllo gap tra booking esistenti.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final String object = object_example; // String | oggetto della richiesta
final DualOperatorsHourlyAvailabilityRequest dualOperatorsHourlyAvailabilityRequest = ; // DualOperatorsHourlyAvailabilityRequest | 

try {
    final response = api.availabilityHourlyDualOperatorsCreate(object, dualOperatorsHourlyAvailabilityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityHourlyDualOperatorsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| oggetto della richiesta | 
 **dualOperatorsHourlyAvailabilityRequest** | [**DualOperatorsHourlyAvailabilityRequest**](DualOperatorsHourlyAvailabilityRequest.md)|  | 

### Return type

[**DualOperatorsHourlyAvailabilityResponse**](DualOperatorsHourlyAvailabilityResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **availabilityValidateCreate**
> AvailabilityValidationResponse availabilityValidateCreate(availabilityRequest)

Validazione richiesta disponibilità

Validazione veloce di una richiesta di disponibilità senza eseguire la ricerca effettiva

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAvailabilityApi();
final AvailabilityRequest availabilityRequest = ; // AvailabilityRequest | 

try {
    final response = api.availabilityValidateCreate(availabilityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AvailabilityApi->availabilityValidateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **availabilityRequest** | [**AvailabilityRequest**](AvailabilityRequest.md)|  | 

### Return type

[**AvailabilityValidationResponse**](AvailabilityValidationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

