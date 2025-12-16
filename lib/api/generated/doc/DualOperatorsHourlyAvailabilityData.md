# beautyflow_api.model.DualOperatorsHourlyAvailabilityData

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**primaryOperator** | [**DualOperatorsOperatorData**](DualOperatorsOperatorData.md) |  | 
**additionalOperator** | [**DualOperatorsOperatorData**](DualOperatorsOperatorData.md) |  | 
**availableSlots** | [**BuiltList&lt;DualOperatorsSlot&gt;**](DualOperatorsSlot.md) | Array di tutte le combinazioni di slot orari disponibili | 
**totalSlotsAvailable** | **int** | Numero totale combinazioni disponibili | 
**morningSlotsCount** | **int** | Numero combinazioni disponibili al mattino | 
**afternoonSlotsCount** | **int** | Numero combinazioni disponibili al pomeriggio | 
**searchDate** | [**Date**](Date.md) | Data cercata | 
**searchStrategy** | **String** | Strategia utilizzata (sempre 'dual_operators') | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


