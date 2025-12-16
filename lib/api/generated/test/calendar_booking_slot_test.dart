import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';

// tests for CalendarBookingSlot
void main() {
  final instance = CalendarBookingSlotBuilder();
  // TODO add properties to the builder and call build()

  group(CalendarBookingSlot, () {
    // Slot start index (0-287)
    // int slotStartIndex
    test('to test the property `slotStartIndex`', () async {
      // TODO
    });

    // Slot end index (0-287)
    // int slotEndIndex
    test('to test the property `slotEndIndex`', () async {
      // TODO
    });

    // Start time (HH:MM)
    // String startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

    // End time (HH:MM)
    // String endTime
    test('to test the property `endTime`', () async {
      // TODO
    });

    // Booking ID
    // int bookingId
    test('to test the property `bookingId`', () async {
      // TODO
    });

    // Customer ID
    // int customerId
    test('to test the property `customerId`', () async {
      // TODO
    });

    // Customer full name
    // String customerName
    test('to test the property `customerName`', () async {
      // TODO
    });

    // Service name
    // String serviceName
    test('to test the property `serviceName`', () async {
      // TODO
    });

    // Service name
    // String additionalServiceName
    test('to test the property `additionalServiceName`', () async {
      // TODO
    });

    // Hex color for visualization
    // String color
    test('to test the property `color`', () async {
      // TODO
    });

    // True if workstation is disabled
    // bool isDisabled (default value: false)
    test('to test the property `isDisabled`', () async {
      // TODO
    });

    // Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
    // BuiltList<BuiltMap<String, JsonObject>> serviceStepsSnapshot
    test('to test the property `serviceStepsSnapshot`', () async {
      // TODO
    });

    // Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
    // BuiltList<BuiltMap<String, JsonObject>> additionalServiceStepsSnapshot
    test('to test the property `additionalServiceStepsSnapshot`', () async {
      // TODO
    });

  });
}
