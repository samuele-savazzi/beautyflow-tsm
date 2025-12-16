# beautyflow_api.model.PremiumSubscription

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**customer** | [**CustomerBasic**](CustomerBasic.md) |  | 
**customerId** | **int** |  | 
**premiumType** | [**PremiumTypeNested**](PremiumTypeNested.md) |  | 
**premiumTypeId** | **int** |  | 
**startDate** | **String** |  | 
**endDate** | **String** |  | 
**paidPrice** | **double** |  | 
**active** | **bool** |  | [optional] 
**daysRemaining** | **int** | Giorni rimanenti della subscription | 
**createdAt** | **String** |  | 
**notes** | **String** | Note sulla creazione della subscription (salvate nello storico) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


