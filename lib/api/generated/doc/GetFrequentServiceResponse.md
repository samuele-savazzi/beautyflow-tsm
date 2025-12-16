# beautyflow_api.model.GetFrequentServiceResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hasFrequentService** | **bool** | Indica se l'operatore ha impostato un servizio frequente | 
**service** | [**ServiceBasic**](ServiceBasic.md) |  | [optional] 
**categories** | [**BuiltMap&lt;String, CategoryDetail&gt;**](CategoryDetail.md) | Dizionario con chiave step_id (string) e valore oggetto categoria. Es: {\"568\": {...}, \"569\": {...}} | [optional] 
**durationMinutes** | **int** | Durata totale in minuti | [optional] 
**durationHumanReadable** | **String** | Durata formattata human readable (es: \"1 ora e 30 minuti\") | [optional] 
**durationSlots** | **int** | Durata in slot da 5 minuti (es: 30 min = 6 slot) | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Data ultimo aggiornamento | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


