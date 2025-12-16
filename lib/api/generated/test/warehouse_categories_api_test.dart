import 'package:test/test.dart';
import 'package:beautyflow_api/beautyflow_api.dart';


/// tests for WarehouseCategoriesApi
void main() {
  final instance = BeautyflowApi().getWarehouseCategoriesApi();

  group(WarehouseCategoriesApi, () {
    // Create new product category
    //
    // Create a new product category
    //
    //Future<CategoryCreated> warehouseCategoriesCreate(String object, CategoryCreate categoryCreate) async
    test('test warehouseCategoriesCreate', () async {
      // TODO
    });

    // Delete product category
    //
    // Delete a product category (only if no products are associated)
    //
    //Future<CategoryDeleted> warehouseCategoriesDestroy(int categoryId, String object) async
    test('test warehouseCategoriesDestroy', () async {
      // TODO
    });

    // Get all product categories
    //
    // Retrieve list of all product categories with filtering options
    //
    //Future<BuiltList<ProductCategoryList>> warehouseCategoriesList(String object, { int areaId, String warehouseType }) async
    test('test warehouseCategoriesList', () async {
      // TODO
    });

    // Update product category
    //
    // Update an existing product category
    //
    //Future<CategoryUpdated> warehouseCategoriesUpdate(int categoryId, String object, CategoryUpdate categoryUpdate) async
    test('test warehouseCategoriesUpdate', () async {
      // TODO
    });

  });
}
