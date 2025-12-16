# beautyflow_api.model.TodayBookingDetail

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**bookingDate** | [**Date**](Date.md) |  | 
**startTime** | **String** |  | 
**endTime** | **String** |  | 
**durationMinutes** | **int** |  | 
**status** | **String** |  | 
**customerId** | **int** |  | [optional] 
**customerName** | **String** |  | 
**customerPhone** | **String** |  | [optional] 
**customerEmail** | **String** |  | [optional] 
**isGuest** | **bool** |  | 
**operatorId** | **int** |  | 
**operatorName** | **String** |  | 
**operatorPhoto** | **String** |  | [optional] 
**additionalOperatorId** | **int** |  | [optional] 
**additionalOperatorName** | **String** |  | [optional] 
**serviceId** | **int** |  | 
**serviceName** | **String** |  | 
**additionalServiceId** | **int** |  | [optional] 
**additionalServiceName** | **String** |  | [optional] 
**workstationId** | **int** |  | [optional] 
**workstationName** | **String** |  | [optional] 
**totalPrice** | **double** |  | 
**paymentMethod** | **String** |  | [optional] 
**cashAmount** | **double** |  | 
**cardAmount** | **double** |  | 
**isConsultation** | **bool** |  | 
**productsSold** | [**BuiltList&lt;ProductSale&gt;**](ProductSale.md) |  | 
**totalProductsRevenue** | **double** |  | 
**notes** | **String** |  | [optional] 
**serviceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**additionalServiceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


