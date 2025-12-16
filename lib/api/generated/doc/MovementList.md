# beautyflow_api.model.MovementList

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**product** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Product details including image_url | 
**movementType** | **String** |  | 
**movementTypeDisplay** | **String** |  | 
**reason** | **String** |  | 
**reasonDisplay** | **String** |  | 
**quantity** | **double** |  | 
**unitCost** | **double** |  | 
**totalValue** | **double** |  | 
**stockBefore** | **double** |  | 
**stockAfter** | **double** |  | 
**status** | **String** |  | 
**statusDisplay** | **String** |  | 
**movementDate** | [**DateTime**](DateTime.md) |  | 
**referenceNumber** | **String** |  | 
**createdBy** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | User details including full_name and profile_photo_url | 
**isCorrection** | **bool** |  | 
**correctionId** | **int** |  | 
**movementCorrectedId** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


