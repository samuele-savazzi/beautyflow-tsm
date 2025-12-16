# beautyflow_api.model.ActivateTierRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tierId** | **int** | ID tier da attivare | 
**isTrial** | **bool** | Attiva in modalità trial | [optional] [default to false]
**billingCycle** | [**ActivateTierRequestBillingCycleEnum**](ActivateTierRequestBillingCycleEnum.md) |  | [optional] [default to ActivateTierRequestBillingCycleEnum.monthly]
**autoRenew** | **bool** | Rinnovo automatico | [optional] [default to true]
**expiresAt** | [**DateTime**](DateTime.md) | Data scadenza (opzionale) | [optional] 
**activationMetadata** | [**JsonObject**](.md) | Metadata attivazione | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


