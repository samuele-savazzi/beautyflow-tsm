# beautyflow_api.model.CalendarBookingSlot

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slotStartIndex** | **int** | Slot start index (0-287) | 
**slotEndIndex** | **int** | Slot end index (0-287) | 
**startTime** | **String** | Start time (HH:MM) | 
**endTime** | **String** | End time (HH:MM) | 
**bookingId** | **int** | Booking ID | [optional] 
**customerId** | **int** | Customer ID | [optional] 
**customerName** | **String** | Customer full name | [optional] 
**serviceName** | **String** | Service name | [optional] 
**additionalServiceName** | **String** | Service name | [optional] 
**color** | **String** | Hex color for visualization | 
**isDisabled** | **bool** | True if workstation is disabled | [optional] [default to false]
**serviceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**additionalServiceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


