# beautyflow_api.model.DualOperatorsSlot

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**Date**](Date.md) | Data dello slot | 
**period** | **String** | Periodo (morning/afternoon) | 
**startTime** | **String** | Orario di inizio slot (inizio servizio primario) | 
**endTime** | **String** | Orario di fine slot (fine servizio addizionale) | 
**startIdx** | **int** | Indice slot di inizio | 
**endIdx** | **int** | Indice slot di fine | 
**primaryServiceStart** | **String** | Orario inizio servizio primario | 
**primaryServiceEnd** | **String** | Orario fine servizio primario | 
**additionalServiceStart** | **String** | Orario inizio servizio addizionale | 
**additionalServiceEnd** | **String** | Orario fine servizio addizionale | 
**primaryWorkstationId** | **int** | ID postazione per servizio primario | 
**additionalWorkstationId** | **int** | ID postazione per servizio addizionale | 
**workstationIds** | **BuiltList&lt;int&gt;** | Lista di tutti gli ID postazioni coinvolte | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


