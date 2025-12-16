# beautyflow_api.api.NotificheApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsCreate**](NotificheApi.md#notificationscreate) | **POST** /api/notifications/ | Segna notifiche come lette
[**notificationsDestroy**](NotificheApi.md#notificationsdestroy) | **DELETE** /api/notifications/ | Elimina notifiche
[**notificationsList**](NotificheApi.md#notificationslist) | **GET** /api/notifications/ | Ottieni le notifiche
[**notificationsTestCreate**](NotificheApi.md#notificationstestcreate) | **POST** /api/notifications/test/ | Invia notifiche di test
[**notificationsVapidPublicKeyRetrieve**](NotificheApi.md#notificationsvapidpublickeyretrieve) | **GET** /api/notifications/vapid-public-key/ | Ottieni la chiave pubblica VAPID


# **notificationsCreate**
> MarkNotificationsReadResponse notificationsCreate(object, markNotificationsRead)

Segna notifiche come lette

Segna come lette una o più notifiche dell'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final MarkNotificationsRead markNotificationsRead = ; // MarkNotificationsRead | 

try {
    final response = api.notificationsCreate(object, markNotificationsRead);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificheApi->notificationsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **markNotificationsRead** | [**MarkNotificationsRead**](MarkNotificationsRead.md)|  | 

### Return type

[**MarkNotificationsReadResponse**](MarkNotificationsReadResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDestroy**
> DeleteNotificationResponse notificationsDestroy(object, allRead, notificationId)

Elimina notifiche

Elimina una o più notifiche dell'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool allRead = true; // bool | Se true, elimina tutte le notifiche lette
final int notificationId = 56; // int | ID della notifica da eliminare

try {
    final response = api.notificationsDestroy(object, allRead, notificationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificheApi->notificationsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **allRead** | **bool**| Se true, elimina tutte le notifiche lette | [optional] 
 **notificationId** | **int**| ID della notifica da eliminare | [optional] 

### Return type

[**DeleteNotificationResponse**](DeleteNotificationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsList**
> BuiltList<Notification> notificationsList(object, read, type)

Ottieni le notifiche

Recupera l'elenco delle notifiche dell'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool read = true; // bool | Filtra per stato di lettura (true/false)
final String type = type_example; // String | Filtra per tipo di notifica (info, alert, promo, update)

try {
    final response = api.notificationsList(object, read, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificheApi->notificationsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **read** | **bool**| Filtra per stato di lettura (true/false) | [optional] 
 **type** | **String**| Filtra per tipo di notifica (info, alert, promo, update) | [optional] 

### Return type

[**BuiltList&lt;Notification&gt;**](Notification.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsTestCreate**
> TestNotificationResponse notificationsTestCreate(testNotificationRequest)

Invia notifiche di test

Invia notifiche di test all'utente corrente o a gruppi di utenti in base ai parametri

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getNotificheApi();
final TestNotificationRequest testNotificationRequest = ; // TestNotificationRequest | 

try {
    final response = api.notificationsTestCreate(testNotificationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificheApi->notificationsTestCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testNotificationRequest** | [**TestNotificationRequest**](TestNotificationRequest.md)|  | [optional] 

### Return type

[**TestNotificationResponse**](TestNotificationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsVapidPublicKeyRetrieve**
> VapidPublicKeyResponse notificationsVapidPublicKeyRetrieve(object)

Ottieni la chiave pubblica VAPID

Restituisce la chiave pubblica VAPID necessaria per configurare le notifiche push

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.notificationsVapidPublicKeyRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotificheApi->notificationsVapidPublicKeyRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**VapidPublicKeyResponse**](VapidPublicKeyResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

