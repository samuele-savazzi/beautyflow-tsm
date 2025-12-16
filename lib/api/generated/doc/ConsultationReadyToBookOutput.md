# beautyflow_api.model.ConsultationReadyToBookOutput

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**customer** | **int** |  | 
**customerName** | **String** |  | 
**service** | **int** | Servizio non prenotabile (bookable=False) | 
**serviceName** | **String** |  | 
**status** | [**StatusEnum**](StatusEnum.md) |  | 
**serviceStepsSnapshot** | [**JsonObject**](.md) | Step e durate definitive passate dal frontend. Immutabili dopo il salvataggio. Formato: [{'step_id': int, 'step_name': str, 'duration_minutes': int, active: bool, category_selected: int, category_name}] | 
**finalDescription** | **String** | Descrizione dettagliata del servizio personalizzato dopo la consultation | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


