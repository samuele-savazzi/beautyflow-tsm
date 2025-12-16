import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for WarehouseAlertsApi
void main() {
  final instance = BeautyflowApi().getWarehouseAlertsApi();

  group(WarehouseAlertsApi, () {
    // Get low stock alerts
    //
    // Retrieve products that need reordering based on minimum stock levels
    //
    //Future<LowStockAlert> warehouseAlertsLowStockRetrieve(String object) async
    test('test warehouseAlertsLowStockRetrieve', () async {
      // TODO
    });

  });
}
