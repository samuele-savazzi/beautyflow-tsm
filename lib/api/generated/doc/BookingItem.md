# beautyflow_api.model.BookingItem

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID del booking | 
**bookingDate** | [**Date**](Date.md) | Data della prenotazione | 
**startTime** | **String** | Orario di inizio | 
**endTime** | **String** | Orario di fine | 
**durationMinutes** | **int** | Durata in minuti | 
**totalPrice** | **double** | Prezzo totale | 
**status** | **String** | Stato della prenotazione | 
**operatorName** | **String** | Nome completo dell'operatore | 
**operatorPhoto** | **String** | URL foto operatore | [optional] 
**areaName** | **String** | Nome dell'area | 
**primaryServiceName** | **String** | Nome del servizio principale | 
**additionalServiceName** | **String** | Nome del servizio aggiuntivo | [optional] 
**consultation** | **bool** | Se la prenotazione è una consultazione | 
**serviceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**additionalServiceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


