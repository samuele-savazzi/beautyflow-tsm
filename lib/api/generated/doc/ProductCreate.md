# beautyflow_api.model.ProductCreate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categoryId** | **int** |  | 
**name** | **String** |  | 
**brand** | **String** |  | [optional] 
**sku** | **String** |  | [optional] 
**barcode** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**image** | **String** | Product image in base64 format (data:image/jpeg;base64,...) | [optional] 
**promotionalVideo** | **String** | Promotional video in base64 format (data:video/mp4;base64,...) | [optional] 
**unitOfMeasure** | [**UnitOfMeasureEnum**](UnitOfMeasureEnum.md) |  | [optional] [default to UnitOfMeasureEnum.PCS]
**currentStock** | **double** |  | [optional] [default to '0.00']
**minimumStock** | **double** |  | [optional] [default to '0.00']
**maximumStock** | **double** |  | [optional] 
**costPrice** | **double** |  | [optional] [default to '0.00']
**sellingPrice** | **double** |  | [optional] 
**bulkPurchaseCost** | **double** | Total cost for bulk purchase (e.g., €30 for a box) | [optional] 
**bulkPurchaseQuantity** | **double** | Quantity purchased for that cost (e.g., 20 pcs) | [optional] 
**expirationMonths** | **int** |  | [optional] 
**isProfessionalUse** | **bool** |  | [optional] [default to false]
**containsChemicals** | **bool** |  | [optional] [default to false]
**allergens** | **String** |  | [optional] 
**primarySupplierId** | **int** |  | [optional] 
**alternativeSupplierIds** | **BuiltList&lt;int&gt;** | List of alternative supplier IDs | [optional] 
**supplierCode** | **String** |  | [optional] 
**reorderPoint** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


