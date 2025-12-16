# beautyflow_api.api.WarehouseSalesApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**warehouseSalesCustomerHistoryRetrieve**](WarehouseSalesApi.md#warehousesalescustomerhistoryretrieve) | **GET** /api/warehouse/sales/customer-history/ | Storico acquisti customer
[**warehouseSalesDirectCreate**](WarehouseSalesApi.md#warehousesalesdirectcreate) | **POST** /api/warehouse/sales/direct/ | Crea vendita diretta


# **warehouseSalesCustomerHistoryRetrieve**
> CustomerPurchaseHistoryResponse warehouseSalesCustomerHistoryRetrieve(customerId, object, page, pageSize)

Storico acquisti customer

Restituisce lo storico prodotti acquistati da un customer (vendite dirette + booking)

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSalesApi();
final int customerId = 56; // int | ID del customer
final String object = object_example; // String | Required object parameter for authorization
final int page = 56; // int | Numero pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)

try {
    final response = api.warehouseSalesCustomerHistoryRetrieve(customerId, object, page, pageSize);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSalesApi->warehouseSalesCustomerHistoryRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| ID del customer | 
 **object** | **String**| Required object parameter for authorization | 
 **page** | **int**| Numero pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 

### Return type

[**CustomerPurchaseHistoryResponse**](CustomerPurchaseHistoryResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **warehouseSalesDirectCreate**
> DirectSaleResponse warehouseSalesDirectCreate(object, directSaleRequest)

Crea vendita diretta

Crea una vendita diretta di prodotti non associata a un booking

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getWarehouseSalesApi();
final String object = object_example; // String | Required object parameter for authorization
final DirectSaleRequest directSaleRequest = ; // DirectSaleRequest | 

try {
    final response = api.warehouseSalesDirectCreate(object, directSaleRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WarehouseSalesApi->warehouseSalesDirectCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Required object parameter for authorization | 
 **directSaleRequest** | [**DirectSaleRequest**](DirectSaleRequest.md)|  | 

### Return type

[**DirectSaleResponse**](DirectSaleResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

