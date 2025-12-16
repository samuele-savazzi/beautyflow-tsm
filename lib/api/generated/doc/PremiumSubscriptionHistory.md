# beautyflow_api.model.PremiumSubscriptionHistory

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**subscription** | **int** | Subscription premium di riferimento | 
**customer** | **int** | Cliente proprietario della subscription | 
**customerName** | **String** |  | 
**premiumType** | **int** | Piano premium associato | 
**premiumTypeName** | **String** |  | 
**movementType** | [**PremiumSubscriptionHistoryMovementTypeEnum**](PremiumSubscriptionHistoryMovementTypeEnum.md) |  | 
**movementTypeDisplay** | **String** |  | 
**periodStartDate** | **String** |  | 
**periodEndDate** | **String** |  | 
**periodDays** | **int** | Durata del periodo in giorni | 
**paidPrice** | **double** | Importo effettivamente pagato | 
**originalPrice** | **double** | Prezzo di listino del piano | 
**discountApplied** | **double** | Percentuale di sconto applicata | [optional] 
**discountAmount** | **String** |  | 
**totalSavings** | **String** |  | 
**notes** | **String** | Note aggiuntive sulla movimentazione | [optional] 
**createdBy** | **int** | Utente che ha effettuato l'operazione | 
**createdByName** | **String** |  | 
**createdAt** | **String** |  | 
**snapshotData** | [**JsonObject**](.md) | Snapshot dello stato al momento della movimentazione (operatori, sconti, etc.) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


