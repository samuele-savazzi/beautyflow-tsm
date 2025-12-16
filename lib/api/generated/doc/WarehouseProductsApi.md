# beautyflow_api.api.WarehouseProductsApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouseProductsCreate**](WarehouseProductsApi.md#warehouseproductscreate) | **POST** /api/warehouse/products/ | Create new product
[**warehouseProductsDetailRetrieve**](WarehouseProductsApi.md#warehouseproductsdetailretrieve) | **GET** /api/warehouse/products/detail/ | Get product details
[**warehouseProductsRetrieve**](WarehouseProductsApi.md#warehouseproductsretrieve) | **GET** /api/warehouse/products/ | Get paginated products list
[**warehouseProductsUpdate**](WarehouseProductsApi.md#warehouseproductsupdate) | **PUT** /api/warehouse/products/ | Update product


# **warehouseProductsCreate**
> ProductCreated warehouseProductsCreate(object, productCreate)

Create new product

Create a new product in the warehouse

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseProductsApi();
final String object = object_example; // String | Required object parameter for context identification
final ProductCreate productCreate = ; // ProductCreate | 

try {
    final response = api.warehouseProductsCreate(object, productCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseProductsApi->warehouseProductsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **productCreate** | [**ProductCreate**](ProductCreate.md)|  | 

### Return type

[**ProductCreated**](ProductCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseProductsDetailRetrieve**
> ProductDetailResponse warehouseProductsDetailRetrieve(object, productId)

Get product details

Retrieve detailed information about a specific product

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseProductsApi();
final String object = object_example; // String | Required object parameter for context identification
final int productId = 56; // int | Product ID to retrieve

try {
    final response = api.warehouseProductsDetailRetrieve(object, productId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseProductsApi->warehouseProductsDetailRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **productId** | **int**| Product ID to retrieve | 

### Return type

[**ProductDetailResponse**](ProductDetailResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseProductsRetrieve**
> ProductListResponse warehouseProductsRetrieve(object, areaId, categoryId, lowStock, needsReorder, page, pageSize, search)

Get paginated products list

Retrieve paginated list of products with filtering and search options

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseProductsApi();
final String object = object_example; // String | Required object parameter for context identification
final int areaId = 56; // int | Filter by area ID (filters products through category area)
final int categoryId = 56; // int | Filter by category ID
final bool lowStock = true; // bool | Filter products with low stock (current_stock <= minimum_stock)
final bool needsReorder = true; // bool | Filter products that need reordering (current_stock <= reorder_point)
final int page = 56; // int | Page number (default: 1)
final int pageSize = 56; // int | Items per page (default: 20, max: 100)
final String search = search_example; // String | Search by product name, brand, or SKU

try {
    final response = api.warehouseProductsRetrieve(object, areaId, categoryId, lowStock, needsReorder, page, pageSize, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseProductsApi->warehouseProductsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **areaId** | **int**| Filter by area ID (filters products through category area) | [optional] 
 **categoryId** | **int**| Filter by category ID | [optional] 
 **lowStock** | **bool**| Filter products with low stock (current_stock <= minimum_stock) | [optional] 
 **needsReorder** | **bool**| Filter products that need reordering (current_stock <= reorder_point) | [optional] 
 **page** | **int**| Page number (default: 1) | [optional] 
 **pageSize** | **int**| Items per page (default: 20, max: 100) | [optional] 
 **search** | **String**| Search by product name, brand, or SKU | [optional] 

### Return type

[**ProductListResponse**](ProductListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseProductsUpdate**
> ProductUpdated warehouseProductsUpdate(object, productId, productUpdate)

Update product

Update an existing product with proper attachment management

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseProductsApi();
final String object = object_example; // String | Required object parameter for context identification
final int productId = 56; // int | Product ID to update
final ProductUpdate productUpdate = ; // ProductUpdate | 

try {
    final response = api.warehouseProductsUpdate(object, productId, productUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseProductsApi->warehouseProductsUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **productId** | **int**| Product ID to update | 
 **productUpdate** | [**ProductUpdate**](ProductUpdate.md)|  | [optional] 

### Return type

[**ProductUpdated**](ProductUpdated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

