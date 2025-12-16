# beautyflow_api.model.PatchedPremiumSubscription

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**customer** | [**CustomerBasic**](CustomerBasic.md) |  | [optional] 
**customerId** | **int** |  | [optional] 
**premiumType** | [**PremiumTypeNested**](PremiumTypeNested.md) |  | [optional] 
**premiumTypeId** | **int** |  | [optional] 
**startDate** | **String** |  | [optional] 
**endDate** | **String** |  | [optional] 
**paidPrice** | **double** |  | [optional] 
**active** | **bool** |  | [optional] 
**daysRemaining** | **int** | Giorni rimanenti della subscription | [optional] 
**createdAt** | **String** |  | [optional] 
**notes** | **String** | Note sulla creazione della subscription (salvate nello storico) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


