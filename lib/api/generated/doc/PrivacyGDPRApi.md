# beautyflow_api.api.PrivacyGDPRApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerPrivacyConsentsRetrieve**](PrivacyGDPRApi.md#consumerprivacyconsentsretrieve) | **GET** /api/consumer/privacy/consents/ | Lista consensi GDPR


# **consumerPrivacyConsentsRetrieve**
> GDPRConsentListResponse consumerPrivacyConsentsRetrieve()

Lista consensi GDPR

Ottiene la lista dei consensi GDPR del cliente autenticato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getPrivacyGDPRApi();

try {
    final response = api.consumerPrivacyConsentsRetrieve();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PrivacyGDPRApi->consumerPrivacyConsentsRetrieve: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GDPRConsentListResponse**](GDPRConsentListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

