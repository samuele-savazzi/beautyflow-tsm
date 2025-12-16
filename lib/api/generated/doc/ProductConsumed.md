# beautyflow_api.model.ProductConsumed

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**productId** | **int** | ID del prodotto | 
**quantity** | **double** | Quantità consumata | 
**unitCost** | **double** | Costo unitario (opzionale, default da prodotto) | [optional] 
**salePricePerUnit** | **double** | Prezzo vendita unitario | [optional] 
**discountPercentage** | **double** | Sconto percentuale (0-100) | [optional] [default to '0.00']
**discountAmount** | **double** | Sconto fisso in euro | [optional] [default to '0.00']
**cashAmount** | **double** | Importo pagato in contanti per questo prodotto | [optional] [default to '0.00']
**cardAmount** | **double** | Importo pagato con carta per questo prodotto | [optional] [default to '0.00']
**soldByOperatorId** | **int** | ID operatore che ha effettuato la vendita (default: operatore del booking) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


