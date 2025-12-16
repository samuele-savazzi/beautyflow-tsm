# beautyflow_api.model.HourlySlot

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**Date**](Date.md) | Data dello slot | 
**period** | **String** | Periodo (morning/afternoon) | 
**startTime** | **String** | Orario di inizio dello slot | 
**endTime** | **String** | Orario di fine dello slot | 
**startIdx** | **int** | Indice slot di inizio | 
**endIdx** | **int** | Indice slot di fine | 
**workstationId** | **int** | ID postazione (single workstation) | [optional] 
**primaryWorkstationId** | **int** | ID postazione primaria (multi-workstation) | [optional] 
**additionalWorkstationId** | **int** | ID postazione aggiuntiva (multi-workstation) | [optional] 
**workstationIds** | **BuiltList&lt;int&gt;** | Lista di tutti gli ID postazioni coinvolte | 
**availabilityScore** | **int** | Punteggio di qualità della disponibilità (0-100) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


