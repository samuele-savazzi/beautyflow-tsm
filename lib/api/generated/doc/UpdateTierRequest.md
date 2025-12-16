# beautyflow_api.model.UpdateTierRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**icon** | **String** |  | [optional] 
**category** | [**CategoryE85Enum**](CategoryE85Enum.md) |  | [optional] 
**isActive** | **bool** |  | [optional] 
**isPublic** | **bool** |  | [optional] 
**isFeatured** | **bool** |  | [optional] 
**allowTrial** | **bool** |  | [optional] 
**trialDays** | **int** |  | [optional] 
**billingType** | [**BillingType874Enum**](BillingType874Enum.md) |  | [optional] 
**monthlyPrice** | **double** |  | [optional] 
**yearlyPrice** | **double** |  | [optional] 
**setupFee** | **double** |  | [optional] 
**hasUsageLimit** | **bool** |  | [optional] 
**usageLimit** | **int** |  | [optional] 
**usageUnit** | **String** |  | [optional] 
**features** | **BuiltList&lt;String&gt;** |  | [optional] 
**metadata** | [**JsonObject**](.md) |  | [optional] 
**sortOrder** | **int** |  | [optional] 
**documentationUrl** | **String** |  | [optional] 
**videoTutorialUrl** | **String** |  | [optional] 
**requiresTiers** | **BuiltList&lt;int&gt;** |  | [optional] 
**conflictsWith** | **BuiltList&lt;int&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


