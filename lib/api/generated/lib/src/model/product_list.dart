//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list.g.dart';

/// ProductList
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [brand] 
/// * [sku] 
/// * [barcode] 
/// * [category] 
/// * [currentStock] 
/// * [minimumStock] 
/// * [unitOfMeasure] 
/// * [unitOfMeasureDisplay] 
/// * [costPrice] 
/// * [effectiveCostPrice] 
/// * [bulkPurchaseCost] 
/// * [bulkPurchaseQuantity] 
/// * [sellingPrice] 
/// * [stockStatus] 
/// * [isLowStock] 
/// * [needsReorder] 
/// * [stockValue] 
/// * [isActive] 
/// * [imageUrl] 
@BuiltValue()
abstract class ProductList implements Built<ProductList, ProductListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'brand')
  String? get brand;

  @BuiltValueField(wireName: r'sku')
  String? get sku;

  @BuiltValueField(wireName: r'barcode')
  String? get barcode;

  @BuiltValueField(wireName: r'category')
  BuiltMap<String, Map<String, dynamic>?> get category;

  @BuiltValueField(wireName: r'current_stock')
  double get currentStock;

  @BuiltValueField(wireName: r'minimum_stock')
  double get minimumStock;

  @BuiltValueField(wireName: r'unit_of_measure')
  String get unitOfMeasure;

  @BuiltValueField(wireName: r'unit_of_measure_display')
  String get unitOfMeasureDisplay;

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

  @BuiltValueField(wireName: r'stock_status')
  String get stockStatus;

  @BuiltValueField(wireName: r'is_low_stock')
  bool get isLowStock;

  @BuiltValueField(wireName: r'needs_reorder')
  bool get needsReorder;

  @BuiltValueField(wireName: r'stock_value')
  double get stockValue;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'image_url')
  String? get imageUrl;

  ProductList._();

  factory ProductList([void updates(ProductListBuilder b)]) = _$ProductList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductList> get serializer => _$ProductListSerializer();
}

class _$ProductListSerializer implements PrimitiveSerializer<ProductList> {
  @override
  final Iterable<Type> types = const [ProductList, _$ProductList];

  @override
  final String wireName = r'ProductList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductList object, {
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
    yield object.brand == null ? null : serializers.serialize(
      object.brand,
      specifiedType: const FullType.nullable(String),
    );
    yield r'sku';
    yield object.sku == null ? null : serializers.serialize(
      object.sku,
      specifiedType: const FullType.nullable(String),
    );
    yield r'barcode';
    yield object.barcode == null ? null : serializers.serialize(
      object.barcode,
      specifiedType: const FullType.nullable(String),
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
    yield r'unit_of_measure';
    yield serializers.serialize(
      object.unitOfMeasure,
      specifiedType: const FullType(String),
    );
    yield r'unit_of_measure_display';
    yield serializers.serialize(
      object.unitOfMeasureDisplay,
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
    yield r'stock_status';
    yield serializers.serialize(
      object.stockStatus,
      specifiedType: const FullType(String),
    );
    yield r'is_low_stock';
    yield serializers.serialize(
      object.isLowStock,
      specifiedType: const FullType(bool),
    );
    yield r'needs_reorder';
    yield serializers.serialize(
      object.needsReorder,
      specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.brand = valueDes;
          break;
        case r'sku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sku = valueDes;
          break;
        case r'barcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.barcode = valueDes;
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
        case r'unit_of_measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitOfMeasure = valueDes;
          break;
        case r'unit_of_measure_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitOfMeasureDisplay = valueDes;
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
        case r'stock_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stockStatus = valueDes;
          break;
        case r'is_low_stock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLowStock = valueDes;
          break;
        case r'needs_reorder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.needsReorder = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListBuilder();
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

