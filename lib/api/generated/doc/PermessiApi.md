# beautyflow_api.api.PermessiApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operatorsPermissionsAdminCreate**](PermessiApi.md#operatorspermissionsadmincreate) | **POST** /api/operators/permissions/admin/ | Approva o rifiuta una richiesta di permesso
[**operatorsPermissionsAdminList**](PermessiApi.md#operatorspermissionsadminlist) | **GET** /api/operators/permissions/admin/ | Ottieni tutte le richieste di permesso
[**operatorsPermissionsOperatorCreate**](PermessiApi.md#operatorspermissionsoperatorcreate) | **POST** /api/operators/permissions/operator/ | Crea una nuova richiesta di permesso
[**operatorsPermissionsOperatorDestroy**](PermessiApi.md#operatorspermissionsoperatordestroy) | **DELETE** /api/operators/permissions/operator/ | Elimina una richiesta di permesso
[**operatorsPermissionsOperatorList**](PermessiApi.md#operatorspermissionsoperatorlist) | **GET** /api/operators/permissions/operator/ | Ottieni le proprie richieste di permesso


# **operatorsPermissionsAdminCreate**
> PermissionRequestActionResponse operatorsPermissionsAdminCreate(object, permissionRequestAction)

Approva o rifiuta una richiesta di permesso

Permette all'amministratore di approvare o rifiutare una richiesta di permesso

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPermessiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final PermissionRequestAction permissionRequestAction = ; // PermissionRequestAction | 

try {
    final response = api.operatorsPermissionsAdminCreate(object, permissionRequestAction);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PermessiApi->operatorsPermissionsAdminCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **permissionRequestAction** | [**PermissionRequestAction**](PermissionRequestAction.md)|  | 

### Return type

[**PermissionRequestActionResponse**](PermissionRequestActionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsPermissionsAdminList**
> BuiltList<PermissionRequestList> operatorsPermissionsAdminList(areaId, object, status)

Ottieni tutte le richieste di permesso

Recupera l'elenco di tutte le richieste di permesso per un'area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPermessiApi();
final int areaId = 56; // int | ID dell'area per cui recuperare le richieste
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String status = status_example; // String | Filtra per stato (pending, approved, rejected)

try {
    final response = api.operatorsPermissionsAdminList(areaId, object, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PermessiApi->operatorsPermissionsAdminList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare le richieste | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **status** | **String**| Filtra per stato (pending, approved, rejected) | [optional] 

### Return type

[**BuiltList&lt;PermissionRequestList&gt;**](PermissionRequestList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsPermissionsOperatorCreate**
> PermissionRequestCreated operatorsPermissionsOperatorCreate(object, permissionRequestCreate)

Crea una nuova richiesta di permesso

Consente all'operatore di creare una nuova richiesta di permesso

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPermessiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final PermissionRequestCreate permissionRequestCreate = ; // PermissionRequestCreate | 

try {
    final response = api.operatorsPermissionsOperatorCreate(object, permissionRequestCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PermessiApi->operatorsPermissionsOperatorCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **permissionRequestCreate** | [**PermissionRequestCreate**](PermissionRequestCreate.md)|  | 

### Return type

[**PermissionRequestCreated**](PermissionRequestCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsPermissionsOperatorDestroy**
> operatorsPermissionsOperatorDestroy(id, object)

Elimina una richiesta di permesso

Consente all'operatore di eliminare una propria richiesta di permesso

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPermessiApi();
final int id = 56; // int | ID della richiesta da eliminare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.operatorsPermissionsOperatorDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling PermessiApi->operatorsPermissionsOperatorDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della richiesta da eliminare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsPermissionsOperatorList**
> BuiltList<OperatorPermissionRequestList> operatorsPermissionsOperatorList(object, status)

Ottieni le proprie richieste di permesso

Recupera l'elenco delle richieste di permesso dell'operatore corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPermessiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String status = status_example; // String | Filtra per stato (pending, approved, rejected)

try {
    final response = api.operatorsPermissionsOperatorList(object, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PermessiApi->operatorsPermissionsOperatorList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **status** | **String**| Filtra per stato (pending, approved, rejected) | [optional] 

### Return type

[**BuiltList&lt;OperatorPermissionRequestList&gt;**](OperatorPermissionRequestList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

