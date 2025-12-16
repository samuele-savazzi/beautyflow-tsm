import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for CalendarApi
void main() {
  final instance = BeautyflowApi().getCalendarApi();

  group(CalendarApi, () {
    // Calendario giornaliero booking slots
    //
    // Returns booking slots grouped by operators and workstations for specified day, with colors based on customer_id
    //
    //Future<CalendarDayResponse> availabilityCalendarDayRetrieve(Date date, String object, String operatorIds, String workstationIds) async
    test('test availabilityCalendarDayRetrieve', () async {
      // TODO
    });

  });
}
