//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_pricing.g.dart';

/// Serializzatore per i prezzi degli operatori
///
/// Properties:
/// * [operatorId] 
/// * [price] 
@BuiltValue()
abstract class OperatorPricing implements Built<OperatorPricing, OperatorPricingBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'price')
  double get price;

  OperatorPricing._();

  factory OperatorPricing([void updates(OperatorPricingBuilder b)]) = _$OperatorPricing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorPricingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorPricing> get serializer => _$OperatorPricingSerializer();
}

class _$OperatorPricingSerializer implements PrimitiveSerializer<OperatorPricing> {
  @override
  final Iterable<Type> types = const [OperatorPricing, _$OperatorPricing];

  @override
  final String wireName = r'OperatorPricing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorPricing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorPricing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorPricingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorPricing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorPricingBuilder();
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

