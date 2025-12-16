import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for AreeApi
void main() {
  final instance = BeautyflowApi().getAreeApi();

  group(AreeApi, () {
    // Disattiva modifica programmata
    //
    // Disattiva una modifica programmata senza eliminarla (soft delete)
    //
    //Future<DeleteResponse> areeConfigScheduledChangesPartialUpdate() async
    test('test areeConfigScheduledChangesPartialUpdate', () async {
      // TODO
    });

    // Ottieni le aree
    //
    // Ottieni le aree
    //
    //Future<BuiltList<Aree>> areeList(String object) async
    test('test areeList', () async {
      // TODO
    });

    // Ottieni le aree con max customer day view
    //
    // Ottieni tutte le aree secondarie (main_area=False) con il relativo max_customer_day_view
    //
    //Future<BuiltList<MaxCustomerDayViewResponse>> areeMaxCustomerDayViewList(String object) async
    test('test areeMaxCustomerDayViewList', () async {
      // TODO
    });

    // Aggiorna max customer day view
    //
    // Aggiorna il valore di max_customer_day_view per un'area specifica
    //
    //Future<UpdateMaxCustomerDayViewResponse> areeMaxCustomerDayViewUpdate(String object, UpdateMaxCustomerDayViewRequest updateMaxCustomerDayViewRequest) async
    test('test areeMaxCustomerDayViewUpdate', () async {
      // TODO
    });

  });
}
