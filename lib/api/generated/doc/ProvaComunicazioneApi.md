# beautyflow_api.api.ProvaComunicazioneApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**provaRetrieve**](ProvaComunicazioneApi.md#provaretrieve) | **GET** /api/prova/ | Prova di comunicazione


# **provaRetrieve**
> provaRetrieve()

Prova di comunicazione

Invia una email di prova

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getProvaComunicazioneApi();

try {
    api.provaRetrieve();
} catch on DioException (e) {
    print('Exception when calling ProvaComunicazioneApi->provaRetrieve: $e\n');
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

