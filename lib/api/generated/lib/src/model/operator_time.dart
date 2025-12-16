//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/service_step.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_time.g.dart';

/// Serializzatore per i tempi degli operatori
///
/// Properties:
/// * [operatorId] 
/// * [totalTime] 
/// * [steps] 
@BuiltValue()
abstract class OperatorTime implements Built<OperatorTime, OperatorTimeBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'total_time')
  int get totalTime;

  @BuiltValueField(wireName: r'steps')
  BuiltList<ServiceStep> get steps;

  OperatorTime._();

  factory OperatorTime([void updates(OperatorTimeBuilder b)]) = _$OperatorTime;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorTimeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorTime> get serializer => _$OperatorTimeSerializer();
}

class _$OperatorTimeSerializer implements PrimitiveSerializer<OperatorTime> {
  @override
  final Iterable<Type> types = const [OperatorTime, _$OperatorTime];

  @override
  final String wireName = r'OperatorTime';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorTime object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'total_time';
    yield serializers.serialize(
      object.totalTime,
      specifiedType: const FullType(int),
    );
    yield r'steps';
    yield serializers.serialize(
      object.steps,
      specifiedType: const FullType(BuiltList, [FullType(ServiceStep)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorTime object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorTimeBuilder result,
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
        case r'total_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTime = valueDes;
          break;
        case r'steps':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceStep)]),
          ) as BuiltList<ServiceStep>;
          result.steps.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorTimeBuilder();
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

