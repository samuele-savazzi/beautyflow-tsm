# beautyflow_api.api.InvitiClientiApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerInvitationsCreate**](InvitiClientiApi.md#consumerinvitationscreate) | **POST** /api/consumer/invitations/ | Crea invito cliente
[**consumerInvitationsDestroy**](InvitiClientiApi.md#consumerinvitationsdestroy) | **DELETE** /api/consumer/invitations/{invitation_id}/ | Revoca invito cliente
[**consumerInvitationsRetrieve**](InvitiClientiApi.md#consumerinvitationsretrieve) | **GET** /api/consumer/invitations/ | Lista inviti cliente
[**consumerInvitationsRetrieve2**](InvitiClientiApi.md#consumerinvitationsretrieve2) | **GET** /api/consumer/invitations/{invitation_id}/ | Dettagli invito cliente


# **consumerInvitationsCreate**
> CustomerInvitationCreateResponse consumerInvitationsCreate(object, customerInvitationCreateRequest)

Crea invito cliente

Crea un nuovo invito per un cliente con dati pre-compilati

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getInvitiClientiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto
final CustomerInvitationCreateRequest customerInvitationCreateRequest = ; // CustomerInvitationCreateRequest | 

try {
    final response = api.consumerInvitationsCreate(object, customerInvitationCreateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitiClientiApi->consumerInvitationsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 
 **customerInvitationCreateRequest** | [**CustomerInvitationCreateRequest**](CustomerInvitationCreateRequest.md)|  | 

### Return type

[**CustomerInvitationCreateResponse**](CustomerInvitationCreateResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerInvitationsDestroy**
> RevokeInvitationResponse consumerInvitationsDestroy(invitationId, object)

Revoca invito cliente

Revoca un invito in stato pending

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getInvitiClientiApi();
final String invitationId = invitationId_example; // String | ID UUID dell'invito
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.consumerInvitationsDestroy(invitationId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitiClientiApi->consumerInvitationsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**| ID UUID dell'invito | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**RevokeInvitationResponse**](RevokeInvitationResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerInvitationsRetrieve**
> CustomerInvitationListResponse consumerInvitationsRetrieve(object)

Lista inviti cliente

Ottiene la lista degli inviti creati dal titolare autenticato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getInvitiClientiApi();
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.consumerInvitationsRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitiClientiApi->consumerInvitationsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**CustomerInvitationListResponse**](CustomerInvitationListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerInvitationsRetrieve2**
> CustomerInvitationDetailResponse consumerInvitationsRetrieve2(invitationId, object)

Dettagli invito cliente

Ottiene i dettagli di un singolo invito creato dal titolare

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getInvitiClientiApi();
final String invitationId = invitationId_example; // String | ID UUID dell'invito
final String object = object_example; // String | Parametro oggetto richiesto per identificare il contesto

try {
    final response = api.consumerInvitationsRetrieve2(invitationId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvitiClientiApi->consumerInvitationsRetrieve2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**| ID UUID dell'invito | 
 **object** | **String**| Parametro oggetto richiesto per identificare il contesto | 

### Return type

[**CustomerInvitationDetailResponse**](CustomerInvitationDetailResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

