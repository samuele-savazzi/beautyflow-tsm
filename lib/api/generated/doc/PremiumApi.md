# beautyflow_api.api.PremiumApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**premiumHistoryReportRetrieve**](PremiumApi.md#premiumhistoryreportretrieve) | **GET** /api/premium/history/report/ | Report storico subscription
[**premiumOperatorAccessBulkCreate**](PremiumApi.md#premiumoperatoraccessbulkcreate) | **POST** /api/premium/operator-access/bulk/ | Assegna operatori premium (bulk)
[**premiumOperatorAccessCreate**](PremiumApi.md#premiumoperatoraccesscreate) | **POST** /api/premium/operator-access/ | Assegna operatore premium
[**premiumOperatorAccessDestroy**](PremiumApi.md#premiumoperatoraccessdestroy) | **DELETE** /api/premium/operator-access/{id}/ | Rimuovi operatore premium
[**premiumOperatorAccessList**](PremiumApi.md#premiumoperatoraccesslist) | **GET** /api/premium/operator-access/ | Lista operatori premium
[**premiumOperatorAccessPartialUpdate**](PremiumApi.md#premiumoperatoraccesspartialupdate) | **PATCH** /api/premium/operator-access/{id}/ | Aggiorna accesso premium
[**premiumOperatorAccessRetrieve**](PremiumApi.md#premiumoperatoraccessretrieve) | **GET** /api/premium/operator-access/{id}/ | Dettaglio accesso premium
[**premiumSubscriptionsCancelCreate**](PremiumApi.md#premiumsubscriptionscancelcreate) | **POST** /api/premium/subscriptions/{id}/cancel/ | Cancella subscription premium
[**premiumSubscriptionsCreate**](PremiumApi.md#premiumsubscriptionscreate) | **POST** /api/premium/subscriptions/ | Crea subscription premium
[**premiumSubscriptionsDestroy**](PremiumApi.md#premiumsubscriptionsdestroy) | **DELETE** /api/premium/subscriptions/{id}/ | Elimina subscription premium
[**premiumSubscriptionsHistoryList**](PremiumApi.md#premiumsubscriptionshistorylist) | **GET** /api/premium/subscriptions/{subscription_id}/history/ | Storico subscription premium
[**premiumSubscriptionsPartialUpdate**](PremiumApi.md#premiumsubscriptionspartialupdate) | **PATCH** /api/premium/subscriptions/{id}/ | Aggiorna subscription premium
[**premiumSubscriptionsReactivateCreate**](PremiumApi.md#premiumsubscriptionsreactivatecreate) | **POST** /api/premium/subscriptions/{id}/reactivate/ | Riattiva subscription premium
[**premiumSubscriptionsRenewCreate**](PremiumApi.md#premiumsubscriptionsrenewcreate) | **POST** /api/premium/subscriptions/{id}/renew/ | Rinnova subscription premium
[**premiumSubscriptionsRetrieve**](PremiumApi.md#premiumsubscriptionsretrieve) | **GET** /api/premium/subscriptions/ | Lista subscription premium
[**premiumSubscriptionsRetrieve2**](PremiumApi.md#premiumsubscriptionsretrieve2) | **GET** /api/premium/subscriptions/{id}/ | Dettaglio subscription premium
[**premiumTypesCreate**](PremiumApi.md#premiumtypescreate) | **POST** /api/premium/types/ | Crea piano premium
[**premiumTypesDestroy**](PremiumApi.md#premiumtypesdestroy) | **DELETE** /api/premium/types/{id}/ | Elimina piano premium
[**premiumTypesList**](PremiumApi.md#premiumtypeslist) | **GET** /api/premium/types/ | Lista piani premium
[**premiumTypesPartialUpdate**](PremiumApi.md#premiumtypespartialupdate) | **PATCH** /api/premium/types/{id}/ | Aggiorna piano premium
[**premiumTypesRetrieve**](PremiumApi.md#premiumtypesretrieve) | **GET** /api/premium/types/{id}/ | Dettaglio piano premium


# **premiumHistoryReportRetrieve**
> premiumHistoryReportRetrieve(object, areaId, endDate, movementType, startDate)

Report storico subscription

Genera report analitici sulle subscription premium con statistiche aggregate

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final int areaId = 56; // int | Filtra per ID area
final String endDate = endDate_example; // String | Data fine periodo (formato YYYY-MM-DD)
final String movementType = movementType_example; // String | Filtra per tipo di movimento (CREATE, RENEWAL, CANCEL, etc.)
final String startDate = startDate_example; // String | Data inizio periodo (formato YYYY-MM-DD)

try {
    api.premiumHistoryReportRetrieve(object, areaId, endDate, movementType, startDate);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumHistoryReportRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **areaId** | **int**| Filtra per ID area | [optional] 
 **endDate** | **String**| Data fine periodo (formato YYYY-MM-DD) | [optional] 
 **movementType** | **String**| Filtra per tipo di movimento (CREATE, RENEWAL, CANCEL, etc.) | [optional] 
 **startDate** | **String**| Data inizio periodo (formato YYYY-MM-DD) | [optional] 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessBulkCreate**
> BuiltList<PremiumOperatorAccess> premiumOperatorAccessBulkCreate(object, premiumOperatorAccessBulk)

Assegna operatori premium (bulk)

Assegna o aggiorna multipli operatori a un piano premium in una sola operazione

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PremiumOperatorAccessBulk premiumOperatorAccessBulk = ; // PremiumOperatorAccessBulk | 

try {
    final response = api.premiumOperatorAccessBulkCreate(object, premiumOperatorAccessBulk);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessBulkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **premiumOperatorAccessBulk** | [**PremiumOperatorAccessBulk**](PremiumOperatorAccessBulk.md)|  | 

### Return type

[**BuiltList&lt;PremiumOperatorAccess&gt;**](PremiumOperatorAccess.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessCreate**
> PremiumOperatorAccess premiumOperatorAccessCreate(object, premiumOperatorAccess)

Assegna operatore premium

Assegna un operatore a un piano premium con giorni extra

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PremiumOperatorAccess premiumOperatorAccess = ; // PremiumOperatorAccess | 

try {
    final response = api.premiumOperatorAccessCreate(object, premiumOperatorAccess);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **premiumOperatorAccess** | [**PremiumOperatorAccess**](PremiumOperatorAccess.md)|  | 

### Return type

[**PremiumOperatorAccess**](PremiumOperatorAccess.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessDestroy**
> premiumOperatorAccessDestroy(id, object)

Rimuovi operatore premium

Rimuove un operatore da un piano premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione

try {
    api.premiumOperatorAccessDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessList**
> BuiltList<PremiumOperatorAccess> premiumOperatorAccessList(object, active, operator_, premiumType)

Lista operatori premium

Recupera la lista di operatori con accesso premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra per stato attivo/disattivo
final int operator_ = 56; // int | Filtra per ID operatore
final int premiumType = 56; // int | Filtra per ID del piano premium

try {
    final response = api.premiumOperatorAccessList(object, active, operator_, premiumType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra per stato attivo/disattivo | [optional] 
 **operator_** | **int**| Filtra per ID operatore | [optional] 
 **premiumType** | **int**| Filtra per ID del piano premium | [optional] 

### Return type

[**BuiltList&lt;PremiumOperatorAccess&gt;**](PremiumOperatorAccess.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessPartialUpdate**
> PremiumOperatorAccess premiumOperatorAccessPartialUpdate(id, object, patchedPremiumOperatorAccess)

Aggiorna accesso premium

Aggiorna giorni extra o stato attivo di un accesso premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PatchedPremiumOperatorAccess patchedPremiumOperatorAccess = ; // PatchedPremiumOperatorAccess | 

try {
    final response = api.premiumOperatorAccessPartialUpdate(id, object, patchedPremiumOperatorAccess);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **patchedPremiumOperatorAccess** | [**PatchedPremiumOperatorAccess**](PatchedPremiumOperatorAccess.md)|  | [optional] 

### Return type

[**PremiumOperatorAccess**](PremiumOperatorAccess.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumOperatorAccessRetrieve**
> PremiumOperatorAccess premiumOperatorAccessRetrieve(id, object)

Dettaglio accesso premium

Recupera i dettagli di un accesso premium operatore

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione

try {
    final response = api.premiumOperatorAccessRetrieve(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumOperatorAccessRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 

### Return type

[**PremiumOperatorAccess**](PremiumOperatorAccess.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsCancelCreate**
> PremiumSubscription premiumSubscriptionsCancelCreate(id, object, subscriptionCancel)

Cancella subscription premium

Cancella/disattiva una subscription premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final SubscriptionCancel subscriptionCancel = ; // SubscriptionCancel | 

try {
    final response = api.premiumSubscriptionsCancelCreate(id, object, subscriptionCancel);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsCancelCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **subscriptionCancel** | [**SubscriptionCancel**](SubscriptionCancel.md)|  | 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsCreate**
> PremiumSubscription premiumSubscriptionsCreate(object, premiumSubscription)

Crea subscription premium

Crea una subscription premium per un cliente

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PremiumSubscription premiumSubscription = ; // PremiumSubscription | 

try {
    final response = api.premiumSubscriptionsCreate(object, premiumSubscription);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **premiumSubscription** | [**PremiumSubscription**](PremiumSubscription.md)|  | 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsDestroy**
> premiumSubscriptionsDestroy(id, object)

Elimina subscription premium

Elimina una subscription premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione

try {
    api.premiumSubscriptionsDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsHistoryList**
> BuiltList<PremiumSubscriptionHistory> premiumSubscriptionsHistoryList(object, subscriptionId)

Storico subscription premium

Recupera lo storico completo delle movimentazioni di una subscription

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final int subscriptionId = 56; // int | 

try {
    final response = api.premiumSubscriptionsHistoryList(object, subscriptionId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsHistoryList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **subscriptionId** | **int**|  | 

### Return type

[**BuiltList&lt;PremiumSubscriptionHistory&gt;**](PremiumSubscriptionHistory.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsPartialUpdate**
> PremiumSubscription premiumSubscriptionsPartialUpdate(id, object, patchedPremiumSubscription)

Aggiorna subscription premium

Aggiorna una subscription premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PatchedPremiumSubscription patchedPremiumSubscription = ; // PatchedPremiumSubscription | 

try {
    final response = api.premiumSubscriptionsPartialUpdate(id, object, patchedPremiumSubscription);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **patchedPremiumSubscription** | [**PatchedPremiumSubscription**](PatchedPremiumSubscription.md)|  | [optional] 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsReactivateCreate**
> PremiumSubscription premiumSubscriptionsReactivateCreate(id, object, subscriptionReactivate)

Riattiva subscription premium

Riattiva una subscription premium precedentemente cancellata

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final SubscriptionReactivate subscriptionReactivate = ; // SubscriptionReactivate | 

try {
    final response = api.premiumSubscriptionsReactivateCreate(id, object, subscriptionReactivate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsReactivateCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **subscriptionReactivate** | [**SubscriptionReactivate**](SubscriptionReactivate.md)|  | [optional] 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsRenewCreate**
> PremiumSubscription premiumSubscriptionsRenewCreate(id, object, subscriptionRenew)

Rinnova subscription premium

Rinnova una subscription estendendo la data di scadenza

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final SubscriptionRenew subscriptionRenew = ; // SubscriptionRenew | 

try {
    final response = api.premiumSubscriptionsRenewCreate(id, object, subscriptionRenew);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsRenewCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **subscriptionRenew** | [**SubscriptionRenew**](SubscriptionRenew.md)|  | [optional] 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsRetrieve**
> PaginatedSubscriptionResponse premiumSubscriptionsRetrieve(object, active, areaId, customer, page, pageSize)

Lista subscription premium

Recupera le subscription premium dei clienti

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra per subscription attive/disattive
final int areaId = 56; // int | Filtra per ID area (tramite premium_type)
final int customer = 56; // int | Filtra per ID customer
final int page = 56; // int | Numero pagina
final int pageSize = 56; // int | Elementi per pagina (max 100)

try {
    final response = api.premiumSubscriptionsRetrieve(object, active, areaId, customer, page, pageSize);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra per subscription attive/disattive | [optional] 
 **areaId** | **int**| Filtra per ID area (tramite premium_type) | [optional] 
 **customer** | **int**| Filtra per ID customer | [optional] 
 **page** | **int**| Numero pagina | [optional] 
 **pageSize** | **int**| Elementi per pagina (max 100) | [optional] 

### Return type

[**PaginatedSubscriptionResponse**](PaginatedSubscriptionResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumSubscriptionsRetrieve2**
> PremiumSubscription premiumSubscriptionsRetrieve2(id, object)

Dettaglio subscription premium

Recupera i dettagli di una subscription premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione

try {
    final response = api.premiumSubscriptionsRetrieve2(id, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumSubscriptionsRetrieve2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 

### Return type

[**PremiumSubscription**](PremiumSubscription.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumTypesCreate**
> PremiumType premiumTypesCreate(object, premiumType)

Crea piano premium

Crea un nuovo piano premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PremiumType premiumType = ; // PremiumType | 

try {
    final response = api.premiumTypesCreate(object, premiumType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumTypesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **premiumType** | [**PremiumType**](PremiumType.md)|  | 

### Return type

[**PremiumType**](PremiumType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumTypesDestroy**
> premiumTypesDestroy(id, object)

Elimina piano premium

Elimina un piano premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione

try {
    api.premiumTypesDestroy(id, object);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumTypesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumTypesList**
> BuiltList<PremiumType> premiumTypesList(object, active, areaId)

Lista piani premium

Recupera tutti i piani premium disponibili

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final bool active = true; // bool | Filtra per piani attivi/disattivi
final int areaId = 56; // int | Filtra per ID area

try {
    final response = api.premiumTypesList(object, active, areaId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumTypesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **active** | **bool**| Filtra per piani attivi/disattivi | [optional] 
 **areaId** | **int**| Filtra per ID area | [optional] 

### Return type

[**BuiltList&lt;PremiumType&gt;**](PremiumType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumTypesPartialUpdate**
> PremiumType premiumTypesPartialUpdate(id, object, patchedPremiumType)

Aggiorna piano premium

Aggiorna parzialmente un piano premium

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final PatchedPremiumType patchedPremiumType = ; // PatchedPremiumType | 

try {
    final response = api.premiumTypesPartialUpdate(id, object, patchedPremiumType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumTypesPartialUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **patchedPremiumType** | [**PatchedPremiumType**](PatchedPremiumType.md)|  | [optional] 

### Return type

[**PremiumType**](PremiumType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **premiumTypesRetrieve**
> PremiumType premiumTypesRetrieve(id, object, includeAvailableOperators)

Dettaglio piano premium

Recupera i dettagli di un piano premium specifico

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPremiumApi();
final int id = 56; // int | 
final String object = object_example; // String | Parametro oggetto richiesto per autorizzazione
final bool includeAvailableOperators = true; // bool | Include lista operatori disponibili da associare

try {
    final response = api.premiumTypesRetrieve(id, object, includeAvailableOperators);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PremiumApi->premiumTypesRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **object** | **String**| Parametro oggetto richiesto per autorizzazione | 
 **includeAvailableOperators** | **bool**| Include lista operatori disponibili da associare | [optional] 

### Return type

[**PremiumType**](PremiumType.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

