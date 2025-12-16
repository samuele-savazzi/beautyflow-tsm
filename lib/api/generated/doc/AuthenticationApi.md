# beautyflow_api.api.AuthenticationApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiAuthDisable2faCreate**](AuthenticationApi.md#adminapiauthdisable2facreate) | **POST** /admin-api/auth/disable-2fa/ | Disabilita 2FA
[**adminApiAuthLoginCreate**](AuthenticationApi.md#adminapiauthlogincreate) | **POST** /admin-api/auth/login/ | Login TenantAdmin
[**adminApiAuthRefreshCreate**](AuthenticationApi.md#adminapiauthrefreshcreate) | **POST** /admin-api/auth/refresh/ | Refresh JWT token
[**adminApiAuthRegenerateBackupCodesCreate**](AuthenticationApi.md#adminapiauthregeneratebackupcodescreate) | **POST** /admin-api/auth/regenerate-backup-codes/ | Rigenera backup codes
[**adminApiAuthSetup2faCreate**](AuthenticationApi.md#adminapiauthsetup2facreate) | **POST** /admin-api/auth/setup-2fa/ | Setup 2FA
[**adminApiAuthVerify2faLoginCreate**](AuthenticationApi.md#adminapiauthverify2falogincreate) | **POST** /admin-api/auth/verify-2fa-login/ | Verifica 2FA dopo login
[**adminApiAuthVerify2faSetupCreate**](AuthenticationApi.md#adminapiauthverify2fasetupcreate) | **POST** /admin-api/auth/verify-2fa-setup/ | Verifica e attiva 2FA


# **adminApiAuthDisable2faCreate**
> MessageResponse adminApiAuthDisable2faCreate(disable2FARequest)

Disabilita 2FA

Disabilita 2FA (richiede password per sicurezza).

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final Disable2FARequest disable2FARequest = ; // Disable2FARequest | 

try {
    final response = api.adminApiAuthDisable2faCreate(disable2FARequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthDisable2faCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disable2FARequest** | [**Disable2FARequest**](Disable2FARequest.md)|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthLoginCreate**
> LoginResponse adminApiAuthLoginCreate(loginRequest)

Login TenantAdmin

 Login FASE 1 per TenantAdmin.  - **Se 2FA disabilitato**: ritorna JWT completo (access + refresh) - **Se 2FA abilitato**: ritorna JWT temporaneo per chiamare verify-2fa-login         

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.adminApiAuthLoginCreate(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthLoginCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthRefreshCreate**
> RefreshTokenResponse adminApiAuthRefreshCreate(refreshTokenRequest)

Refresh JWT token

 Rinnova access token usando refresh token.  Con **ROTATE_REFRESH_TOKENS=True**, ritorna **NUOVO** refresh token. Il vecchio refresh token viene **blacklistato**.  Mantiene i custom claims (2fa_verified, admin_id, admin_role, email).     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final RefreshTokenRequest refreshTokenRequest = ; // RefreshTokenRequest | 

try {
    final response = api.adminApiAuthRefreshCreate(refreshTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthRefreshCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md)|  | 

### Return type

[**RefreshTokenResponse**](RefreshTokenResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthRegenerateBackupCodesCreate**
> RegenerateBackupCodesResponse adminApiAuthRegenerateBackupCodesCreate(regenerateBackupCodesRequest)

Rigenera backup codes

Rigenera backup codes (invalida i precedenti). Richiede codice TOTP corrente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final RegenerateBackupCodesRequest regenerateBackupCodesRequest = ; // RegenerateBackupCodesRequest | 

try {
    final response = api.adminApiAuthRegenerateBackupCodesCreate(regenerateBackupCodesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthRegenerateBackupCodesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **regenerateBackupCodesRequest** | [**RegenerateBackupCodesRequest**](RegenerateBackupCodesRequest.md)|  | 

### Return type

[**RegenerateBackupCodesResponse**](RegenerateBackupCodesResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthSetup2faCreate**
> Setup2FAResponse adminApiAuthSetup2faCreate()

Setup 2FA

Genera QR code per setup TOTP (Google Authenticator). Richiede autenticazione JWT.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();

try {
    final response = api.adminApiAuthSetup2faCreate();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthSetup2faCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Setup2FAResponse**](Setup2FAResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthVerify2faLoginCreate**
> Verify2FALoginResponse adminApiAuthVerify2faLoginCreate(verify2FACodeRequest)

Verifica 2FA dopo login

 Login FASE 2: Verifica codice 2FA e ritorna JWT completo.  Invia il **temporary_token** ricevuto da `/login/` nell'header Authorization. Fornisci **code** (TOTP) oppure **backup_code**.     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final Verify2FACodeRequest verify2FACodeRequest = ; // Verify2FACodeRequest | 

try {
    final response = api.adminApiAuthVerify2faLoginCreate(verify2FACodeRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthVerify2faLoginCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify2FACodeRequest** | [**Verify2FACodeRequest**](Verify2FACodeRequest.md)|  | [optional] 

### Return type

[**Verify2FALoginResponse**](Verify2FALoginResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthVerify2faSetupCreate**
> Verify2FASetupResponse adminApiAuthVerify2faSetupCreate(verify2FASetupRequest)

Verifica e attiva 2FA

Verifica codice TOTP e attiva 2FA. Genera 8 backup codes.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthenticationApi();
final Verify2FASetupRequest verify2FASetupRequest = ; // Verify2FASetupRequest | 

try {
    final response = api.adminApiAuthVerify2faSetupCreate(verify2FASetupRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->adminApiAuthVerify2faSetupCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify2FASetupRequest** | [**Verify2FASetupRequest**](Verify2FASetupRequest.md)|  | 

### Return type

[**Verify2FASetupResponse**](Verify2FASetupResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

