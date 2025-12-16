# beautyflow_api.model.TenantAdminDetail

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**email** | **String** |  | 
**firstName** | **String** |  | 
**lastName** | **String** |  | 
**phoneNumber** | **String** |  | 
**role** | [**Role3daEnum**](Role3daEnum.md) |  | 
**roleDisplay** | **String** |  | 
**totpEnabled** | **bool** |  | 
**isActive** | **bool** |  | 
**mustChangePassword** | **bool** | Se True, l'admin deve cambiare password al prossimo login | 
**lastLoginAt** | [**DateTime**](DateTime.md) |  | 
**failedLoginAttempts** | **int** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**createdByEmail** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


