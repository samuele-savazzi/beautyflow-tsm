# beautyflow_api.model.TestNotificationRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**visibility** | [**VisibilityEnum**](VisibilityEnum.md) |  | [optional] [default to VisibilityEnum.individual]
**testBulk** | **bool** | Se True, testa l'invio in bulk per gruppi di utenti | [optional] [default to false]
**rolesFilter** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Dizionario con filtri per ruoli (es. {\"is_admin\": true}) | [optional] 
**areas** | **BuiltList&lt;int&gt;** | Lista di ID aree da includere nel test | [optional] 
**userId** | **int** | ID utente a cui inviare le notifiche (solo per test individuali) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


