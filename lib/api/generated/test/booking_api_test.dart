import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for BookingApi
void main() {
  final instance = BeautyflowApi().getBookingApi();

  group(BookingApi, () {
    // Ottieni aree con calendario operatori per 2 mesi
    //
    // Restituisce tutte le aree con il calendario dettagliato dei giorni lavorativi di ogni operatore per i prossimi 2 mesi
    //
    //Future<AreasWithOperatorSchedule> bookingAreeRetrieve(String object, { int areaId, String endDate, String startDate }) async
    test('test bookingAreeRetrieve', () async {
      // TODO
    });

    // Ottieni servizi con dettagli per operatori
    //
    // Restituisce tutti i servizi con tempi, prezzi e postazioni per operatori specifici di un'area
    //
    //Future<ServicesAreaResponse> bookingServicesRetrieve(int areaId, String object, String operatorIds) async
    test('test bookingServicesRetrieve', () async {
      // TODO
    });

  });
}
