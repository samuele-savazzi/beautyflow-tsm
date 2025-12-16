# beautyflow_api.api.AuthApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiAuthChangePasswordCreate**](AuthApi.md#adminapiauthchangepasswordcreate) | **POST** /admin-api/auth/change-password/ | 
[**adminApiAuthProfileRetrieve**](AuthApi.md#adminapiauthprofileretrieve) | **GET** /admin-api/auth/profile/ | 
[**authMobileLoginCreate**](AuthApi.md#authmobilelogincreate) | **POST** /api/auth/mobile-login/ | 


# **adminApiAuthChangePasswordCreate**
> ChangePasswordResponse adminApiAuthChangePasswordCreate(changePasswordRequest)



     **Cambio password per TenantAdmin autenticato.**      ### Validazioni:     - Password attuale corretta     - Nuova password ≥ 8 caratteri     - Nuova password contiene almeno 1 numero e 1 lettera     - Conferma password match      ### Comportamento:     - Se `must_change_password=True` (primo login), viene impostato a `False`     - Invia email notifica cambio password     - Crea audit log      ### Use Case:     1. **Primo login**: Cambio password obbligatorio (must_change_password=True)     2. **Cambio volontario**: Admin vuole cambiare password      ### Note:     - NON invalida i token JWT esistenti (usare logout esplicito se necessario)     - Password storicizzata nell'user Django     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthApi();
final ChangePasswordRequest changePasswordRequest = ; // ChangePasswordRequest | 

try {
    final response = api.adminApiAuthChangePasswordCreate(changePasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->adminApiAuthChangePasswordCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

### Return type

[**ChangePasswordResponse**](ChangePasswordResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAuthProfileRetrieve**
> ProfileResponse adminApiAuthProfileRetrieve()



     **Ottieni profilo TenantAdmin autenticato.**      ### Response Include:     - Dettagli completi TenantAdmin     - `requires_password_change`: True se must_change_password=True     - `requires_2fa_setup`: True se totp_enabled=False     - `session_info`: IP, user-agent, etc.      ### Use Case:     Dopo login/2FA, frontend può controllare se:     1. Deve cambiare password (primo login)     2. Deve configurare 2FA      E mostrare UI appropriata.     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthApi();

try {
    final response = api.adminApiAuthProfileRetrieve();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->adminApiAuthProfileRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ProfileResponse**](ProfileResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authMobileLoginCreate**
> MobileLoginResponse authMobileLoginCreate(mobileLoginRequest)



Login normale mobile con controllo dispositivo fidato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAuthApi();
final MobileLoginRequest mobileLoginRequest = ; // MobileLoginRequest | 

try {
    final response = api.authMobileLoginCreate(mobileLoginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authMobileLoginCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mobileLoginRequest** | [**MobileLoginRequest**](MobileLoginRequest.md)|  | 

### Return type

[**MobileLoginResponse**](MobileLoginResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

