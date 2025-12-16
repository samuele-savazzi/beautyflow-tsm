//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_sale_product.g.dart';

/// DirectSaleProduct
///
/// Properties:
/// * [productId] 
/// * [quantity] 
/// * [salePricePerUnit] 
/// * [discountPercentage] 
/// * [discountAmount] 
@BuiltValue()
abstract class DirectSaleProduct implements Built<DirectSaleProduct, DirectSaleProductBuilder> {
  @BuiltValueField(wireName: r'product_id')
  int get productId;

  @BuiltValueField(wireName: r'quantity')
  double get quantity;

  @BuiltValueField(wireName: r'sale_price_per_unit')
  double get salePricePerUnit;

  @BuiltValueField(wireName: r'discount_percentage')
  double? get discountPercentage;

  @BuiltValueField(wireName: r'discount_amount')
  double? get discountAmount;

  DirectSaleProduct._();

  factory DirectSaleProduct([void updates(DirectSaleProductBuilder b)]) = _$DirectSaleProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DirectSaleProductBuilder b) => b
      ..discountPercentage = 0.00
      ..discountAmount = 0.00;

  @BuiltValueSerializer(custom: true)
  static Serializer<DirectSaleProduct> get serializer => _$DirectSaleProductSerializer();
}

class _$DirectSaleProductSerializer implements PrimitiveSerializer<DirectSaleProduct> {
  @override
  final Iterable<Type> types = const [DirectSaleProduct, _$DirectSaleProduct];

  @override
  final String wireName = r'DirectSaleProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DirectSaleProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'product_id';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(int),
    );
    yield r'quantity';
    yield serializers.serialize(
      object.quantity,
      specifiedType: const FullType(double),
    );
    yield r'sale_price_per_unit';
    yield serializers.serialize(
      object.salePricePerUnit,
      specifiedType: const FullType(double),
    );
    if (object.discountPercentage != null) {
      yield r'discount_percentage';
      yield serializers.serialize(
        object.discountPercentage,
        specifiedType: const FullType(double),
      );
    }
    if (object.discountAmount != null) {
      yield r'discount_amount';
      yield serializers.serialize(
        object.discountAmount,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DirectSaleProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DirectSaleProductBuilder result,
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
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.quantity = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DirectSaleProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectSaleProductBuilder();
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

