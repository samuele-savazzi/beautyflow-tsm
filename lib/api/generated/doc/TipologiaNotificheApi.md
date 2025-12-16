# beautyflow_api.api.TipologiaNotificheApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsTypeList**](TipologiaNotificheApi.md#notificationstypelist) | **GET** /api/notifications/type/ | Ottieni tipologie di notifica
[**notificationsTypeUpdate**](TipologiaNotificheApi.md#notificationstypeupdate) | **PUT** /api/notifications/type/ | Aggiorna tipologie di notifica


# **notificationsTypeList**
> BuiltList<NotificationType> notificationsTypeList(object)

Ottieni tipologie di notifica

Recupera l'elenco di tutte le tipologie di notifica disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTipologiaNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.notificationsTypeList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TipologiaNotificheApi->notificationsTypeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;NotificationType&gt;**](NotificationType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsTypeUpdate**
> BuiltList<NotificationType> notificationsTypeUpdate(object, notificationTypeUpdateItem)

Aggiorna tipologie di notifica

Aggiorna il tempo di vita, il colore e il flag per mostrare come popup di più tipologie di notifica

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTipologiaNotificheApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final BuiltList<NotificationTypeUpdateItem> notificationTypeUpdateItem = ; // BuiltList<NotificationTypeUpdateItem> | 

try {
    final response = api.notificationsTypeUpdate(object, notificationTypeUpdateItem);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TipologiaNotificheApi->notificationsTypeUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **notificationTypeUpdateItem** | [**BuiltList&lt;NotificationTypeUpdateItem&gt;**](NotificationTypeUpdateItem.md)|  | 

### Return type

[**BuiltList&lt;NotificationType&gt;**](NotificationType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

