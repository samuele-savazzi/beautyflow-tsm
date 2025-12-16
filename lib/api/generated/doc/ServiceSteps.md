# beautyflow_api.model.ServiceSteps

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stepId** | **int** | ID dello step | 
**stepName** | **String** | Nome dello step | 
**stepType** | **String** | Tipo di step (fixed, operator, category_fixed, category_operator, consultation) | 
**stepTime** | **int** | Tempo in minuti per questo step (solo per step senza categorie, con tempi personalizzati operatore se disponibili) | 
**categories** | [**BuiltList&lt;CategoryOption&gt;**](CategoryOption.md) | Lista delle categorie disponibili per questo step. Array vuoto per step senza categorie (FIXED, OPERATOR). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


