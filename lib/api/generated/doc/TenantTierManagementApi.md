# beautyflow_api.api.TenantTierManagementApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiTenantsTiersActivateCreate**](TenantTierManagementApi.md#adminapitenantstiersactivatecreate) | **POST** /admin-api/tenants/{tenant_id}/tiers/activate/ | 
[**adminApiTenantsTiersDeactivateCreate**](TenantTierManagementApi.md#adminapitenantstiersdeactivatecreate) | **POST** /admin-api/tenants/{tenant_id}/tiers/{tier_id}/deactivate/ | 
[**adminApiTenantsTiersIncrementUsageCreate**](TenantTierManagementApi.md#adminapitenantstiersincrementusagecreate) | **POST** /admin-api/tenants/{tenant_id}/tiers/{tier_id}/increment-usage/ | 
[**adminApiTenantsTiersList**](TenantTierManagementApi.md#adminapitenantstierslist) | **GET** /admin-api/tenants/{tenant_id}/tiers/ | 
[**adminApiTenantsTiersResetUsageCreate**](TenantTierManagementApi.md#adminapitenantstiersresetusagecreate) | **POST** /admin-api/tenants/{tenant_id}/tiers/{tier_id}/reset-usage/ | 


# **adminApiTenantsTiersActivateCreate**
> TenantTierDetail adminApiTenantsTiersActivateCreate(tenantId, activateTierRequest)



     **Attiva Tier per un tenant** (solo per role='admin').      ### Operazioni:     1. Verifica che tier esista e sia attivo     2. Verifica dipendenze (requires_tiers)     3. Verifica conflitti (conflicts_with)     4. Crea TenantTier con billing info     5. Se is_trial=True, calcola trial_ends_at     6. Crea audit log      ### Validazioni:     - Tier deve essere `is_active=True`     - Se tier ha `requires_tiers`, devono essere tutti attivi per questo tenant     - Se tier ha `conflicts_with`, nessuno deve essere attivo per questo tenant      ### Trial:     Se `is_trial=True`:     - `trial_ends_at` = now + tier.trial_days     - `expires_at` = trial_ends_at     - Nessun costo     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantTierManagementApi();
final int tenantId = 56; // int | 
final ActivateTierRequest activateTierRequest = ; // ActivateTierRequest | 

try {
    final response = api.adminApiTenantsTiersActivateCreate(tenantId, activateTierRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantTierManagementApi->adminApiTenantsTiersActivateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 
 **activateTierRequest** | [**ActivateTierRequest**](ActivateTierRequest.md)|  | 

### Return type

[**TenantTierDetail**](TenantTierDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsTiersDeactivateCreate**
> MessageResponse adminApiTenantsTiersDeactivateCreate(tenantId, tierId)



     **Disattiva Tier per un tenant** (solo per role='admin').      ### Operazioni:     1. Imposta `is_active=False`     2. Imposta `cancelled_at=now()`     3. Crea audit log      ### Nota:     Il tier rimane nel database per storico, ma non è più utilizzabile dal tenant.     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantTierManagementApi();
final int tenantId = 56; // int | 
final int tierId = 56; // int | 

try {
    final response = api.adminApiTenantsTiersDeactivateCreate(tenantId, tierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantTierManagementApi->adminApiTenantsTiersDeactivateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 
 **tierId** | **int**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsTiersIncrementUsageCreate**
> MessageResponse adminApiTenantsTiersIncrementUsageCreate(tenantId, tierId)



     **Incrementa usage count per tier con limite** (solo per role='admin').      ### Operazioni:     - Incrementa `usage_count` di 1     - Verifica se raggiunto il limite (`usage_count >= usage_limit`)     - Ritorna messaggio con usage status      ### Uso:     Da chiamare quando il tenant utilizza una funzionalità limitata     (es. invia un messaggio WhatsApp, genera un PDF, ecc.)     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantTierManagementApi();
final int tenantId = 56; // int | 
final int tierId = 56; // int | 

try {
    final response = api.adminApiTenantsTiersIncrementUsageCreate(tenantId, tierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantTierManagementApi->adminApiTenantsTiersIncrementUsageCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 
 **tierId** | **int**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsTiersList**
> BuiltList<TenantTierDetail> adminApiTenantsTiersList(tenantId, isActive, isTrial)



Lista tier attivi per un tenant specifico (solo per role='admin')

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantTierManagementApi();
final int tenantId = 56; // int | 
final bool isActive = true; // bool | Filtra per tier attivi
final bool isTrial = true; // bool | Filtra per tier in trial

try {
    final response = api.adminApiTenantsTiersList(tenantId, isActive, isTrial);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantTierManagementApi->adminApiTenantsTiersList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 
 **isActive** | **bool**| Filtra per tier attivi | [optional] 
 **isTrial** | **bool**| Filtra per tier in trial | [optional] 

### Return type

[**BuiltList&lt;TenantTierDetail&gt;**](TenantTierDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsTiersResetUsageCreate**
> MessageResponse adminApiTenantsTiersResetUsageCreate(tenantId, tierId)



     **Reset usage count per tier** (solo per role='admin').      ### Operazioni:     - Imposta `usage_count=0`     - Aggiorna `usage_reset_date=now()`      ### Uso:     Da chiamare all'inizio di un nuovo periodo billing     (es. inizio mese per tier mensili)     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantTierManagementApi();
final int tenantId = 56; // int | 
final int tierId = 56; // int | 

try {
    final response = api.adminApiTenantsTiersResetUsageCreate(tenantId, tierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantTierManagementApi->adminApiTenantsTiersResetUsageCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 
 **tierId** | **int**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

