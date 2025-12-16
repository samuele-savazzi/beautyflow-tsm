# beautyflow_api.model.TenantTierDetail

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**tenant** | **int** |  | 
**tenantName** | **String** |  | 
**tier** | [**TierListItem**](TierListItem.md) |  | 
**isActive** | **bool** |  | 
**isTrial** | **bool** |  | 
**activatedAt** | [**DateTime**](DateTime.md) |  | 
**expiresAt** | [**DateTime**](DateTime.md) |  | 
**trialEndsAt** | [**DateTime**](DateTime.md) |  | 
**lastRenewedAt** | [**DateTime**](DateTime.md) |  | 
**billingCycle** | [**TenantTierDetailBillingCycleEnum**](TenantTierDetailBillingCycleEnum.md) |  | 
**autoRenew** | **bool** |  | 
**nextBillingDate** | [**Date**](Date.md) |  | 
**usageCount** | **int** |  | 
**usageResetDate** | [**Date**](Date.md) |  | 
**lastPaymentAmount** | **double** |  | 
**lastPaymentDate** | [**DateTime**](DateTime.md) |  | 
**cancelledAt** | [**DateTime**](DateTime.md) |  | 
**cancellationReason** | **String** |  | 
**activationMetadata** | [**JsonObject**](.md) | Metadata attivazione: {\"activated_by_admin\": 5, \"type\": \"manual\", \"reason\": \"Demo\"} | 
**canUse** | **String** |  | 
**usageStatus** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


