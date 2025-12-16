# beautyflow_api.api.WarehouseAlertsApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouseAlertsLowStockRetrieve**](WarehouseAlertsApi.md#warehousealertslowstockretrieve) | **GET** /api/warehouse/alerts/low-stock/ | Get low stock alerts


# **warehouseAlertsLowStockRetrieve**
> LowStockAlert warehouseAlertsLowStockRetrieve(object)

Get low stock alerts

Retrieve products that need reordering based on minimum stock levels

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseAlertsApi();
final String object = object_example; // String | Required object parameter for context identification

try {
    final response = api.warehouseAlertsLowStockRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseAlertsApi->warehouseAlertsLowStockRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for context identification | 

### Return type

[**LowStockAlert**](LowStockAlert.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

