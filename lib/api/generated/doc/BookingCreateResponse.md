# beautyflow_api.model.BookingCreateResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Stato della creazione | 
**bookingId** | **int** | ID del booking creato (se success=true) | [optional] 
**slotsCreated** | **int** | Numero di slot creati (se success=true) | [optional] 
**totalDuration** | **int** | Durata totale in minuti (se success=true) | [optional] 
**error** | **String** | Messaggio di errore (se success=false) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


