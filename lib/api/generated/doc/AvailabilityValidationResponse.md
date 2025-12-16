# beautyflow_api.model.AvailabilityValidationResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Stato della validazione | 
**valid** | **bool** | Se la richiesta è valida | 
**operator_** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Informazioni operatore (se valido) | [optional] 
**errors** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | Lista errori di validazione (se non valido) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


