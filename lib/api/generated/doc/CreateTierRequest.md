# beautyflow_api.model.CreateTierRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Nome tier (es. 'Integrazione WhatsApp') | 
**code** | **String** | Codice univoco (es. 'WHATSAPP_INTEGRATION') | 
**description** | **String** | Descrizione dettagliata tier | 
**icon** | **String** | Material icon name (es. 'whatsapp') | 
**category** | [**CategoryE85Enum**](CategoryE85Enum.md) |  | 
**isActive** | **bool** | Tier attivo | [optional] [default to true]
**isPublic** | **bool** | Visibile nel marketplace | [optional] [default to false]
**isFeatured** | **bool** | In evidenza | [optional] [default to false]
**allowTrial** | **bool** | Permetti trial gratuito | [optional] [default to false]
**trialDays** | **int** | Giorni trial (se allow_trial=True) | [optional] 
**billingType** | [**BillingType874Enum**](BillingType874Enum.md) |  | [optional] [default to BillingType874Enum.monthly]
**monthlyPrice** | **double** | Prezzo mensile (€) | [optional] [default to '0.00']
**yearlyPrice** | **double** | Prezzo annuale (€) | [optional] [default to '0.00']
**setupFee** | **double** | Costo setup iniziale (€) | [optional] [default to '0.00']
**hasUsageLimit** | **bool** | Ha limite utilizzo | [optional] [default to false]
**usageLimit** | **int** | Limite utilizzo (se has_usage_limit=True) | [optional] 
**usageUnit** | **String** | Unità misura (es. 'messaggi WhatsApp') | [optional] 
**features** | **BuiltList&lt;String&gt;** | Lista feature (es. [\"Invio messaggi\", \"Template personalizzati\"]) | [optional] 
**metadata** | [**JsonObject**](.md) | Metadata custom | [optional] 
**sortOrder** | **int** | Ordine visualizzazione | [optional] [default to 0]
**documentationUrl** | **String** | URL documentazione | [optional] 
**videoTutorialUrl** | **String** | URL video tutorial | [optional] 
**requiresTiers** | **BuiltList&lt;int&gt;** | IDs tier richiesti | [optional] 
**conflictsWith** | **BuiltList&lt;int&gt;** | IDs tier conflittuali | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


