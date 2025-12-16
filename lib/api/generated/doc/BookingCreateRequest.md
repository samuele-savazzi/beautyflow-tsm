# beautyflow_api.model.BookingCreateRequest

## Load the model package
```dart
import 'package:beautyflow_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operatorId** | **int** | ID dell'operatore primario | 
**areaId** | **int** | ID dell'area | 
**additionalOperatorId** | **int** | ID operatore aggiuntivo per dual operators (esegue additionalService) | [optional] 
**bookingDate** | **String** | Data prenotazione (YYYY-MM-DD) | 
**startTime** | **String** | Orario inizio (HH:MM) | 
**totalPrice** | **double** | Prezzo totale | 
**primaryServiceId** | **int** | ID servizio primario | 
**additionalServiceId** | **int** | ID servizio aggiuntivo (opzionale, richiesto per dual operators) | [optional] 
**timesPrimaryService** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Lista tempi servizio primario con formato [{active: bool, time: int}] | 
**timesAdditionalService** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Lista tempi servizio aggiuntivo (richiesto se additional_operator_id) | [optional] 
**serviceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**additionalServiceStepsSnapshot** | [**BuiltList&lt;BuiltMap&lt;String, JsonObject&gt;&gt;**](BuiltMap.md) | Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}] | [optional] 
**primaryIdWorkstation** | **int** | ID postazione primaria | 
**secondaryIdWorkstation** | **int** | ID postazione secondaria (per additionalService con dual operators) | [optional] 
**customerId** | **int** | ID customer registrato (ometti per guest bookings) | [optional] 
**guestFirstName** | **String** | Nome guest (richiesto se non customer_id) | [optional] 
**guestLastName** | **String** | Cognome guest (richiesto se non customer_id) | [optional] 
**guestPhoneNumber** | **String** | Telefono guest (richiesto se non customer_id) | [optional] 
**consultationId** | **int** | ID consultazione da convertire in booking (opzionale) | [optional] 
**consultationServiceId** | **int** | ID servizio della consultazione (per dual operators: specifica a quale booking linkare) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


