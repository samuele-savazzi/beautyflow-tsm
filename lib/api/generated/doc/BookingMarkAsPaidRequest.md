# beautyflow_api.model.BookingMarkAsPaidRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bookingId** | **int** | ID del booking da pagare | 
**cashAmount** | **double** | Importo pagato in contanti | [optional] [default to '0.00']
**cardAmount** | **double** | Importo pagato con carta | [optional] [default to '0.00']
**productsConsumed** | [**BuiltList&lt;ProductConsumed&gt;**](ProductConsumed.md) | Lista prodotti consumati/venduti | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


