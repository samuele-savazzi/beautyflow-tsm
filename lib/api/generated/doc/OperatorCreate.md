# beautyflow_api.model.OperatorCreate

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**firstName** | **String** | Nome dell'operatore | 
**lastName** | **String** | Cognome dell'operatore | 
**role** | **int** | Ruolo dell'operatore in id | 
**mansion** | **String** | Mansione dell'operatore | 
**recoveryEmail** | **String** | Email di recupero | 
**birthDate** | [**Date**](Date.md) | Data di nascita | 
**isActive** | **bool** | Indica se l'operatore è attivo | [optional] [default to true]
**attachment** | **String** | Immagine dell'operatore in formato base64 | [optional] 
**workstations** | [**BuiltList&lt;WorkstationOperatorList&gt;**](WorkstationOperatorList.md) |  | [optional] [default to ListBuilder()]
**services** | [**BuiltList&lt;OperatorServiceWithSteps&gt;**](OperatorServiceWithSteps.md) | Lista dei servizi da associare all'operatore con relativi step e categorie | [optional] [default to ListBuilder()]
**workingAreas** | [**BuiltList&lt;OperatorAreaWorkingDay&gt;**](OperatorAreaWorkingDay.md) | Lista delle aree di lavoro con relativi orari | [optional] [default to ListBuilder()]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


