# beautyflow_api.model.DiscountTypeCreate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Nome del tipo di sconto | 
**valueType** | [**ValueTypeEnum**](ValueTypeEnum.md) |  | 
**discountType** | [**DiscountTypeEnum**](DiscountTypeEnum.md) |  | 
**percentageValue** | **double** | Valore percentuale (es. 20.00 per 20%) | [optional] 
**fixedValue** | **double** | Valore fisso in euro | [optional] 
**expirationType** | [**ExpirationTypeEnum**](ExpirationTypeEnum.md) |  | 
**expirationValue** | **int** | Numero di giorni o mesi per la scadenza | [optional] 
**stackable** | **bool** | Se può essere usato insieme ad altri sconti stackable | [optional] [default to false]
**combinable** | **bool** | Se può essere combinato con altri sconti dello stesso tipo | [optional] [default to false]
**active** | **bool** |  | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


