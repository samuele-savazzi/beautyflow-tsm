# beautyflow_api.model.MovementCreate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **int** |  | 
**movementType** | [**MovementCreateMovementTypeEnum**](MovementCreateMovementTypeEnum.md) |  | 
**reason** | [**MovementCreateReasonEnum**](MovementCreateReasonEnum.md) |  | 
**quantity** | **double** |  | 
**movementUnit** | [**MovementUnitEnum**](MovementUnitEnum.md) |  | [optional] 
**unitCost** | **double** |  | [optional] [default to '0.00']
**referenceNumber** | **String** |  | [optional] 
**supplierId** | **int** | Supplier for this movement (for purchases) | [optional] 
**supplierName** | **String** | Supplier name (legacy field, use supplier_id when possible) | [optional] 
**notes** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


