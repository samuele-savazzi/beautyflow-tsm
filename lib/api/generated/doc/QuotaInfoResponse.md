# beautyflow_api.model.QuotaInfoResponse

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**planName** | **String** | Nome del piano commerciale corrente | 
**planExpiresAt** | **String** | Data di scadenza del piano | 
**billingCycle** | **String** | Ciclo di fatturazione (monthly/yearly/one_time) | 
**autoRenew** | **bool** | Rinnovo automatico attivo | 
**isActive** | **bool** | Quota attiva | 
**smsQuotaLimit** | **int** | Limite SMS totali | 
**smsQuotaUsed** | **int** | SMS già utilizzati | 
**smsQuotaRemaining** | **int** | SMS rimanenti | 
**smsLastResetDate** | **String** | Data ultimo reset SMS | 
**defaultMaxOperatorsPerArea** | **int** | Limite default operatori per area | 
**defaultMaxWorkstationsPerOperator** | **int** | Limite default workstation per operatore | 
**lastPaymentDate** | [**DateTime**](DateTime.md) | Data ultimo pagamento | 
**lastPaymentAmount** | **double** | Importo ultimo pagamento | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


