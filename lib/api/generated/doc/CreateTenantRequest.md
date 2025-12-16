# beautyflow_api.model.CreateTenantRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Nome tenant | 
**domain** | **String** | Dominio (es: cliente1) | 
**type** | [**TypeEnum**](TypeEnum.md) |  | 
**registeredOffice** | **String** | Sede legale | [optional] 
**adminEmail** | **String** | Email utente admin | 
**adminPhone** | **String** | Telefono admin | 
**adminFirstName** | **String** |  | 
**adminLastName** | **String** |  | 
**quotaTypeCode** | **String** | Codice piano (es: FREE, BASIC, PRO) | 
**billingType** | [**CreateTenantRequestBillingTypeEnum**](CreateTenantRequestBillingTypeEnum.md) |  | [optional] [default to CreateTenantRequestBillingTypeEnum.trial]
**billingDuration** | **int** | Durata in anni (solo per billing_type='custom' o 'yearly'). Default: 1 anno | [optional] 
**areas** | [**BuiltList&lt;AreaConfig&gt;**](AreaConfig.md) | Lista aree da creare | 
**theme** | [**JsonObject**](.md) |  | [optional] 
**favicon** | **String** | File favicon (PNG, ICO, SVG) - max 2MB | [optional] 
**logo** | **String** | File logo (PNG, JPG, SVG) - max 5MB | [optional] 
**darkLogo** | **String** | File dark logo (PNG, JPG, SVG) - max 5MB | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


