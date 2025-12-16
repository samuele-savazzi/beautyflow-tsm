# beautyflow_api.model.ProductUpdate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**brand** | **String** |  | [optional] 
**sku** | **String** |  | [optional] 
**barcode** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**image** | **String** | Product image in base64 format or \"REMOVE\" to delete | [optional] 
**promotionalVideo** | **String** | Promotional video in base64 format or \"REMOVE\" to delete | [optional] 
**unitOfMeasure** | [**UnitOfMeasureEnum**](UnitOfMeasureEnum.md) |  | [optional] 
**minimumStock** | **double** |  | [optional] 
**maximumStock** | **double** |  | [optional] 
**costPrice** | **double** |  | [optional] 
**sellingPrice** | **double** |  | [optional] 
**bulkPurchaseCost** | **double** | Total cost for bulk purchase | [optional] 
**bulkPurchaseQuantity** | **double** | Quantity purchased for that cost | [optional] 
**expirationMonths** | **int** |  | [optional] 
**isProfessionalUse** | **bool** |  | [optional] 
**containsChemicals** | **bool** |  | [optional] 
**allergens** | **String** |  | [optional] 
**primarySupplierId** | **int** |  | [optional] 
**alternativeSupplierIds** | **BuiltList&lt;int&gt;** | List of alternative supplier IDs | [optional] 
**supplierCode** | **String** |  | [optional] 
**reorderPoint** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


