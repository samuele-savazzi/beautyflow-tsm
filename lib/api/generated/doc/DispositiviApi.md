# beautyflow_api.api.DispositiviApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationsDevicesCreate**](DispositiviApi.md#notificationsdevicescreate) | **POST** /api/notifications/devices/ | Registra un token di dispositivo
[**notificationsDevicesDestroy**](DispositiviApi.md#notificationsdevicesdestroy) | **DELETE** /api/notifications/devices/ | Elimina un token di dispositivo
[**notificationsDevicesList**](DispositiviApi.md#notificationsdeviceslist) | **GET** /api/notifications/devices/ | Ottieni i token dei dispositivi
[**notificationsDevicesUpdate**](DispositiviApi.md#notificationsdevicesupdate) | **PUT** /api/notifications/devices/ | Aggiorna lo stato di un token


# **notificationsDevicesCreate**
> DeviceToken notificationsDevicesCreate(object, deviceToken)

Registra un token di dispositivo

Registra un nuovo token di dispositivo per l'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDispositiviApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DeviceToken deviceToken = ; // DeviceToken | 

try {
    final response = api.notificationsDevicesCreate(object, deviceToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DispositiviApi->notificationsDevicesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **deviceToken** | [**DeviceToken**](DeviceToken.md)|  | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDevicesDestroy**
> DeleteTokenResponse notificationsDevicesDestroy(object, id, platform, token)

Elimina un token di dispositivo

Elimina un token di dispositivo dell'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDispositiviApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int id = 56; // int | ID del token da eliminare
final String platform = platform_example; // String | Piattaforma del token da eliminare (richiesto se si usa \"token\")
final String token = token_example; // String | Valore del token da eliminare

try {
    final response = api.notificationsDevicesDestroy(object, id, platform, token);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DispositiviApi->notificationsDevicesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **id** | **int**| ID del token da eliminare | [optional] 
 **platform** | **String**| Piattaforma del token da eliminare (richiesto se si usa \"token\") | [optional] 
 **token** | **String**| Valore del token da eliminare | [optional] 

### Return type

[**DeleteTokenResponse**](DeleteTokenResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDevicesList**
> BuiltList<DeviceToken> notificationsDevicesList(object, active, platform)

Ottieni i token dei dispositivi

Recupera l'elenco dei token dei dispositivi dell'utente corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDispositiviApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra per stato (true/false)
final String platform = platform_example; // String | Filtra per piattaforma (web, android, ios)

try {
    final response = api.notificationsDevicesList(object, active, platform);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DispositiviApi->notificationsDevicesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra per stato (true/false) | [optional] 
 **platform** | **String**| Filtra per piattaforma (web, android, ios) | [optional] 

### Return type

[**BuiltList&lt;DeviceToken&gt;**](DeviceToken.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationsDevicesUpdate**
> DeviceToken notificationsDevicesUpdate(object, updateDeviceToken)

Aggiorna lo stato di un token

Aggiorna lo stato (attivo/inattivo) di un token di dispositivo

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDispositiviApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final UpdateDeviceToken updateDeviceToken = ; // UpdateDeviceToken | 

try {
    final response = api.notificationsDevicesUpdate(object, updateDeviceToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DispositiviApi->notificationsDevicesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **updateDeviceToken** | [**UpdateDeviceToken**](UpdateDeviceToken.md)|  | 

### Return type

[**DeviceToken**](DeviceToken.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

