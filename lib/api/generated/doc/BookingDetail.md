# beautyflow_api.model.BookingDetail

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**bookingDate** | **String** |  | 
**startTime** | **String** |  | 
**endTime** | **String** |  | 
**durationMinutes** | **int** |  | 
**totalPrice** | **double** |  | 
**status** | **String** |  | 
**operatorName** | **String** |  | 
**operatorPhoto** | **String** |  | 
**areaName** | **String** |  | 
**primaryServiceName** | **String** |  | 
**additionalServiceName** | **String** |  | 
**workstationName** | **String** |  | 
**notes** | **String** |  | 
**serviceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**additionalServiceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


