# beautyflow_api.model.PremiumType

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**area** | **int** | Area associata al piano premium | 
**name** | **String** | Nome del piano premium (es. 'Gold', 'Platinum') | 
**price** | **double** | Prezzo del piano premium | 
**active** | **bool** |  | [optional] 
**operatorsCount** | **int** | Numero di operatori con accesso premium attivo | 
**operatorAccesses** | [**BuiltList&lt;OperatorAccessNested&gt;**](OperatorAccessNested.md) | Lista operatori con accesso premium (incluso solo nelle subscription) | 
**availableOperators** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Lista operatori disponibili da associare (solo se richiesto con include_available_operators) | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


