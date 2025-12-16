# beautyflow_api.api.FerieApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**operatorsLeavesAdminCreate**](FerieApi.md#operatorsleavesadmincreate) | **POST** /api/operators/leaves/admin/ | Approva o rifiuta una richiesta di ferie
[**operatorsLeavesAdminList**](FerieApi.md#operatorsleavesadminlist) | **GET** /api/operators/leaves/admin/ | Ottieni tutte le richieste di ferie
[**operatorsLeavesOperatorCreate**](FerieApi.md#operatorsleavesoperatorcreate) | **POST** /api/operators/leaves/operator/ | Crea una nuova richiesta di ferie
[**operatorsLeavesOperatorDestroy**](FerieApi.md#operatorsleavesoperatordestroy) | **DELETE** /api/operators/leaves/operator/ | Elimina o annulla una richiesta di ferie
[**operatorsLeavesOperatorList**](FerieApi.md#operatorsleavesoperatorlist) | **GET** /api/operators/leaves/operator/ | Ottieni le proprie richieste di ferie


# **operatorsLeavesAdminCreate**
> LeaveRequestActionResponse operatorsLeavesAdminCreate(object, leaveRequestAction)

Approva o rifiuta una richiesta di ferie

Permette all'amministratore di approvare o rifiutare una richiesta di ferie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFerieApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final LeaveRequestAction leaveRequestAction = ; // LeaveRequestAction | 

try {
    final response = api.operatorsLeavesAdminCreate(object, leaveRequestAction);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FerieApi->operatorsLeavesAdminCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **leaveRequestAction** | [**LeaveRequestAction**](LeaveRequestAction.md)|  | 

### Return type

[**LeaveRequestActionResponse**](LeaveRequestActionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsLeavesAdminList**
> BuiltList<LeaveRequestList> operatorsLeavesAdminList(areaId, object, status)

Ottieni tutte le richieste di ferie

Recupera l'elenco di tutte le richieste di ferie per un'area

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFerieApi();
final int areaId = 56; // int | ID dell'area per cui recuperare le richieste
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String status = status_example; // String | Filtra per stato (pending, approved, rejected, cancelled)

try {
    final response = api.operatorsLeavesAdminList(areaId, object, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FerieApi->operatorsLeavesAdminList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui recuperare le richieste | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **status** | **String**| Filtra per stato (pending, approved, rejected, cancelled) | [optional] 

### Return type

[**BuiltList&lt;LeaveRequestList&gt;**](LeaveRequestList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsLeavesOperatorCreate**
> LeaveRequestCreated operatorsLeavesOperatorCreate(object, leaveRequestCreate)

Crea una nuova richiesta di ferie

Consente all'operatore di creare una nuova richiesta di ferie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFerieApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final LeaveRequestCreate leaveRequestCreate = ; // LeaveRequestCreate | 

try {
    final response = api.operatorsLeavesOperatorCreate(object, leaveRequestCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FerieApi->operatorsLeavesOperatorCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **leaveRequestCreate** | [**LeaveRequestCreate**](LeaveRequestCreate.md)|  | 

### Return type

[**LeaveRequestCreated**](LeaveRequestCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsLeavesOperatorDestroy**
> operatorsLeavesOperatorDestroy(id, object, action)

Elimina o annulla una richiesta di ferie

Consente all'operatore di eliminare o annullare una propria richiesta di ferie

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFerieApi();
final int id = 56; // int | ID della richiesta da eliminare o annullare
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String action = action_example; // String | Azione da eseguire: \"delete\" per eliminare, \"cancel\" per annullare (default: delete)

try {
    api.operatorsLeavesOperatorDestroy(id, object, action);
} catch on DioException (e) {
    print('Exception when calling FerieApi->operatorsLeavesOperatorDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID della richiesta da eliminare o annullare | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **action** | **String**| Azione da eseguire: \"delete\" per eliminare, \"cancel\" per annullare (default: delete) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **operatorsLeavesOperatorList**
> BuiltList<OperatorLeaveRequestList> operatorsLeavesOperatorList(object, status)

Ottieni le proprie richieste di ferie

Recupera l'elenco delle richieste di ferie dell'operatore corrente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getFerieApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final String status = status_example; // String | Filtra per stato (pending, approved, rejected, cancelled)

try {
    final response = api.operatorsLeavesOperatorList(object, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FerieApi->operatorsLeavesOperatorList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **status** | **String**| Filtra per stato (pending, approved, rejected, cancelled) | [optional] 

### Return type

[**BuiltList&lt;OperatorLeaveRequestList&gt;**](OperatorLeaveRequestList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

