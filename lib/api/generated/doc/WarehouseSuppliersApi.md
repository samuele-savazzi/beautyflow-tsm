# beautyflow_api.api.WarehouseSuppliersApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**supplierCreate**](WarehouseSuppliersApi.md#suppliercreate) | **POST** /api/supplier/ | Create new supplier
[**supplierDestroy**](WarehouseSuppliersApi.md#supplierdestroy) | **DELETE** /api/supplier/ | Delete supplier
[**supplierRetrieve**](WarehouseSuppliersApi.md#supplierretrieve) | **GET** /api/supplier/ | Get all suppliers
[**supplierUpdate**](WarehouseSuppliersApi.md#supplierupdate) | **PUT** /api/supplier/ | Update supplier


# **supplierCreate**
> SupplierCreated supplierCreate(object, supplierCreate)

Create new supplier

Create a new supplier with basic contact information

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSuppliersApi();
final String object = object_example; // String | Required object parameter for context identification
final SupplierCreate supplierCreate = ; // SupplierCreate | 

try {
    final response = api.supplierCreate(object, supplierCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSuppliersApi->supplierCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **supplierCreate** | [**SupplierCreate**](SupplierCreate.md)|  | 

### Return type

[**SupplierCreated**](SupplierCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierDestroy**
> SupplierDeleted supplierDestroy(object, supplierId)

Delete supplier

Delete a supplier (soft delete by setting is_active=False)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSuppliersApi();
final String object = object_example; // String | Required object parameter for context identification
final int supplierId = 56; // int | Supplier ID to delete

try {
    final response = api.supplierDestroy(object, supplierId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSuppliersApi->supplierDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **supplierId** | **int**| Supplier ID to delete | 

### Return type

[**SupplierDeleted**](SupplierDeleted.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierRetrieve**
> SupplierListResponse supplierRetrieve(object, activeOnly, search)

Get all suppliers

Retrieve list of all suppliers with search options

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSuppliersApi();
final String object = object_example; // String | Required object parameter for context identification
final bool activeOnly = true; // bool | Filter only active suppliers (default: true)
final String search = search_example; // String | Search by supplier name, phone, or email

try {
    final response = api.supplierRetrieve(object, activeOnly, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSuppliersApi->supplierRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **activeOnly** | **bool**| Filter only active suppliers (default: true) | [optional] 
 **search** | **String**| Search by supplier name, phone, or email | [optional] 

### Return type

[**SupplierListResponse**](SupplierListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supplierUpdate**
> SupplierUpdated supplierUpdate(object, supplierId, supplierUpdate)

Update supplier

Update an existing supplier

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSuppliersApi();
final String object = object_example; // String | Required object parameter for context identification
final int supplierId = 56; // int | Supplier ID to update
final SupplierUpdate supplierUpdate = ; // SupplierUpdate | 

try {
    final response = api.supplierUpdate(object, supplierId, supplierUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSuppliersApi->supplierUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **supplierId** | **int**| Supplier ID to update | 
 **supplierUpdate** | [**SupplierUpdate**](SupplierUpdate.md)|  | 

### Return type

[**SupplierUpdated**](SupplierUpdated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

