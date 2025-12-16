# beautyflow_api.api.AuthorizationApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authorizationRetrieve**](AuthorizationApi.md#authorizationretrieve) | **GET** /api/authorization/ | Ottieni le autorizzazioni


# **authorizationRetrieve**
> authorizationRetrieve(areaId, object)

Ottieni le autorizzazioni

Ottieni le autorizzazioni

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthorizationApi();
final int areaId = 56; // int | Parametro per identificare l'area di riferimento.
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    api.authorizationRetrieve(areaId, object);
} catch on DioException (e) {
    print('Exception when calling AuthorizationApi->authorizationRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| Parametro per identificare l'area di riferimento. | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

