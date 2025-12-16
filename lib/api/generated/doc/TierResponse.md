# beautyflow_api.model.TierResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**name** | **String** |  | 
**code** | **String** |  | 
**slug** | **String** |  | 
**description** | **String** |  | 
**icon** | **String** | Material icon name (es: analytics, integration_instructions) | 
**category** | [**CategoryD08Enum**](CategoryD08Enum.md) |  | 
**isActive** | **bool** |  | 
**isPublic** | **bool** | Visibile nel marketplace per acquisto self-service dai tenant | 
**isFeatured** | **bool** | In evidenza nel marketplace | 
**allowTrial** | **bool** |  | 
**trialDays** | **int** |  | 
**billingType** | [**BillingTypeEfcEnum**](BillingTypeEfcEnum.md) |  | 
**monthlyPrice** | **double** |  | 
**yearlyPrice** | **double** |  | 
**setupFee** | **double** |  | 
**hasUsageLimit** | **bool** |  | 
**usageLimit** | **int** | Limite uso mensile (es: 100 export PDF, 1000 chiamate API) | 
**usageUnit** | **String** | Unità di misura (es: \"chiamate API\", \"export PDF\", \"video consultazioni\") | 
**requiresTiers** | **String** |  | 
**conflictsWith** | **String** |  | 
**features** | [**JsonObject**](.md) | Lista feature in formato JSON: [\"Feature 1\", \"Feature 2\", ...] | 
**metadata** | [**JsonObject**](.md) |  | 
**sortOrder** | **int** |  | 
**documentationUrl** | **String** |  | 
**videoTutorialUrl** | **String** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**deletedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


