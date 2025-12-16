# beautyflow_api.model.OperatorDisabilityCreate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operatorId** | **int** |  | 
**reason** | **String** |  | 
**startDate** | [**Date**](Date.md) |  | 
**endDate** | [**Date**](Date.md) |  | [optional] 
**timeSlots** | [**BuiltList&lt;TimeSlotCreate&gt;**](TimeSlotCreate.md) |  | [optional] [default to ListBuilder()]
**isDaily** | **bool** |  | [optional] [default to false]
**morningStartTime** | **String** |  | [optional] 
**morningEndTime** | **String** |  | [optional] 
**afternoonStartTime** | **String** |  | [optional] 
**afternoonEndTime** | **String** |  | [optional] 
**areaId** | **int** | ID dell'area per la creazione delle fasce orarie | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


