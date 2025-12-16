import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for WarehouseSuppliersApi
void main() {
  final instance = BeautyflowApi().getWarehouseSuppliersApi();

  group(WarehouseSuppliersApi, () {
    // Create new supplier
    //
    // Create a new supplier with basic contact information
    //
    //Future<SupplierCreated> supplierCreate(String object, SupplierCreate supplierCreate) async
    test('test supplierCreate', () async {
      // TODO
    });

    // Delete supplier
    //
    // Delete a supplier (soft delete by setting is_active=False)
    //
    //Future<SupplierDeleted> supplierDestroy(String object, int supplierId) async
    test('test supplierDestroy', () async {
      // TODO
    });

    // Get all suppliers
    //
    // Retrieve list of all suppliers with search options
    //
    //Future<SupplierListResponse> supplierRetrieve(String object, { bool activeOnly, String search }) async
    test('test supplierRetrieve', () async {
      // TODO
    });

    // Update supplier
    //
    // Update an existing supplier
    //
    //Future<SupplierUpdated> supplierUpdate(String object, int supplierId, SupplierUpdate supplierUpdate) async
    test('test supplierUpdate', () async {
      // TODO
    });

  });
}
