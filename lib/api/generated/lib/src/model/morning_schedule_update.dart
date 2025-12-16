//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'morning_schedule_update.g.dart';

/// MorningScheduleUpdate
///
/// Properties:
/// * [work] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class MorningScheduleUpdate implements Built<MorningScheduleUpdate, MorningScheduleUpdateBuilder> {
  @BuiltValueField(wireName: r'work')
  bool get work;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  MorningScheduleUpdate._();

  factory MorningScheduleUpdate([void updates(MorningScheduleUpdateBuilder b)]) = _$MorningScheduleUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MorningScheduleUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MorningScheduleUpdate> get serializer => _$MorningScheduleUpdateSerializer();
}

class _$MorningScheduleUpdateSerializer implements PrimitiveSerializer<MorningScheduleUpdate> {
  @override
  final Iterable<Type> types = const [MorningScheduleUpdate, _$MorningScheduleUpdate];

  @override
  final String wireName = r'MorningScheduleUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MorningScheduleUpdate object, {
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
    MorningScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MorningScheduleUpdateBuilder result,
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
  MorningScheduleUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MorningScheduleUpdateBuilder();
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

