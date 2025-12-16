//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/unit_of_measure_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_create.g.dart';

/// ProductCreate
///
/// Properties:
/// * [categoryId] 
/// * [name] 
/// * [brand] 
/// * [sku] 
/// * [barcode] 
/// * [description] 
/// * [image] - Product image in base64 format (data:image/jpeg;base64,...)
/// * [promotionalVideo] - Promotional video in base64 format (data:video/mp4;base64,...)
/// * [unitOfMeasure] 
/// * [currentStock] 
/// * [minimumStock] 
/// * [maximumStock] 
/// * [costPrice] 
/// * [sellingPrice] 
/// * [bulkPurchaseCost] - Total cost for bulk purchase (e.g., €30 for a box)
/// * [bulkPurchaseQuantity] - Quantity purchased for that cost (e.g., 20 pcs)
/// * [expirationMonths] 
/// * [isProfessionalUse] 
/// * [containsChemicals] 
/// * [allergens] 
/// * [primarySupplierId] 
/// * [alternativeSupplierIds] - List of alternative supplier IDs
/// * [supplierCode] 
/// * [reorderPoint] 
@BuiltValue()
abstract class ProductCreate implements Built<ProductCreate, ProductCreateBuilder> {
  @BuiltValueField(wireName: r'category_id')
  int get categoryId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'brand')
  String? get brand;

  @BuiltValueField(wireName: r'sku')
  String? get sku;

  @BuiltValueField(wireName: r'barcode')
  String? get barcode;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Product image in base64 format (data:image/jpeg;base64,...)
  @BuiltValueField(wireName: r'image')
  String? get image;

  /// Promotional video in base64 format (data:video/mp4;base64,...)
  @BuiltValueField(wireName: r'promotional_video')
  String? get promotionalVideo;

  @BuiltValueField(wireName: r'unit_of_measure')
  UnitOfMeasureEnum? get unitOfMeasure;
  // enum unitOfMeasureEnum {  PCS,  ML,  L,  GR,  KG,  BOX,  BOTTLE,  TUBE,  };

  @BuiltValueField(wireName: r'current_stock')
  double? get currentStock;

  @BuiltValueField(wireName: r'minimum_stock')
  double? get minimumStock;

  @BuiltValueField(wireName: r'maximum_stock')
  double? get maximumStock;

  @BuiltValueField(wireName: r'cost_price')
  double? get costPrice;

  @BuiltValueField(wireName: r'selling_price')
  double? get sellingPrice;

  /// Total cost for bulk purchase (e.g., €30 for a box)
  @BuiltValueField(wireName: r'bulk_purchase_cost')
  double? get bulkPurchaseCost;

  /// Quantity purchased for that cost (e.g., 20 pcs)
  @BuiltValueField(wireName: r'bulk_purchase_quantity')
  double? get bulkPurchaseQuantity;

  @BuiltValueField(wireName: r'expiration_months')
  int? get expirationMonths;

  @BuiltValueField(wireName: r'is_professional_use')
  bool? get isProfessionalUse;

  @BuiltValueField(wireName: r'contains_chemicals')
  bool? get containsChemicals;

  @BuiltValueField(wireName: r'allergens')
  String? get allergens;

  @BuiltValueField(wireName: r'primary_supplier_id')
  int? get primarySupplierId;

  /// List of alternative supplier IDs
  @BuiltValueField(wireName: r'alternative_supplier_ids')
  BuiltList<int>? get alternativeSupplierIds;

  @BuiltValueField(wireName: r'supplier_code')
  String? get supplierCode;

  @BuiltValueField(wireName: r'reorder_point')
  double? get reorderPoint;

  ProductCreate._();

  factory ProductCreate([void updates(ProductCreateBuilder b)]) = _$ProductCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductCreateBuilder b) => b
      ..unitOfMeasure = UnitOfMeasureEnum.PCS
      ..currentStock = 0.00
      ..minimumStock = 0.00
      ..costPrice = 0.00
      ..isProfessionalUse = false
      ..containsChemicals = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductCreate> get serializer => _$ProductCreateSerializer();
}

class _$ProductCreateSerializer implements PrimitiveSerializer<ProductCreate> {
  @override
  final Iterable<Type> types = const [ProductCreate, _$ProductCreate];

  @override
  final String wireName = r'ProductCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'category_id';
    yield serializers.serialize(
      object.categoryId,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.brand != null) {
      yield r'brand';
      yield serializers.serialize(
        object.brand,
        specifiedType: const FullType(String),
      );
    }
    if (object.sku != null) {
      yield r'sku';
      yield serializers.serialize(
        object.sku,
        specifiedType: const FullType(String),
      );
    }
    if (object.barcode != null) {
      yield r'barcode';
      yield serializers.serialize(
        object.barcode,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(String),
      );
    }
    if (object.promotionalVideo != null) {
      yield r'promotional_video';
      yield serializers.serialize(
        object.promotionalVideo,
        specifiedType: const FullType(String),
      );
    }
    if (object.unitOfMeasure != null) {
      yield r'unit_of_measure';
      yield serializers.serialize(
        object.unitOfMeasure,
        specifiedType: const FullType(UnitOfMeasureEnum),
      );
    }
    if (object.currentStock != null) {
      yield r'current_stock';
      yield serializers.serialize(
        object.currentStock,
        specifiedType: const FullType(double),
      );
    }
    if (object.minimumStock != null) {
      yield r'minimum_stock';
      yield serializers.serialize(
        object.minimumStock,
        specifiedType: const FullType(double),
      );
    }
    if (object.maximumStock != null) {
      yield r'maximum_stock';
      yield serializers.serialize(
        object.maximumStock,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.costPrice != null) {
      yield r'cost_price';
      yield serializers.serialize(
        object.costPrice,
        specifiedType: const FullType(double),
      );
    }
    if (object.sellingPrice != null) {
      yield r'selling_price';
      yield serializers.serialize(
        object.sellingPrice,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.bulkPurchaseCost != null) {
      yield r'bulk_purchase_cost';
      yield serializers.serialize(
        object.bulkPurchaseCost,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.bulkPurchaseQuantity != null) {
      yield r'bulk_purchase_quantity';
      yield serializers.serialize(
        object.bulkPurchaseQuantity,
        specifiedType: const FullType.nullable(double),
      );
    }
    if (object.expirationMonths != null) {
      yield r'expiration_months';
      yield serializers.serialize(
        object.expirationMonths,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isProfessionalUse != null) {
      yield r'is_professional_use';
      yield serializers.serialize(
        object.isProfessionalUse,
        specifiedType: const FullType(bool),
      );
    }
    if (object.containsChemicals != null) {
      yield r'contains_chemicals';
      yield serializers.serialize(
        object.containsChemicals,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allergens != null) {
      yield r'allergens';
      yield serializers.serialize(
        object.allergens,
        specifiedType: const FullType(String),
      );
    }
    if (object.primarySupplierId != null) {
      yield r'primary_supplier_id';
      yield serializers.serialize(
        object.primarySupplierId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.alternativeSupplierIds != null) {
      yield r'alternative_supplier_ids';
      yield serializers.serialize(
        object.alternativeSupplierIds,
        specifiedType: const FullType(BuiltList, [FullType(int)]),
      );
    }
    if (object.supplierCode != null) {
      yield r'supplier_code';
      yield serializers.serialize(
        object.supplierCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.reorderPoint != null) {
      yield r'reorder_point';
      yield serializers.serialize(
        object.reorderPoint,
        specifiedType: const FullType.nullable(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'category_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'promotional_video':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.promotionalVideo = valueDes;
          break;
        case r'unit_of_measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnitOfMeasureEnum),
          ) as UnitOfMeasureEnum;
          result.unitOfMeasure = valueDes;
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
        case r'cost_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.costPrice = valueDes;
          break;
        case r'selling_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.sellingPrice = valueDes;
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
        case r'primary_supplier_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.primarySupplierId = valueDes;
          break;
        case r'alternative_supplier_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.alternativeSupplierIds.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductCreateBuilder();
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

