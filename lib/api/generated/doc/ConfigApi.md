# beautyflow_api.api.ConfigApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configSetThemeThemeUpdate**](ConfigApi.md#configsetthemethemeupdate) | **PUT** /api/config/set/theme/theme | Modifica il tema e i loghi del tenant
[**configTenantList**](ConfigApi.md#configtenantlist) | **GET** /api/config/tenant/ | Ottieni la configurazione del tenant
[**configTenantManifestJsonRetrieve**](ConfigApi.md#configtenantmanifestjsonretrieve) | **GET** /api/config/tenant/manifest.json | Ottieni il manigest del tenant
[**configTenantThemeList**](ConfigApi.md#configtenantthemelist) | **GET** /api/config/tenant/theme/ | Ottieni il tema e il logo del tenant


# **configSetThemeThemeUpdate**
> ConfigSetThemeThemeUpdate200Response configSetThemeThemeUpdate(object, tenantThemeUpdate)

Modifica il tema e i loghi del tenant

Aggiorna il tema, il logo e il logo dark del tenant. I loghi devono essere in formato JPG, PNG o JPEG.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConfigApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final TenantThemeUpdate tenantThemeUpdate = ; // TenantThemeUpdate | 

try {
    final response = api.configSetThemeThemeUpdate(object, tenantThemeUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->configSetThemeThemeUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **tenantThemeUpdate** | [**TenantThemeUpdate**](TenantThemeUpdate.md)|  | [optional] 

### Return type

[**ConfigSetThemeThemeUpdate200Response**](ConfigSetThemeThemeUpdate200Response.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configTenantList**
> BuiltList<ThemeConfig> configTenantList()

Ottieni la configurazione del tenant

Ottieni la configurazione del tenant

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConfigApi();

try {
    final response = api.configTenantList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->configTenantList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ThemeConfig&gt;**](ThemeConfig.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configTenantManifestJsonRetrieve**
> configTenantManifestJsonRetrieve()

Ottieni il manigest del tenant

Ottieni il mannifest del tenant

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConfigApi();

try {
    api.configTenantManifestJsonRetrieve();
} catch on DioException (e) {
    print('Exception when calling ConfigApi->configTenantManifestJsonRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configTenantThemeList**
> BuiltList<ThemeConfig> configTenantThemeList()

Ottieni il tema e il logo del tenant

Ottieni il tema e il logo del tenant

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConfigApi();

try {
    final response = api.configTenantThemeList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->configTenantThemeList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;ThemeConfig&gt;**](ThemeConfig.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

