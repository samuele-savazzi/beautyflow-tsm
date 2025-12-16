//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_sale.g.dart';

/// Serializer per prodotto venduto nel movimento
///
/// Properties:
/// * [productId] 
/// * [productName] 
/// * [quantity] 
/// * [unit] 
/// * [unitCost] 
/// * [salePricePerUnit] 
/// * [discountPercentage] 
/// * [discountAmount] 
/// * [totalBeforeDiscount] 
/// * [totalAfterDiscount] 
/// * [cashAmount] 
/// * [cardAmount] 
/// * [soldByOperatorId] 
/// * [soldByOperatorName] 
@BuiltValue()
abstract class ProductSale implements Built<ProductSale, ProductSaleBuilder> {
  @BuiltValueField(wireName: r'product_id')
  int get productId;

  @BuiltValueField(wireName: r'product_name')
  String get productName;

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'unit')
  String get unit;

  @BuiltValueField(wireName: r'unit_cost')
  double get unitCost;

  @BuiltValueField(wireName: r'sale_price_per_unit')
  double get salePricePerUnit;

  @BuiltValueField(wireName: r'discount_percentage')
  double get discountPercentage;

  @BuiltValueField(wireName: r'discount_amount')
  double get discountAmount;

  @BuiltValueField(wireName: r'total_before_discount')
  double get totalBeforeDiscount;

  @BuiltValueField(wireName: r'total_after_discount')
  double get totalAfterDiscount;

  @BuiltValueField(wireName: r'cash_amount')
  double get cashAmount;

  @BuiltValueField(wireName: r'card_amount')
  double get cardAmount;

  @BuiltValueField(wireName: r'sold_by_operator_id')
  int? get soldByOperatorId;

  @BuiltValueField(wireName: r'sold_by_operator_name')
  String? get soldByOperatorName;

  ProductSale._();

  factory ProductSale([void updates(ProductSaleBuilder b)]) = _$ProductSale;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductSaleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductSale> get serializer => _$ProductSaleSerializer();
}

class _$ProductSaleSerializer implements PrimitiveSerializer<ProductSale> {
  @override
  final Iterable<Type> types = const [ProductSale, _$ProductSale];

  @override
  final String wireName = r'ProductSale';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductSale object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'product_id';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(int),
    );
    yield r'product_name';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(String),
    );
    yield r'unit_cost';
    yield serializers.serialize(
      object.unitCost,
      specifiedType: const FullType(double),
    );
    yield r'sale_price_per_unit';
    yield serializers.serialize(
      object.salePricePerUnit,
      specifiedType: const FullType(double),
    );
    yield r'discount_percentage';
    yield serializers.serialize(
      object.discountPercentage,
      specifiedType: const FullType(double),
    );
    yield r'discount_amount';
    yield serializers.serialize(
      object.discountAmount,
      specifiedType: const FullType(double),
    );
    yield r'total_before_discount';
    yield serializers.serialize(
      object.totalBeforeDiscount,
      specifiedType: const FullType(double),
    );
    yield r'total_after_discount';
    yield serializers.serialize(
      object.totalAfterDiscount,
      specifiedType: const FullType(double),
    );
    yield r'cash_amount';
    yield serializers.serialize(
      object.cashAmount,
      specifiedType: const FullType(double),
    );
    yield r'card_amount';
    yield serializers.serialize(
      object.cardAmount,
      specifiedType: const FullType(double),
    );
    if (object.soldByOperatorId != null) {
      yield r'sold_by_operator_id';
      yield serializers.serialize(
        object.soldByOperatorId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.soldByOperatorName != null) {
      yield r'sold_by_operator_name';
      yield serializers.serialize(
        object.soldByOperatorName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductSale object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductSaleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.productId = valueDes;
          break;
        case r'product_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        case r'unit_cost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unitCost = valueDes;
          break;
        case r'sale_price_per_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.salePricePerUnit = valueDes;
          break;
        case r'discount_percentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountPercentage = valueDes;
          break;
        case r'discount_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.discountAmount = valueDes;
          break;
        case r'total_before_discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalBeforeDiscount = valueDes;
          break;
        case r'total_after_discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAfterDiscount = valueDes;
          break;
        case r'cash_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cashAmount = valueDes;
          break;
        case r'card_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cardAmount = valueDes;
          break;
        case r'sold_by_operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.soldByOperatorId = valueDes;
          break;
        case r'sold_by_operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.soldByOperatorName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductSale deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductSaleBuilder();
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

