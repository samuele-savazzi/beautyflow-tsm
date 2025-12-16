# beautyflow_api.model.AvailabilityRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operatorId** | **int** | ID dell'operatore (single operator mode) | [optional] 
**primaryOperatorId** | **int** | ID dell'operatore primario (dual operators mode) | [optional] 
**additionalOperatorId** | **int** | ID dell'operatore addizionale (dual operators mode) | [optional] 
**areaId** | **int** | ID dell'area | 
**primaryServiceId** | **int** | ID del servizio principale | 
**additionalServiceId** | **int** | ID del servizio aggiuntivo (obbligatorio per dual operators) | [optional] 
**timesPrimaryService** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | Tempi per il servizio principale | 
**timesAdditionalService** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | Tempi per il servizio aggiuntivo | [optional] 
**avaibleWorkStationsPrimaryService** | **BuiltList&lt;String&gt;** | Lista delle postazioni disponibili per il servizio principale | 
**avaibleWorkStationsAdditionalService** | **BuiltList&lt;String&gt;** | Lista delle postazioni disponibili per il servizio aggiuntivo | [optional] 
**workingDays** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Giorni lavorativi | 
**primaryOperatorWorkingDays** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Orari specifici per operatore primario (opzionale, default: workingDays) | [optional] 
**additionalOperatorWorkingDays** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Orari specifici per operatore addizionale (opzionale, default: workingDays) | [optional] 
**minimumGapSlots** | **int** | Slot minimi di gap tra prenotazioni. Gap deve essere 0 o >= valore specificato. Se non specificato, nessun controllo gap. | [optional] 
**searchOnlyMorning** | **bool** | Cerca disponibilità solo nel periodo mattino | [optional] [default to false]
**searchOnlyAfternoon** | **bool** | Cerca disponibilità solo nel periodo pomeriggio | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


