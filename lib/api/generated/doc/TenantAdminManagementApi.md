# beautyflow_api.api.TenantAdminManagementApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiAdminsCreate**](TenantAdminManagementApi.md#adminapiadminscreate) | **POST** /admin-api/admins/ | 
[**adminApiAdminsRetrieve**](TenantAdminManagementApi.md#adminapiadminsretrieve) | **GET** /admin-api/admins/ | 
[**adminApiAdminsRetrieve2**](TenantAdminManagementApi.md#adminapiadminsretrieve2) | **GET** /admin-api/admins/{admin_id}/ | 


# **adminApiAdminsCreate**
> CreateTenantAdminResponse adminApiAdminsCreate(createTenantAdminRequest)



     **Crea un nuovo TenantAdmin** (solo per role='admin').      ### Operazioni eseguite:     1. Creazione User Django (username = email)     2. Creazione TenantAdmin con password randomica     3. Imposta `must_change_password=True` (cambio obbligatorio al primo login)     4. Imposta `totp_enabled=False` (setup 2FA obbligatorio al primo login)     5. Invia email con credenziali temporanee     6. Crea audit log      ### Password Generata:     - Lunghezza: 12 caratteri     - Contiene: maiuscole, minuscole, numeri, caratteri speciali     - Mostrata SOLO in questa response (non recuperabile dopo)      ### Email Inviata:     Contiene:     - Credenziali di accesso     - Istruzioni primo login     - Warning sicurezza     - Link accesso      ### Primo Login Flow:     1. Login con credenziali temporanee     2. Setup 2FA obbligatorio (scansione QR code)     3. Cambio password obbligatorio     4. Accesso completo      ### Audit Log:     Crea automaticamente audit log con action `create_tenant_admin`     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantAdminManagementApi();
final CreateTenantAdminRequest createTenantAdminRequest = ; // CreateTenantAdminRequest | 

try {
    final response = api.adminApiAdminsCreate(createTenantAdminRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantAdminManagementApi->adminApiAdminsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTenantAdminRequest** | [**CreateTenantAdminRequest**](CreateTenantAdminRequest.md)|  | 

### Return type

[**CreateTenantAdminResponse**](CreateTenantAdminResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAdminsRetrieve**
> TenantAdminListResponse adminApiAdminsRetrieve(isActive, page, pageSize, role, search)



Lista tutti i TenantAdmin con paginazione e filtri (solo per role='admin')

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantAdminManagementApi();
final bool isActive = true; // bool | Filtra per stato attivo
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Risultati per pagina (default: 20, max: 100)
final String role = role_example; // String | Filtra per ruolo (admin, commerciale, support)
final String search = search_example; // String | Cerca per email o nome

try {
    final response = api.adminApiAdminsRetrieve(isActive, page, pageSize, role, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantAdminManagementApi->adminApiAdminsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isActive** | **bool**| Filtra per stato attivo | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Risultati per pagina (default: 20, max: 100) | [optional] 
 **role** | **String**| Filtra per ruolo (admin, commerciale, support) | [optional] 
 **search** | **String**| Cerca per email o nome | [optional] 

### Return type

[**TenantAdminListResponse**](TenantAdminListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiAdminsRetrieve2**
> TenantAdminDetail adminApiAdminsRetrieve2(adminId)



Dettagli completi di un TenantAdmin specifico (solo per role='admin')

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantAdminManagementApi();
final int adminId = 56; // int | 

try {
    final response = api.adminApiAdminsRetrieve2(adminId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantAdminManagementApi->adminApiAdminsRetrieve2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminId** | **int**|  | 

### Return type

[**TenantAdminDetail**](TenantAdminDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

