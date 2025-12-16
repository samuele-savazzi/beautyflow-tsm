# beautyflow_api.model.ProfileResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin** | [**TenantAdminDetail**](TenantAdminDetail.md) |  | 
**requiresPasswordChange** | **bool** | True se deve cambiare password al prossimo login | 
**requires2faSetup** | **bool** | True se deve configurare 2FA (totp_enabled=False) | 
**sessionInfo** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Info sessione corrente (IP, last_activity, etc.) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


