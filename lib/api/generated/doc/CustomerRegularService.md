# beautyflow_api.model.CustomerRegularService

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**customer** | **int** | Cliente marcato come abituale | 
**customerName** | **String** | Nome completo del cliente | 
**customerPhone** | **String** | Numero di telefono del cliente | 
**service** | **int** | Servizio per cui il cliente è abituale | 
**serviceName** | **String** | Nome del servizio | 
**serviceId** | **int** | ID del servizio | 
**markedRegularBy** | **int** | Operatore che ha marcato il cliente come abituale | [optional] 
**markedByName** | **String** | Nome completo dell'operatore che ha marcato il cliente | 
**markedRegularAt** | [**DateTime**](DateTime.md) | Timestamp della marcatura come cliente abituale | 
**triggeredByConsultation** | **int** | Consultation che ha scatenato la marcatura come abituale | [optional] 
**active** | **bool** | Se False, il cliente non è più considerato abituale per questo servizio | [optional] 
**notes** | **String** | Note interne sull'assegnazione come cliente abituale | [optional] 
**totalConsultations** | **int** | Numero totale di consultations completate per questo servizio | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


