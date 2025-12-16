# beautyflow_api.api.CalendarApi

## Load the API package
```dart
import 'package:beautyflow_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availabilityCalendarDayRetrieve**](CalendarApi.md#availabilitycalendardayretrieve) | **GET** /api/availability/calendar/day/ | Calendario giornaliero booking slots


# **availabilityCalendarDayRetrieve**
> CalendarDayResponse availabilityCalendarDayRetrieve(date, object, operatorIds, workstationIds)

Calendario giornaliero booking slots

Returns booking slots grouped by operators and workstations for specified day, with colors based on customer_id

### Example
```dart
import 'package:beautyflow_api/api.dart';

final api = BeautyflowApi().getCalendarApi();
final Date date = 2013-10-20; // Date | Calendar date (YYYY-MM-DD)
final String object = object_example; // String | oggetto della richiesta
final String operatorIds = operatorIds_example; // String | List of operator IDs separated by comma (e.g: 1,2,3)
final String workstationIds = workstationIds_example; // String | List of workstation IDs separated by comma (e.g: 1,2,3)

try {
    final response = api.availabilityCalendarDayRetrieve(date, object, operatorIds, workstationIds);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CalendarApi->availabilityCalendarDayRetrieve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| Calendar date (YYYY-MM-DD) | 
 **object** | **String**| oggetto della richiesta | 
 **operatorIds** | **String**| List of operator IDs separated by comma (e.g: 1,2,3) | 
 **workstationIds** | **String**| List of workstation IDs separated by comma (e.g: 1,2,3) | 

### Return type

[**CalendarDayResponse**](CalendarDayResponse.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

