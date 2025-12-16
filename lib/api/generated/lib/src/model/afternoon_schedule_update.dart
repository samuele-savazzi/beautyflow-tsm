//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'afternoon_schedule_update.g.dart';

/// AfternoonScheduleUpdate
///
/// Properties:
/// * [work] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class AfternoonScheduleUpdate implements Built<AfternoonScheduleUpdate, AfternoonScheduleUpdateBuilder> {
  @BuiltValueField(wireName: r'work')
  bool get work;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  AfternoonScheduleUpdate._();

  factory AfternoonScheduleUpdate([void updates(AfternoonScheduleUpdateBuilder b)]) = _$AfternoonScheduleUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AfternoonScheduleUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AfternoonScheduleUpdate> get serializer => _$AfternoonScheduleUpdateSerializer();
}

class _$AfternoonScheduleUpdateSerializer implements PrimitiveSerializer<AfternoonScheduleUpdate> {
  @override
  final Iterable<Type> types = const [AfternoonScheduleUpdate, _$AfternoonScheduleUpdate];

  @override
  final String wireName = r'AfternoonScheduleUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AfternoonScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'work';
    yield serializers.serialize(
      object.work,
      specifiedType: const FullType(bool),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AfternoonScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AfternoonScheduleUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'work':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.work = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AfternoonScheduleUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AfternoonScheduleUpdateBuilder();
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

