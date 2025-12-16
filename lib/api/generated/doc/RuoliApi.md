# beautyflow_api.api.RuoliApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rolesList**](RuoliApi.md#roleslist) | **GET** /api/roles/ | Ottieni tutti i ruoli


# **rolesList**
> BuiltList<RoleList> rolesList(object)

Ottieni tutti i ruoli

Recupera l'elenco di tutti i ruoli disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getRuoliApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.rolesList(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RuoliApi->rolesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**BuiltList&lt;RoleList&gt;**](RoleList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

