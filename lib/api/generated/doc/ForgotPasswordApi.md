# beautyflow_api.api.ForgotPasswordApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forgotPasswordRequestCreate**](ForgotPasswordApi.md#forgotpasswordrequestcreate) | **POST** /api/forgot-password/request/ | Richiesta reset password
[**forgotPasswordResetCreate**](ForgotPasswordApi.md#forgotpasswordresetcreate) | **POST** /api/forgot-password/reset/ | Reset password
[**forgotPasswordValidateCreate**](ForgotPasswordApi.md#forgotpasswordvalidatecreate) | **POST** /api/forgot-password/validate/ | Valida token di reset password


# **forgotPasswordRequestCreate**
> ForgotPasswordResponse forgotPasswordRequestCreate(forgotPasswordRequest)

Richiesta reset password

Invia una richiesta di reset password via email se l'email esiste nel sistema

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getForgotPasswordApi();
final ForgotPasswordRequest forgotPasswordRequest = ; // ForgotPasswordRequest | 

try {
    final response = api.forgotPasswordRequestCreate(forgotPasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ForgotPasswordApi->forgotPasswordRequestCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md)|  | 

### Return type

[**ForgotPasswordResponse**](ForgotPasswordResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPasswordResetCreate**
> ResetPasswordResponse forgotPasswordResetCreate(resetPasswordRequest)

Reset password

Completa il reset della password utilizzando il token valido

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getForgotPasswordApi();
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    final response = api.forgotPasswordResetCreate(resetPasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ForgotPasswordApi->forgotPasswordResetCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**ResetPasswordResponse**](ResetPasswordResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPasswordValidateCreate**
> ValidateTokenResponse forgotPasswordValidateCreate(validateTokenRequest)

Valida token di reset password

Verifica la validità di un token di reset password

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getForgotPasswordApi();
final ValidateTokenRequest validateTokenRequest = ; // ValidateTokenRequest | 

try {
    final response = api.forgotPasswordValidateCreate(validateTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ForgotPasswordApi->forgotPasswordValidateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateTokenRequest** | [**ValidateTokenRequest**](ValidateTokenRequest.md)|  | 

### Return type

[**ValidateTokenResponse**](ValidateTokenResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

