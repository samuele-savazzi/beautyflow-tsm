# beautyflow_api.api.WarehouseCategoriesApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouseCategoriesCreate**](WarehouseCategoriesApi.md#warehousecategoriescreate) | **POST** /api/warehouse/categories/ | Create new product category
[**warehouseCategoriesDestroy**](WarehouseCategoriesApi.md#warehousecategoriesdestroy) | **DELETE** /api/warehouse/categories/ | Delete product category
[**warehouseCategoriesList**](WarehouseCategoriesApi.md#warehousecategorieslist) | **GET** /api/warehouse/categories/ | Get all product categories
[**warehouseCategoriesUpdate**](WarehouseCategoriesApi.md#warehousecategoriesupdate) | **PUT** /api/warehouse/categories/ | Update product category


# **warehouseCategoriesCreate**
> CategoryCreated warehouseCategoriesCreate(object, categoryCreate)

Create new product category

Create a new product category

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseCategoriesApi();
final String object = object_example; // String | Required object parameter for authorization
final CategoryCreate categoryCreate = ; // CategoryCreate | 

try {
    final response = api.warehouseCategoriesCreate(object, categoryCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseCategoriesApi->warehouseCategoriesCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for authorization | 
 **categoryCreate** | [**CategoryCreate**](CategoryCreate.md)|  | 

### Return type

[**CategoryCreated**](CategoryCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseCategoriesDestroy**
> CategoryDeleted warehouseCategoriesDestroy(categoryId, object)

Delete product category

Delete a product category (only if no products are associated)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseCategoriesApi();
final int categoryId = 56; // int | Category ID to delete
final String object = object_example; // String | Required object parameter for context identification

try {
    final response = api.warehouseCategoriesDestroy(categoryId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseCategoriesApi->warehouseCategoriesDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| Category ID to delete | 
 **object** | **String**| Required object parameter for context identification | 

### Return type

[**CategoryDeleted**](CategoryDeleted.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseCategoriesList**
> BuiltList<ProductCategoryList> warehouseCategoriesList(object, areaId, warehouseType)

Get all product categories

Retrieve list of all product categories with filtering options

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseCategoriesApi();
final String object = object_example; // String | Required object parameter for context identification
final int areaId = 56; // int | Filter by area ID
final String warehouseType = warehouseType_example; // String | Filter by warehouse type (RETAIL, SERVICE, BOTH)

try {
    final response = api.warehouseCategoriesList(object, areaId, warehouseType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseCategoriesApi->warehouseCategoriesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **areaId** | **int**| Filter by area ID | [optional] 
 **warehouseType** | **String**| Filter by warehouse type (RETAIL, SERVICE, BOTH) | [optional] 

### Return type

[**BuiltList&lt;ProductCategoryList&gt;**](ProductCategoryList.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseCategoriesUpdate**
> CategoryUpdated warehouseCategoriesUpdate(categoryId, object, categoryUpdate)

Update product category

Update an existing product category

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseCategoriesApi();
final int categoryId = 56; // int | Category ID to update
final String object = object_example; // String | Required object parameter for context identification
final CategoryUpdate categoryUpdate = ; // CategoryUpdate | 

try {
    final response = api.warehouseCategoriesUpdate(categoryId, object, categoryUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseCategoriesApi->warehouseCategoriesUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **int**| Category ID to update | 
 **object** | **String**| Required object parameter for context identification | 
 **categoryUpdate** | [**CategoryUpdate**](CategoryUpdate.md)|  | 

### Return type

[**CategoryUpdated**](CategoryUpdated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

