# beautyflow_api.api.AreasApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availabilityAreaDetailsRetrieve**](AreasApi.md#availabilityareadetailsretrieve) | **GET** /api/availability/area/details/ | Operatori e postazioni attive per area


# **availabilityAreaDetailsRetrieve**
> AreaDetailsResponse availabilityAreaDetailsRetrieve(areaId, object)

Operatori e postazioni attive per area

Returns active operators and workstations for the specified area. If main area returns all with main_area=false

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAreasApi();
final int areaId = 56; // int | Area ID (if main area returns all non-main areas)
final String object = object_example; // String | oggetto della richiesta

try {
    final response = api.availabilityAreaDetailsRetrieve(areaId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AreasApi->availabilityAreaDetailsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| Area ID (if main area returns all non-main areas) | 
 **object** | **String**| oggetto della richiesta | 

### Return type

[**AreaDetailsResponse**](AreaDetailsResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

