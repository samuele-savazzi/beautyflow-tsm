# beautyflow_api.api.WarehouseMovementsApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouseMovementsCorrectionsCreate**](WarehouseMovementsApi.md#warehousemovementscorrectionscreate) | **POST** /api/warehouse/movements/corrections/ | Create movement correction
[**warehouseMovementsCreate**](WarehouseMovementsApi.md#warehousemovementscreate) | **POST** /api/warehouse/movements/ | Create warehouse movement
[**warehouseMovementsDestroy**](WarehouseMovementsApi.md#warehousemovementsdestroy) | **DELETE** /api/warehouse/movements/ | Delete warehouse movement
[**warehouseMovementsRetrieve**](WarehouseMovementsApi.md#warehousemovementsretrieve) | **GET** /api/warehouse/movements/ | Get paginated warehouse movements


# **warehouseMovementsCorrectionsCreate**
> CorrectionCreated warehouseMovementsCorrectionsCreate(object, movementCorrection)

Create movement correction

Create a correction for an existing warehouse movement

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseMovementsApi();
final String object = object_example; // String | Required object parameter for context identification
final MovementCorrection movementCorrection = ; // MovementCorrection | 

try {
    final response = api.warehouseMovementsCorrectionsCreate(object, movementCorrection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseMovementsApi->warehouseMovementsCorrectionsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **movementCorrection** | [**MovementCorrection**](MovementCorrection.md)|  | 

### Return type

[**CorrectionCreated**](CorrectionCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseMovementsCreate**
> MovementCreated warehouseMovementsCreate(object, movementCreate)

Create warehouse movement

Create a new warehouse movement (stock in/out)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseMovementsApi();
final String object = object_example; // String | Required object parameter for context identification
final MovementCreate movementCreate = ; // MovementCreate | 

try {
    final response = api.warehouseMovementsCreate(object, movementCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseMovementsApi->warehouseMovementsCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **movementCreate** | [**MovementCreate**](MovementCreate.md)|  | 

### Return type

[**MovementCreated**](MovementCreated.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseMovementsDestroy**
> MovementDeleted warehouseMovementsDestroy(movementId, object)

Delete warehouse movement

Delete a warehouse movement (operators can only delete their own movements)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseMovementsApi();
final int movementId = 56; // int | Movement ID to delete
final String object = object_example; // String | Required object parameter for context identification

try {
    final response = api.warehouseMovementsDestroy(movementId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseMovementsApi->warehouseMovementsDestroy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **movementId** | **int**| Movement ID to delete | 
 **object** | **String**| Required object parameter for context identification | 

### Return type

[**MovementDeleted**](MovementDeleted.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseMovementsRetrieve**
> MovementListResponse warehouseMovementsRetrieve(object, areaId, dateFrom, dateTo, movementType, page, pageSize, productId)

Get paginated warehouse movements

Retrieve paginated list of warehouse movements with filtering options

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseMovementsApi();
final String object = object_example; // String | Required object parameter for context identification
final int areaId = 56; // int | Filter by area ID (filters movements through product category area)
final Date dateFrom = 2013-10-20; // Date | Filter movements from date (YYYY-MM-DD)
final Date dateTo = 2013-10-20; // Date | Filter movements to date (YYYY-MM-DD)
final String movementType = movementType_example; // String | Filter by movement type
final int page = 56; // int | Page number (default: 1)
final int pageSize = 56; // int | Items per page (default: 20, max: 100)
final int productId = 56; // int | Filter by product ID

try {
    final response = api.warehouseMovementsRetrieve(object, areaId, dateFrom, dateTo, movementType, page, pageSize, productId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseMovementsApi->warehouseMovementsRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 
 **areaId** | **int**| Filter by area ID (filters movements through product category area) | [optional] 
 **dateFrom** | **Date**| Filter movements from date (YYYY-MM-DD) | [optional] 
 **dateTo** | **Date**| Filter movements to date (YYYY-MM-DD) | [optional] 
 **movementType** | **String**| Filter by movement type | [optional] 
 **page** | **int**| Page number (default: 1) | [optional] 
 **pageSize** | **int**| Items per page (default: 20, max: 100) | [optional] 
 **productId** | **int**| Filter by product ID | [optional] 

### Return type

[**MovementListResponse**](MovementListResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

