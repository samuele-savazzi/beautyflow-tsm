# beautyflow_api.api.AccountInformationApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountOperatorQuotaRetrieve**](AccountInformationApi.md#accountoperatorquotaretrieve) | **GET** /api/account/operator-quota/ | Verifica quota operatori per area
[**accountPaymentHistoryRetrieve**](AccountInformationApi.md#accountpaymenthistoryretrieve) | **GET** /api/account/payment-history/ | Storico pagamenti tenant
[**accountQuotaInfoRetrieve**](AccountInformationApi.md#accountquotainforetrieve) | **GET** /api/account/quota-info/ | Informazioni quota account
[**accountWorkstationQuotaRetrieve**](AccountInformationApi.md#accountworkstationquotaretrieve) | **GET** /api/account/workstation-quota/ | Verifica quota workstation per operatore


# **accountOperatorQuotaRetrieve**
> OperatorQuotaResponse accountOperatorQuotaRetrieve(areaId, object)

Verifica quota operatori per area

Restituisce informazioni sulla quota operatori per una specifica area: quanti operatori sono già assegnati e quanti se ne possono ancora aggiungere. Solo amministratori.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAccountInformationApi();
final int areaId = 56; // int | ID dell'area per cui verificare la quota operatori
final String object = object_example; // String | Parametro oggetto richiesto (deve essere \"quota_limits\")

try {
    final response = api.accountOperatorQuotaRetrieve(areaId, object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountInformationApi->accountOperatorQuotaRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaId** | **int**| ID dell'area per cui verificare la quota operatori | 
 **object** | **String**| Parametro oggetto richiesto (deve essere \"quota_limits\") | 

### Return type

[**OperatorQuotaResponse**](OperatorQuotaResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPaymentHistoryRetrieve**
> PaginatedPaymentHistoryResponse accountPaymentHistoryRetrieve(object, dateFrom, dateTo, page, pageSize, status, transactionType)

Storico pagamenti tenant

Restituisce lo storico pagamenti del tenant con supporto per paginazione e filtri avanzati (date range, tipo transazione, stato). Solo amministratori.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAccountInformationApi();
final String object = object_example; // String | Parametro oggetto richiesto (deve essere \"account_information\")
final String dateFrom = dateFrom_example; // String | Filtra transazioni dalla data (formato: YYYY-MM-DD)
final String dateTo = dateTo_example; // String | Filtra transazioni fino alla data (formato: YYYY-MM-DD)
final int page = 56; // int | Numero di pagina (default: 1)
final int pageSize = 56; // int | Elementi per pagina (default: 20, max: 100)
final String status = status_example; // String | Filtra per stato (pending, completed, failed, refunded)
final String transactionType = transactionType_example; // String | Filtra per tipo transazione (recharge_sms, renew_plan, upgrade_plan, downgrade_plan)

try {
    final response = api.accountPaymentHistoryRetrieve(object, dateFrom, dateTo, page, pageSize, status, transactionType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountInformationApi->accountPaymentHistoryRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto (deve essere \"account_information\") | 
 **dateFrom** | **String**| Filtra transazioni dalla data (formato: YYYY-MM-DD) | [optional] 
 **dateTo** | **String**| Filtra transazioni fino alla data (formato: YYYY-MM-DD) | [optional] 
 **page** | **int**| Numero di pagina (default: 1) | [optional] 
 **pageSize** | **int**| Elementi per pagina (default: 20, max: 100) | [optional] 
 **status** | **String**| Filtra per stato (pending, completed, failed, refunded) | [optional] 
 **transactionType** | **String**| Filtra per tipo transazione (recharge_sms, renew_plan, upgrade_plan, downgrade_plan) | [optional] 

### Return type

[**PaginatedPaymentHistoryResponse**](PaginatedPaymentHistoryResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountQuotaInfoRetrieve**
> QuotaInfoResponse accountQuotaInfoRetrieve(object)

Informazioni quota account

Restituisce tutte le informazioni sulla quota corrente del tenant (SMS, operatori, workstation, piano commerciale). Solo amministratori.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAccountInformationApi();
final String object = object_example; // String | Parametro oggetto richiesto (deve essere \"account_information\")

try {
    final response = api.accountQuotaInfoRetrieve(object);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountInformationApi->accountQuotaInfoRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto (deve essere \"account_information\") | 

### Return type

[**QuotaInfoResponse**](QuotaInfoResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountWorkstationQuotaRetrieve**
> WorkstationQuotaResponse accountWorkstationQuotaRetrieve(object, operatorId)

Verifica quota workstation per operatore

Restituisce informazioni sulla quota workstation per un specifico operatore: quante workstation sono già assegnate e quante se ne possono ancora aggiungere. Accessibile ad amministratori, titolari e segreteria.

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getAccountInformationApi();
final String object = object_example; // String | Parametro oggetto richiesto (deve essere \"quota_limits\")
final int operatorId = 56; // int | ID dell'operatore per cui verificare la quota workstation

try {
    final response = api.accountWorkstationQuotaRetrieve(object, operatorId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountInformationApi->accountWorkstationQuotaRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object** | **String**| Parametro oggetto richiesto (deve essere \"quota_limits\") | 
 **operatorId** | **int**| ID dell'operatore per cui verificare la quota workstation | 

### Return type

[**WorkstationQuotaResponse**](WorkstationQuotaResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

