# beautyflow_api.api.ManageInvitationApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerInviteRetrieve**](ManageInvitationApi.md#consumerinviteretrieve) | **GET** /api/consumer/invite/{token}/ | Dettagli invito pubblico


# **consumerInviteRetrieve**
> InvitationDetailsResponse consumerInviteRetrieve(token)

Dettagli invito pubblico

Ottiene i dettagli di un invito tramite token per il cliente invitato

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getManageInvitationApi();
final String token = token_example; // String | Token sicuro dell'invito

try {
    final response = api.consumerInviteRetrieve(token);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ManageInvitationApi->consumerInviteRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| Token sicuro dell'invito | 

### Return type

[**InvitationDetailsResponse**](InvitationDetailsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

