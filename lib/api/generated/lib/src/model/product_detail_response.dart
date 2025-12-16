//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_detail_response.g.dart';

/// ProductDetailResponse
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [brand] 
/// * [sku] 
/// * [barcode] 
/// * [description] 
/// * [category] 
/// * [currentStock] 
/// * [minimumStock] 
/// * [maximumStock] 
/// * [unitOfMeasure] 
/// * [costPrice] 
/// * [effectiveCostPrice] 
/// * [bulkPurchaseCost] 
/// * [bulkPurchaseQuantity] 
/// * [sellingPrice] 
/// * [expirationMonths] 
/// * [isProfessionalUse] 
/// * [containsChemicals] 
/// * [allergens] 
/// * [primarySupplier] 
/// * [alternativeSuppliers] 
/// * [supplierCode] 
/// * [reorderPoint] 
/// * [stockStatus] 
/// * [stockValue] 
/// * [isActive] 
/// * [imageUrl] 
/// * [videoUrl] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ProductDetailResponse implements Built<ProductDetailResponse, ProductDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'brand')
  String get brand;

  @BuiltValueField(wireName: r'sku')
  String get sku;

  @BuiltValueField(wireName: r'barcode')
  String get barcode;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'category')
  BuiltMap<String, Map<String, dynamic>?> get category;

  @BuiltValueField(wireName: r'current_stock')
  double get currentStock;

  @BuiltValueField(wireName: r'minimum_stock')
  double get minimumStock;

  @BuiltValueField(wireName: r'maximum_stock')
  double? get maximumStock;

  @BuiltValueField(wireName: r'unit_of_measure')
  String get unitOfMeasure;

  @BuiltValueField(wireName: r'cost_price')
  double get costPrice;

  @BuiltValueField(wireName: r'effective_cost_price')
  double get effectiveCostPrice;

  @BuiltValueField(wireName: r'bulk_purchase_cost')
  double? get bulkPurchaseCost;

  @BuiltValueField(wireName: r'bulk_purchase_quantity')
  double? get bulkPurchaseQuantity;

  @BuiltValueField(wireName: r'selling_price')
  double? get sellingPrice;

  @BuiltValueField(wireName: r'expiration_months')
  int? get expirationMonths;

  @BuiltValueField(wireName: r'is_professional_use')
  bool get isProfessionalUse;

  @BuiltValueField(wireName: r'contains_chemicals')
  bool get containsChemicals;

  @BuiltValueField(wireName: r'allergens')
  String get allergens;

  @BuiltValueField(wireName: r'primary_supplier')
  BuiltMap<String, Map<String, dynamic>?>? get primarySupplier;

  @BuiltValueField(wireName: r'alternative_suppliers')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get alternativeSuppliers;

  @BuiltValueField(wireName: r'supplier_code')
  String get supplierCode;

  @BuiltValueField(wireName: r'reorder_point')
  double? get reorderPoint;

  @BuiltValueField(wireName: r'stock_status')
  String get stockStatus;

  @BuiltValueField(wireName: r'stock_value')
  double get stockValue;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: r'video_url')
  String? get videoUrl;

  @BuiltValueField(wireName: r'created_at')
  String get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  String get updatedAt;

  ProductDetailResponse._();

  factory ProductDetailResponse([void updates(ProductDetailResponseBuilder b)]) = _$ProductDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductDetailResponse> get serializer => _$ProductDetailResponseSerializer();
}

class _$ProductDetailResponseSerializer implements PrimitiveSerializer<ProductDetailResponse> {
  @override
  final Iterable<Type> types = const [ProductDetailResponse, _$ProductDetailResponse];

  @override
  final String wireName = r'ProductDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'brand';
    yield serializers.serialize(
      object.brand,
      specifiedType: const FullType(String),
    );
    yield r'sku';
    yield serializers.serialize(
      object.sku,
      specifiedType: const FullType(String),
    );
    yield r'barcode';
    yield serializers.serialize(
      object.barcode,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'current_stock';
    yield serializers.serialize(
      object.currentStock,
      specifiedType: const FullType(double),
    );
    yield r'minimum_stock';
    yield serializers.serialize(
      object.minimumStock,
      specifiedType: const FullType(double),
    );
    yield r'maximum_stock';
    yield object.maximumStock == null ? null : serializers.serialize(
      object.maximumStock,
      specifiedType: const FullType.nullable(double),
    );
    yield r'unit_of_measure';
    yield serializers.serialize(
      object.unitOfMeasure,
      specifiedType: const FullType(String),
    );
    yield r'cost_price';
    yield serializers.serialize(
      object.costPrice,
      specifiedType: const FullType(double),
    );
    yield r'effective_cost_price';
    yield serializers.serialize(
      object.effectiveCostPrice,
      specifiedType: const FullType(double),
    );
    yield r'bulk_purchase_cost';
    yield object.bulkPurchaseCost == null ? null : serializers.serialize(
      object.bulkPurchaseCost,
      specifiedType: const FullType.nullable(double),
    );
    yield r'bulk_purchase_quantity';
    yield object.bulkPurchaseQuantity == null ? null : serializers.serialize(
      object.bulkPurchaseQuantity,
      specifiedType: const FullType.nullable(double),
    );
    yield r'selling_price';
    yield object.sellingPrice == null ? null : serializers.serialize(
      object.sellingPrice,
      specifiedType: const FullType.nullable(double),
    );
    yield r'expiration_months';
    yield object.expirationMonths == null ? null : serializers.serialize(
      object.expirationMonths,
      specifiedType: const FullType.nullable(int),
    );
    yield r'is_professional_use';
    yield serializers.serialize(
      object.isProfessionalUse,
      specifiedType: const FullType(bool),
    );
    yield r'contains_chemicals';
    yield serializers.serialize(
      object.containsChemicals,
      specifiedType: const FullType(bool),
    );
    yield r'allergens';
    yield serializers.serialize(
      object.allergens,
      specifiedType: const FullType(String),
    );
    yield r'primary_supplier';
    yield object.primarySupplier == null ? null : serializers.serialize(
      object.primarySupplier,
      specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'alternative_suppliers';
    yield serializers.serialize(
      object.alternativeSuppliers,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'supplier_code';
    yield serializers.serialize(
      object.supplierCode,
      specifiedType: const FullType(String),
    );
    yield r'reorder_point';
    yield object.reorderPoint == null ? null : serializers.serialize(
      object.reorderPoint,
      specifiedType: const FullType.nullable(double),
    );
    yield r'stock_status';
    yield serializers.serialize(
      object.stockStatus,
      specifiedType: const FullType(String),
    );
    yield r'stock_value';
    yield serializers.serialize(
      object.stockValue,
      specifiedType: const FullType(double),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'image_url';
    yield object.imageUrl == null ? null : serializers.serialize(
      object.imageUrl,
      specifiedType: const FullType.nullable(String),
    );
    yield r'video_url';
    yield object.videoUrl == null ? null : serializers.serialize(
      object.videoUrl,
      specifiedType: const FullType.nullable(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductDetailResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'brand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brand = valueDes;
          break;
        case r'sku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sku = valueDes;
          break;
        case r'barcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.barcode = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.category.replace(valueDes);
          break;
        case r'current_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.currentStock = valueDes;
          break;
        case r'minimum_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minimumStock = valueDes;
          break;
        case r'maximum_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.maximumStock = valueDes;
          break;
        case r'unit_of_measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitOfMeasure = valueDes;
          break;
        case r'cost_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.costPrice = valueDes;
          break;
        case r'effective_cost_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.effectiveCostPrice = valueDes;
          break;
        case r'bulk_purchase_cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.bulkPurchaseCost = valueDes;
          break;
        case r'bulk_purchase_quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.bulkPurchaseQuantity = valueDes;
          break;
        case r'selling_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.sellingPrice = valueDes;
          break;
        case r'expiration_months':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.expirationMonths = valueDes;
          break;
        case r'is_professional_use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isProfessionalUse = valueDes;
          break;
        case r'contains_chemicals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.containsChemicals = valueDes;
          break;
        case r'allergens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.allergens = valueDes;
          break;
        case r'primary_supplier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>?;
          if (valueDes == null) continue;
          result.primarySupplier.replace(valueDes);
          break;
        case r'alternative_suppliers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.alternativeSuppliers.replace(valueDes);
          break;
        case r'supplier_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supplierCode = valueDes;
          break;
        case r'reorder_point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.reorderPoint = valueDes;
          break;
        case r'stock_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stockStatus = valueDes;
          break;
        case r'stock_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.stockValue = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'image_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'video_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.videoUrl = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductDetailResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

