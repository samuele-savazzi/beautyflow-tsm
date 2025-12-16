# beautyflow_api.model.BookingDeleteResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Stato della cancellazione | 
**bookingId** | **int** | ID del booking cancellato (se success=true) | [optional] 
**slotsDeleted** | **int** | Numero di slot eliminati (se success=true) | [optional] 
**error** | **String** | Messaggio di errore (se success=false) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


