# beautyflow_api.model.HourlyAvailabilityOperatorResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID dell'operatore | 
**firstName** | **String** | Nome dell'operatore | 
**lastName** | **String** | Cognome dell'operatore | 
**mansion** | **String** | Ruolo dell'operatore | 
**photo** | **String** | URL della foto dell'operatore | 
**availableSlots** | [**BuiltList&lt;HourlySlot&gt;**](HourlySlot.md) | Array di tutti gli slot orari disponibili | 
**totalSlotsAvailable** | **int** | Numero totale slot disponibili | 
**morningSlotsCount** | **int** | Numero slot disponibili al mattino | 
**afternoonSlotsCount** | **int** | Numero slot disponibili al pomeriggio | 
**searchDate** | [**Date**](Date.md) | Data cercata | 
**searchStrategy** | **String** | Strategia utilizzata (single_workstation/multi_workstation) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


