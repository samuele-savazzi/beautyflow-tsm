# beautyflow_api.model.PatchedPremiumType

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**area** | **int** | Area associata al piano premium | [optional] 
**name** | **String** | Nome del piano premium (es. 'Gold', 'Platinum') | [optional] 
**price** | **double** | Prezzo del piano premium | [optional] 
**active** | **bool** |  | [optional] 
**operatorsCount** | **int** | Numero di operatori con accesso premium attivo | [optional] 
**operatorAccesses** | [**BuiltList&lt;OperatorAccessNested&gt;**](OperatorAccessNested.md) | Lista operatori con accesso premium (incluso solo nelle subscription) | [optional] 
**availableOperators** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Lista operatori disponibili da associare (solo se richiesto con include_available_operators) | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


