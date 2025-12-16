# beautyflow_api.api.ConsumerApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerInviteAcceptCreate**](ConsumerApi.md#consumerinviteacceptcreate) | **POST** /api/consumer/invite/{token}/accept/ | 
[**consumerPrivacyExportDataRetrieve**](ConsumerApi.md#consumerprivacyexportdataretrieve) | **GET** /api/consumer/privacy/export-data/ | 
[**consumerPrivacyRevokeConsentCreate**](ConsumerApi.md#consumerprivacyrevokeconsentcreate) | **POST** /api/consumer/privacy/revoke-consent/ | 


# **consumerInviteAcceptCreate**
> consumerInviteAcceptCreate(token)



API pubblica per accettare un invito e creare l'account cliente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerApi();
final String token = token_example; // String | 

try {
    api.consumerInviteAcceptCreate(token);
} catch on DioException (e) {
    print('Exception when calling ConsumerApi->consumerInviteAcceptCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerPrivacyExportDataRetrieve**
> consumerPrivacyExportDataRetrieve()



API per esportare tutti i dati del cliente (GDPR Art. 20).

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerApi();

try {
    api.consumerPrivacyExportDataRetrieve();
} catch on DioException (e) {
    print('Exception when calling ConsumerApi->consumerPrivacyExportDataRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerPrivacyRevokeConsentCreate**
> consumerPrivacyRevokeConsentCreate()



API per revocare il consenso GDPR del cliente.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getConsumerApi();

try {
    api.consumerPrivacyRevokeConsentCreate();
} catch on DioException (e) {
    print('Exception when calling ConsumerApi->consumerPrivacyRevokeConsentCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

