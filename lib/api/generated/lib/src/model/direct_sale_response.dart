//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'direct_sale_response.g.dart';

/// DirectSaleResponse
///
/// Properties:
/// * [success] 
/// * [movementsCreated] 
/// * [totalAmount] 
/// * [paymentMethod] 
/// * [warnings] 
@BuiltValue()
abstract class DirectSaleResponse implements Built<DirectSaleResponse, DirectSaleResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'movements_created')
  int get movementsCreated;

  @BuiltValueField(wireName: r'total_amount')
  double get totalAmount;

  @BuiltValueField(wireName: r'payment_method')
  String get paymentMethod;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<String> get warnings;

  DirectSaleResponse._();

  factory DirectSaleResponse([void updates(DirectSaleResponseBuilder b)]) = _$DirectSaleResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DirectSaleResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DirectSaleResponse> get serializer => _$DirectSaleResponseSerializer();
}

class _$DirectSaleResponseSerializer implements PrimitiveSerializer<DirectSaleResponse> {
  @override
  final Iterable<Type> types = const [DirectSaleResponse, _$DirectSaleResponse];

  @override
  final String wireName = r'DirectSaleResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DirectSaleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'movements_created';
    yield serializers.serialize(
      object.movementsCreated,
      specifiedType: const FullType(int),
    );
    yield r'total_amount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(double),
    );
    yield r'payment_method';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DirectSaleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DirectSaleResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'movements_created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.movementsCreated = valueDes;
          break;
        case r'total_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalAmount = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DirectSaleResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DirectSaleResponseBuilder();
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

