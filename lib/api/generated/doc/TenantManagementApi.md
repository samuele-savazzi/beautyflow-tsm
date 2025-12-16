# beautyflow_api.api.TenantManagementApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adminApiTenantsCreate**](TenantManagementApi.md#adminapitenantscreate) | **POST** /admin-api/tenants/ | 
[**adminApiTenantsListRetrieve**](TenantManagementApi.md#adminapitenantslistretrieve) | **GET** /admin-api/tenants-list/ | 
[**adminApiTenantsRetrieve**](TenantManagementApi.md#adminapitenantsretrieve) | **GET** /admin-api/tenants/{tenant_id}/ | 
[**adminApiTenantsUpdateCreate**](TenantManagementApi.md#adminapitenantsupdatecreate) | **POST** /admin-api/tenants/update/ | 
[**adminApiTenantsUploadDarkLogoCreate**](TenantManagementApi.md#adminapitenantsuploaddarklogocreate) | **POST** /admin-api/tenants/upload-dark-logo/ | 
[**adminApiTenantsUploadFaviconCreate**](TenantManagementApi.md#adminapitenantsuploadfaviconcreate) | **POST** /admin-api/tenants/upload-favicon/ | 
[**adminApiTenantsUploadLogoCreate**](TenantManagementApi.md#adminapitenantsuploadlogocreate) | **POST** /admin-api/tenants/upload-logo/ | 


# **adminApiTenantsCreate**
> CreateTenantResponse adminApiTenantsCreate(name, domain, type, adminEmail, adminPhone, adminFirstName, adminLastName, quotaTypeCode, areas, registeredOffice, billingType, billingDuration, theme, favicon, logo, darkLogo)



     **Crea un nuovo tenant completo seguendo RUOTINE_CREAZIONE_TENANT.**      ### Operazioni eseguite:     1. **Creazione tenant** + schema PostgreSQL (django-tenants)     2. **Setup PUBLIC schema**: StepTemplate (8), FlowTemplate (3), TenantQuota, TenantHistoryPayments     3. **Setup TENANT schema**:        - 5 Roles (admin, Operatore, Operatore autorizzato, Titolare, Segreteria)        - Admin user con password temporanea: `ChangeMe123!` ⚠️        - N Aree + DailySchedule (7 giorni per area)        - 7 NotificationTypes        - 4 DashboardWidgets + RoleDashboardConfiguration      ### Billing Flessibile:     - **trial**: 30 giorni gratuiti     - **monthly**: 1 mese (30 giorni)     - **yearly**: 1 anno o `billing_duration` anni     - **custom**: N anni (specificare `billing_duration`)      ### Upload Immagini (opzionali):     - **favicon**: PNG, ICO, SVG (max 2MB)     - **logo**: PNG, JPG, SVG (max 5MB)     - **dark_logo**: PNG, JPG, SVG (max 5MB)      Salvate in `media/favicon/` e `media/logo/`      ### Note importanti:     - **Password admin**: `ChangeMe123!` (DEVE essere cambiata al primo login)     - **Main area**: La prima area in `areas[]` sarà marcata come `main_area=True`     - **Warnings**: Eventuali errori non-bloccanti (es. Authorization mancante) restituiti in array      ### Validazioni:     - Dominio univoco (non può esistere già)     - Almeno 1 area richiesta     - QuotaType deve esistere e essere attivo     - billing_duration obbligatorio per 'yearly' e 'custom'      ### Audit log:     Crea automaticamente audit log con action `create_tenant`     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final String name = name_example; // String | Nome tenant
final String domain = domain_example; // String | Dominio (es: cliente1)
final TypeEnum type = ; // TypeEnum | 
final String adminEmail = adminEmail_example; // String | Email utente admin
final String adminPhone = adminPhone_example; // String | Telefono admin
final String adminFirstName = adminFirstName_example; // String | 
final String adminLastName = adminLastName_example; // String | 
final String quotaTypeCode = quotaTypeCode_example; // String | Codice piano (es: FREE, BASIC, PRO)
final BuiltList<AreaConfig> areas = ; // BuiltList<AreaConfig> | Lista aree da creare
final String registeredOffice = registeredOffice_example; // String | Sede legale
final CreateTenantRequestBillingTypeEnum billingType = ; // CreateTenantRequestBillingTypeEnum | 
final int billingDuration = 56; // int | Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno
final JsonObject theme = ; // JsonObject | 
final String favicon = favicon_example; // String | File favicon (PNG, ICO, SVG) - max 2MB
final String logo = logo_example; // String | File logo (PNG, JPG, SVG) - max 5MB
final String darkLogo = darkLogo_example; // String | File dark logo (PNG, JPG, SVG) - max 5MB

try {
    final response = api.adminApiTenantsCreate(name, domain, type, adminEmail, adminPhone, adminFirstName, adminLastName, quotaTypeCode, areas, registeredOffice, billingType, billingDuration, theme, favicon, logo, darkLogo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Nome tenant | 
 **domain** | **String**| Dominio (es: cliente1) | 
 **type** | [**TypeEnum**](TypeEnum.md)|  | 
 **adminEmail** | **String**| Email utente admin | 
 **adminPhone** | **String**| Telefono admin | 
 **adminFirstName** | **String**|  | 
 **adminLastName** | **String**|  | 
 **quotaTypeCode** | **String**| Codice piano (es: FREE, BASIC, PRO) | 
 **areas** | [**BuiltList&lt;AreaConfig&gt;**](AreaConfig.md)| Lista aree da creare | 
 **registeredOffice** | **String**| Sede legale | [optional] 
 **billingType** | [**CreateTenantRequestBillingTypeEnum**](CreateTenantRequestBillingTypeEnum.md)|  | [optional] [default to trial]
 **billingDuration** | **int**| Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno | [optional] 
 **theme** | [**JsonObject**](JsonObject.md)|  | [optional] 
 **favicon** | **String**| File favicon (PNG, ICO, SVG) - max 2MB | [optional] 
 **logo** | **String**| File logo (PNG, JPG, SVG) - max 5MB | [optional] 
 **darkLogo** | **String**| File dark logo (PNG, JPG, SVG) - max 5MB | [optional] 

### Return type

[**CreateTenantResponse**](CreateTenantResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsListRetrieve**
> TenantListResponse adminApiTenantsListRetrieve(page, pageSize, search, type)



Lista tutti i tenant con paginazione e filtri opzionali

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Risultati per pagina (default: 20, max: 100)
final String search = search_example; // String | Cerca per nome (case-insensitive)
final String type = type_example; // String | Filtra per tipo (HAIRDRESSER, BARBER, BEAUTICIAN, SPA)

try {
    final response = api.adminApiTenantsListRetrieve(page, pageSize, search, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsListRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Risultati per pagina (default: 20, max: 100) | [optional] 
 **search** | **String**| Cerca per nome (case-insensitive) | [optional] 
 **type** | **String**| Filtra per tipo (HAIRDRESSER, BARBER, BEAUTICIAN, SPA) | [optional] 

### Return type

[**TenantListResponse**](TenantListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsRetrieve**
> TenantInfo adminApiTenantsRetrieve(tenantId)



Dettagli completi di un tenant specifico

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final int tenantId = 56; // int | 

try {
    final response = api.adminApiTenantsRetrieve(tenantId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | 

### Return type

[**TenantInfo**](TenantInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsUpdateCreate**
> UpdateTenantResponse adminApiTenantsUpdateCreate(updateTenantRequest)



     **Aggiorna informazioni generali del tenant.**      ### Campi modificabili:     - `tenant_id`: ID tenant da modificare (**obbligatorio**)     - `name`: Nome tenant     - `registered_office`: Sede legale     - `online_consultation`: Consultazione online abilitata     - `type`: Tipo business (HAIRDRESSER, BARBER, BEAUTICIAN, SPA)     - `theme`: JSONField tema personalizzato      ### Note:     - Almeno 1 campo (oltre tenant_id) deve essere fornito     - Per modificare favicon/logo/dark_logo usare gli endpoint dedicati `/upload-favicon/`, `/upload-logo/`, `/upload-dark-logo/`     - Crea automaticamente audit log con action `update_tenant` e tracking before/after      ### Validazioni:     - Tenant deve esistere     - tenant_id obbligatorio nel body     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final UpdateTenantRequest updateTenantRequest = ; // UpdateTenantRequest | 

try {
    final response = api.adminApiTenantsUpdateCreate(updateTenantRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsUpdateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateTenantRequest** | [**UpdateTenantRequest**](UpdateTenantRequest.md)|  | 

### Return type

[**UpdateTenantResponse**](UpdateTenantResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsUploadDarkLogoCreate**
> UploadImageResponse adminApiTenantsUploadDarkLogoCreate(tenantId, image)



     **Upload dark logo per tenant (versione per tema scuro, salvato in media/logo/).**      ### Formati supportati:     - PNG, JPG, SVG (stessi del logo normale)      ### Validazioni:     - Max size: 5MB      ### Storage:     File salvato in `media/logo/{filename}` (stesso folder di logo)     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final int tenantId = 56; // int | ID del tenant
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | File immagine dark logo (PNG, JPG, SVG)

try {
    final response = api.adminApiTenantsUploadDarkLogoCreate(tenantId, image);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsUploadDarkLogoCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**| ID del tenant | 
 **image** | **MultipartFile**| File immagine dark logo (PNG, JPG, SVG) | 

### Return type

[**UploadImageResponse**](UploadImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsUploadFaviconCreate**
> UploadImageResponse adminApiTenantsUploadFaviconCreate(tenantId, image)



     **Upload favicon per tenant (salvato in media/favicon/).**      ### Formati supportati:     - PNG (image/png)     - ICO (image/x-icon, image/vnd.microsoft.icon)     - SVG (image/svg+xml)      ### Validazioni:     - Max size: 2MB     - Content-type deve essere valido      ### Storage:     - File salvato in `media/favicon/{filename}`     - Django ImageField gestisce l'upload     - Restituisce absolute URL      ### Audit log:     Crea automaticamente audit log con before/after URL     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final int tenantId = 56; // int | ID del tenant
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | File immagine favicon (PNG, ICO, SVG)

try {
    final response = api.adminApiTenantsUploadFaviconCreate(tenantId, image);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsUploadFaviconCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**| ID del tenant | 
 **image** | **MultipartFile**| File immagine favicon (PNG, ICO, SVG) | 

### Return type

[**UploadImageResponse**](UploadImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adminApiTenantsUploadLogoCreate**
> UploadImageResponse adminApiTenantsUploadLogoCreate(tenantId, image)



     **Upload logo per tenant (salvato in media/logo/).**      ### Formati supportati:     - PNG (image/png)     - JPG/JPEG (image/jpeg, image/jpg)     - SVG (image/svg+xml)      ### Validazioni:     - Max size: 5MB     - Content-type deve essere valido      ### Storage:     File salvato in `media/logo/{filename}`     

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getTenantManagementApi();
final int tenantId = 56; // int | ID del tenant
final MultipartFile image = BINARY_DATA_HERE; // MultipartFile | File immagine logo (PNG, JPG, SVG)

try {
    final response = api.adminApiTenantsUploadLogoCreate(tenantId, image);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TenantManagementApi->adminApiTenantsUploadLogoCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**| ID del tenant | 
 **image** | **MultipartFile**| File immagine logo (PNG, JPG, SVG) | 

### Return type

[**UploadImageResponse**](UploadImageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

