import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for WarehouseSalesApi
void main() {
  final instance = BeautyflowApi().getWarehouseSalesApi();

  group(WarehouseSalesApi, () {
    // Storico acquisti customer
    //
    // Restituisce lo storico prodotti acquistati da un customer (vendite dirette + booking)
    //
    //Future<CustomerPurchaseHistoryResponse> warehouseSalesCustomerHistoryRetrieve(int customerId, String object, { int page, int pageSize }) async
    test('test warehouseSalesCustomerHistoryRetrieve', () async {
      // TODO
    });

    // Crea vendita diretta
    //
    // Crea una vendita diretta di prodotti non associata a un booking
    //
    //Future<DirectSaleResponse> warehouseSalesDirectCreate(String object, DirectSaleRequest directSaleRequest) async
    test('test warehouseSalesDirectCreate', () async {
      // TODO
    });

  });
}
