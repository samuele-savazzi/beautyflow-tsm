import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for WarehouseMovementsApi
void main() {
  final instance = BeautyflowApi().getWarehouseMovementsApi();

  group(WarehouseMovementsApi, () {
    // Create movement correction
    //
    // Create a correction for an existing warehouse movement
    //
    //Future<CorrectionCreated> warehouseMovementsCorrectionsCreate(String object, MovementCorrection movementCorrection) async
    test('test warehouseMovementsCorrectionsCreate', () async {
      // TODO
    });

    // Create warehouse movement
    //
    // Create a new warehouse movement (stock in/out)
    //
    //Future<MovementCreated> warehouseMovementsCreate(String object, MovementCreate movementCreate) async
    test('test warehouseMovementsCreate', () async {
      // TODO
    });

    // Delete warehouse movement
    //
    // Delete a warehouse movement (operators can only delete their own movements)
    //
    //Future<MovementDeleted> warehouseMovementsDestroy(int movementId, String object) async
    test('test warehouseMovementsDestroy', () async {
      // TODO
    });

    // Get paginated warehouse movements
    //
    // Retrieve paginated list of warehouse movements with filtering options
    //
    //Future<MovementListResponse> warehouseMovementsRetrieve(String object, { int areaId, Date dateFrom, Date dateTo, String movementType, int page, int pageSize, int productId }) async
    test('test warehouseMovementsRetrieve', () async {
      // TODO
    });

  });
}
