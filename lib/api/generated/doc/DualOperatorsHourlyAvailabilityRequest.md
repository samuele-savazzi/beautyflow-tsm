# beautyflow_api.model.DualOperatorsHourlyAvailabilityRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**primaryOperatorId** | **int** | ID dell'operatore primario | 
**additionalOperatorId** | **int** | ID dell'operatore addizionale (DEVE essere diverso dal primario) | 
**areaId** | **int** | ID dell'area | 
**primaryServiceId** | **int** | ID del servizio principale | 
**additionalServiceId** | **int** | ID del servizio aggiuntivo (obbligatorio per dual operators) | 
**timesPrimaryService** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | Tempi per il servizio principale | 
**timesAdditionalService** | [**BuiltList&lt;JsonObject&gt;**](JsonObject.md) | Tempi per il servizio aggiuntivo (obbligatorio) | 
**avaibleWorkStationsPrimaryService** | **BuiltList&lt;String&gt;** | Lista delle postazioni disponibili per il servizio principale | 
**avaibleWorkStationsAdditionalService** | **BuiltList&lt;String&gt;** | Lista delle postazioni disponibili per il servizio aggiuntivo (possono sovrapporsi con primary) | 
**workingDays** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Singolo giorno lavorativo (deve contenere esattamente 1 giorno) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


