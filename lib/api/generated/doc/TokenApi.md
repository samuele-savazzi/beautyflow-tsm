# beautyflow_api.api.TokenApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tokenCreate**](TokenApi.md#tokencreate) | **POST** /api/token/ | 
[**tokenRefreshCreate**](TokenApi.md#tokenrefreshcreate) | **POST** /api/token/refresh/ | 


# **tokenCreate**
> TokenObtainPair tokenCreate(tokenObtainPair)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTokenApi();
final TokenObtainPair tokenObtainPair = ; // TokenObtainPair | 

try {
    final response = api.tokenCreate(tokenObtainPair);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TokenApi->tokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenObtainPair** | [**TokenObtainPair**](TokenObtainPair.md)|  | 

### Return type

[**TokenObtainPair**](TokenObtainPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenRefreshCreate**
> TokenRefresh tokenRefreshCreate(tokenRefresh)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTokenApi();
final TokenRefresh tokenRefresh = ; // TokenRefresh | 

try {
    final response = api.tokenRefreshCreate(tokenRefresh);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TokenApi->tokenRefreshCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenRefresh** | [**TokenRefresh**](TokenRefresh.md)|  | 

### Return type

[**TokenRefresh**](TokenRefresh.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

