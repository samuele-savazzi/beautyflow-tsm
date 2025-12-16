# beautyflow_api.api.TierManagementApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiTiersCreate**](TierManagementApi.md#adminapitierscreate) | **POST** /admin-api/tiers/ | 
[**adminApiTiersDestroy**](TierManagementApi.md#adminapitiersdestroy) | **DELETE** /admin-api/tiers/{tier_id}/ | 
[**adminApiTiersRetrieve**](TierManagementApi.md#adminapitiersretrieve) | **GET** /admin-api/tiers/ | 
[**adminApiTiersRetrieve2**](TierManagementApi.md#adminapitiersretrieve2) | **GET** /admin-api/tiers/{tier_id}/ | 
[**adminApiTiersUpdate**](TierManagementApi.md#adminapitiersupdate) | **PUT** /admin-api/tiers/{tier_id}/ | 


# **adminApiTiersCreate**
> TierResponse adminApiTiersCreate(createTierRequest)



     **Crea nuovo Tier** (solo per role='admin').      ### Operazioni eseguite:     1. Validazione codice univoco     2. Creazione Tier con pricing, limits, features     3. Gestione dipendenze tier (requires_tiers, conflicts_with)     4. Audit log      ### Dipendenze:     - `requires_tiers`: IDs dei tier che devono essere attivi prima di attivare questo     - `conflicts_with`: IDs dei tier che non possono essere attivi insieme a questo      ### Pricing:     - `billing_type`: one_time (acquisto unico), monthly (€/mese), yearly (€/anno)     - `setup_fee`: Costo iniziale una tantum      ### Usage Limits:     - Se `has_usage_limit=True`, specificare `usage_limit` e `usage_unit`     - Esempio: `usage_limit=1000`, `usage_unit='messaggi WhatsApp'`     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTierManagementApi();
final CreateTierRequest createTierRequest = ; // CreateTierRequest | 

try {
    final response = api.adminApiTiersCreate(createTierRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TierManagementApi->adminApiTiersCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createTierRequest** | [**CreateTierRequest**](CreateTierRequest.md)|  | 

### Return type

[**TierResponse**](TierResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTiersDestroy**
> MessageResponse adminApiTiersDestroy(tierId)



     **Soft delete Tier** (solo per role='admin').      ### Operazioni:     - Imposta `is_active=False`     - Imposta `deleted_at=now()`     - NON elimina fisicamente il record     - Crea audit log      ### Nota:     Se il tier è attivo su tenant, l'eliminazione fallirà.     Disattivare prima tutti i TenantTier associati.     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTierManagementApi();
final int tierId = 56; // int | 

try {
    final response = api.adminApiTiersDestroy(tierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TierManagementApi->adminApiTiersDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tierId** | **int**|  | 

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTiersRetrieve**
> TierListResponse adminApiTiersRetrieve(category, isActive, isPublic, page, pageSize, search)



         **Lista tutti i Tier** con paginazione e filtri (solo per role='admin').          ### Filtri disponibili:         - `is_active`: true/false (default: solo attivi)         - `is_public`: true/false (filtra tier marketplace)         - `category`: core, premium, integration, analytics, automation         - `search`: cerca in nome e codice          ### Ordinamento:         - Per category, sort_order, name         

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTierManagementApi();
final String category = category_example; // String | Filtra per categoria
final bool isActive = true; // bool | Filtra per tier attivi
final bool isPublic = true; // bool | Filtra per tier pubblici (marketplace)
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Risultati per pagina (default: 20, max: 100)
final String search = search_example; // String | Cerca per nome o codice

try {
    final response = api.adminApiTiersRetrieve(category, isActive, isPublic, page, pageSize, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TierManagementApi->adminApiTiersRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**| Filtra per categoria | [optional] 
 **isActive** | **bool**| Filtra per tier attivi | [optional] 
 **isPublic** | **bool**| Filtra per tier pubblici (marketplace) | [optional] 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Risultati per pagina (default: 20, max: 100) | [optional] 
 **search** | **String**| Cerca per nome o codice | [optional] 

### Return type

[**TierListResponse**](TierListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTiersRetrieve2**
> TierResponse adminApiTiersRetrieve2(tierId)



Dettagli completi di un Tier specifico (solo per role='admin')

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTierManagementApi();
final int tierId = 56; // int | 

try {
    final response = api.adminApiTiersRetrieve2(tierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TierManagementApi->adminApiTiersRetrieve2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tierId** | **int**|  | 

### Return type

[**TierResponse**](TierResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTiersUpdate**
> TierResponse adminApiTiersUpdate(tierId, updateTierRequest)



     **Aggiorna Tier esistente** (solo per role='admin').      ### Campi aggiornabili:     - Tutti i campi sono opzionali     - Solo i campi forniti verranno aggiornati     - `code` NON può essere modificato (univoco)      ### Audit log:     Crea automaticamente audit log con before/after changes     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTierManagementApi();
final int tierId = 56; // int | 
final UpdateTierRequest updateTierRequest = ; // UpdateTierRequest | 

try {
    final response = api.adminApiTiersUpdate(tierId, updateTierRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TierManagementApi->adminApiTiersUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tierId** | **int**|  | 
 **updateTierRequest** | [**UpdateTierRequest**](UpdateTierRequest.md)|  | [optional] 

### Return type

[**TierResponse**](TierResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

