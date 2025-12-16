# beautyflow_api.model.BatchResult

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **int** | Indice della richiesta nel batch | 
**success** | **bool** | Se la richiesta è andata a buon fine | 
**data** | [**OperatorDataResponse**](OperatorDataResponse.md) |  | [optional] 
**error** | **String** | Messaggio di errore (se success=false) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


