//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'step_order_update.g.dart';

/// StepOrderUpdate
///
/// Properties:
/// * [stepOrder] 
@BuiltValue()
abstract class StepOrderUpdate implements Built<StepOrderUpdate, StepOrderUpdateBuilder> {
  @BuiltValueField(wireName: r'step_order')
  BuiltList<int> get stepOrder;

  StepOrderUpdate._();

  factory StepOrderUpdate([void updates(StepOrderUpdateBuilder b)]) = _$StepOrderUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepOrderUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepOrderUpdate> get serializer => _$StepOrderUpdateSerializer();
}

class _$StepOrderUpdateSerializer implements PrimitiveSerializer<StepOrderUpdate> {
  @override
  final Iterable<Type> types = const [StepOrderUpdate, _$StepOrderUpdate];

  @override
  final String wireName = r'StepOrderUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepOrderUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'step_order';
    yield serializers.serialize(
      object.stepOrder,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StepOrderUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepOrderUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'step_order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.stepOrder.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StepOrderUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepOrderUpdateBuilder();
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

