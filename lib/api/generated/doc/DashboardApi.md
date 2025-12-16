# beautyflow_api.api.DashboardApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dashboardAdminUserConfigCreate**](DashboardApi.md#dashboardadminuserconfigcreate) | **POST** /api/dashboard/admin-user-config/ | Crea/aggiorna configurazione utente (Admin)
[**dashboardAdminUserConfigDestroy**](DashboardApi.md#dashboardadminuserconfigdestroy) | **DELETE** /api/dashboard/admin-user-config/ | Elimina configurazione utente (Admin)
[**dashboardAdminUserConfigList**](DashboardApi.md#dashboardadminuserconfiglist) | **GET** /api/dashboard/admin-user-config/ | Ottieni configurazioni utente (Admin)
[**dashboardRetrieve**](DashboardApi.md#dashboardretrieve) | **GET** /api/dashboard/ | Ottieni dashboard utente
[**dashboardRoleConfigCreate**](DashboardApi.md#dashboardroleconfigcreate) | **POST** /api/dashboard/role-config/ | Crea configurazione ruolo
[**dashboardRoleConfigDestroy**](DashboardApi.md#dashboardroleconfigdestroy) | **DELETE** /api/dashboard/role-config/ | Elimina configurazione ruolo
[**dashboardRoleConfigList**](DashboardApi.md#dashboardroleconfiglist) | **GET** /api/dashboard/role-config/ | Ottieni configurazioni ruolo
[**dashboardRoleConfigUpdate**](DashboardApi.md#dashboardroleconfigupdate) | **PUT** /api/dashboard/role-config/ | Aggiorna configurazione ruolo
[**dashboardUserConfigCreate**](DashboardApi.md#dashboarduserconfigcreate) | **POST** /api/dashboard/user-config/ | Crea/aggiorna configurazione widget utente
[**dashboardUserConfigDestroy**](DashboardApi.md#dashboarduserconfigdestroy) | **DELETE** /api/dashboard/user-config/ | Ripristina configurazione widget
[**dashboardUserConfigList**](DashboardApi.md#dashboarduserconfiglist) | **GET** /api/dashboard/user-config/ | Ottieni configurazioni utente
[**dashboardWidgetsCreate**](DashboardApi.md#dashboardwidgetscreate) | **POST** /api/dashboard/widgets/ | Crea un nuovo widget
[**dashboardWidgetsDestroy**](DashboardApi.md#dashboardwidgetsdestroy) | **DELETE** /api/dashboard/widgets/ | Elimina un widget
[**dashboardWidgetsList**](DashboardApi.md#dashboardwidgetslist) | **GET** /api/dashboard/widgets/ | Ottieni tutti i widget disponibili
[**dashboardWidgetsUpdate**](DashboardApi.md#dashboardwidgetsupdate) | **PUT** /api/dashboard/widgets/ | Aggiorna un widget


# **dashboardAdminUserConfigCreate**
> dashboardAdminUserConfigCreate(object, adminUserDashboardConfigCreate)

Crea/aggiorna configurazione utente (Admin)

Crea o aggiorna la configurazione dashboard per un utente specifico (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final AdminUserDashboardConfigCreate adminUserDashboardConfigCreate = ; // AdminUserDashboardConfigCreate | 

try {
    api.dashboardAdminUserConfigCreate(object, adminUserDashboardConfigCreate);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardAdminUserConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **adminUserDashboardConfigCreate** | [**AdminUserDashboardConfigCreate**](AdminUserDashboardConfigCreate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardAdminUserConfigDestroy**
> dashboardAdminUserConfigDestroy(id, object)

Elimina configurazione utente (Admin)

Elimina una configurazione dashboard di un utente specifico (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID della configurazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.dashboardAdminUserConfigDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardAdminUserConfigDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della configurazione da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardAdminUserConfigList**
> BuiltList<AdminUserDashboardConfigList> dashboardAdminUserConfigList(object, userId, areaId)

Ottieni configurazioni utente (Admin)

Recupera le configurazioni dashboard di un utente specifico (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int userId = 56; // int | ID dell'utente di cui visualizzare le configurazioni
final int areaId = 56; // int | ID dell'area per filtrare le configurazioni

try {
    final response = api.dashboardAdminUserConfigList(object, userId, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardAdminUserConfigList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **userId** | **int**| ID dell'utente di cui visualizzare le configurazioni | 
 **areaId** | **int**| ID dell'area per filtrare le configurazioni | [optional] 

### Return type

[**BuiltList&lt;AdminUserDashboardConfigList&gt;**](AdminUserDashboardConfigList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardRetrieve**
> UserDashboard dashboardRetrieve(areaId, object)

Ottieni dashboard utente

Recupera la dashboard configurata per l'utente corrente in una specifica area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int areaId = 56; // int | ID dell'area per cui recuperare la dashboard
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.dashboardRetrieve(areaId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare la dashboard | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**UserDashboard**](UserDashboard.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardRoleConfigCreate**
> dashboardRoleConfigCreate(object, roleDashboardConfigCreate)

Crea configurazione ruolo

Crea una nuova configurazione dashboard per un ruolo (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final RoleDashboardConfigCreate roleDashboardConfigCreate = ; // RoleDashboardConfigCreate | 

try {
    api.dashboardRoleConfigCreate(object, roleDashboardConfigCreate);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardRoleConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **roleDashboardConfigCreate** | [**RoleDashboardConfigCreate**](RoleDashboardConfigCreate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardRoleConfigDestroy**
> dashboardRoleConfigDestroy(id, object)

Elimina configurazione ruolo

Elimina una configurazione dashboard per un ruolo (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID della configurazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.dashboardRoleConfigDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardRoleConfigDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della configurazione da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardRoleConfigList**
> BuiltList<RoleDashboardConfigList> dashboardRoleConfigList(object, areaId, roleId)

Ottieni configurazioni ruolo

Recupera tutte le configurazioni dashboard per ruoli

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int areaId = 56; // int | ID dell'area per filtrare le configurazioni
final int roleId = 56; // int | ID del ruolo per filtrare le configurazioni

try {
    final response = api.dashboardRoleConfigList(object, areaId, roleId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardRoleConfigList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| ID dell'area per filtrare le configurazioni | [optional] 
 **roleId** | **int**| ID del ruolo per filtrare le configurazioni | [optional] 

### Return type

[**BuiltList&lt;RoleDashboardConfigList&gt;**](RoleDashboardConfigList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardRoleConfigUpdate**
> dashboardRoleConfigUpdate(id, object, roleDashboardConfigUpdate)

Aggiorna configurazione ruolo

Aggiorna una configurazione dashboard per un ruolo (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID della configurazione da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final RoleDashboardConfigUpdate roleDashboardConfigUpdate = ; // RoleDashboardConfigUpdate | 

try {
    api.dashboardRoleConfigUpdate(id, object, roleDashboardConfigUpdate);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardRoleConfigUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della configurazione da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **roleDashboardConfigUpdate** | [**RoleDashboardConfigUpdate**](RoleDashboardConfigUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardUserConfigCreate**
> dashboardUserConfigCreate(object, userDashboardConfigCreateUpdate)

Crea/aggiorna configurazione widget utente

Crea o aggiorna la configurazione personalizzata di un widget per l'utente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final UserDashboardConfigCreateUpdate userDashboardConfigCreateUpdate = ; // UserDashboardConfigCreateUpdate | 

try {
    api.dashboardUserConfigCreate(object, userDashboardConfigCreateUpdate);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardUserConfigCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **userDashboardConfigCreateUpdate** | [**UserDashboardConfigCreateUpdate**](UserDashboardConfigCreateUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardUserConfigDestroy**
> dashboardUserConfigDestroy(id, object)

Ripristina configurazione widget

Rimuove la configurazione personalizzata di un widget, tornando alla configurazione di ruolo/default

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID della configurazione da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.dashboardUserConfigDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardUserConfigDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della configurazione da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardUserConfigList**
> BuiltList<UserDashboardConfigList> dashboardUserConfigList(object, areaId)

Ottieni configurazioni utente

Recupera tutte le configurazioni dashboard personalizzate dell'utente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final int areaId = 56; // int | ID dell'area per filtrare le configurazioni

try {
    final response = api.dashboardUserConfigList(object, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardUserConfigList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **areaId** | **int**| ID dell'area per filtrare le configurazioni | [optional] 

### Return type

[**BuiltList&lt;UserDashboardConfigList&gt;**](UserDashboardConfigList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardWidgetsCreate**
> DashboardWidgetCreated dashboardWidgetsCreate(object, dashboardWidgetCreate)

Crea un nuovo widget

Crea un nuovo widget per la dashboard (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DashboardWidgetCreate dashboardWidgetCreate = ; // DashboardWidgetCreate | 

try {
    final response = api.dashboardWidgetsCreate(object, dashboardWidgetCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardWidgetsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **dashboardWidgetCreate** | [**DashboardWidgetCreate**](DashboardWidgetCreate.md)|  | 

### Return type

[**DashboardWidgetCreated**](DashboardWidgetCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardWidgetsDestroy**
> dashboardWidgetsDestroy(id, object)

Elimina un widget

Elimina un widget (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID del widget da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.dashboardWidgetsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardWidgetsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del widget da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardWidgetsList**
> BuiltList<DashboardWidgetList> dashboardWidgetsList(object, category)

Ottieni tutti i widget disponibili

Recupera l'elenco di tutti i widget disponibili per la dashboard con dipendenze, esclusioni e requisiti

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String category = category_example; // String | Filtra widget per categoria

try {
    final response = api.dashboardWidgetsList(object, category);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardWidgetsList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **category** | **String**| Filtra widget per categoria | [optional] 

### Return type

[**BuiltList&lt;DashboardWidgetList&gt;**](DashboardWidgetList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardWidgetsUpdate**
> dashboardWidgetsUpdate(id, object, dashboardWidgetUpdate)

Aggiorna un widget

Aggiorna un widget esistente (Admin only)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getDashboardApi();
final int id = 56; // int | ID del widget da aggiornare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final DashboardWidgetUpdate dashboardWidgetUpdate = ; // DashboardWidgetUpdate | 

try {
    api.dashboardWidgetsUpdate(id, object, dashboardWidgetUpdate);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardWidgetsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID del widget da aggiornare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **dashboardWidgetUpdate** | [**DashboardWidgetUpdate**](DashboardWidgetUpdate.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

