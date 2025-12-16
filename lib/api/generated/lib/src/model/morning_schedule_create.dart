//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'morning_schedule_create.g.dart';

/// MorningScheduleCreate
///
/// Properties:
/// * [work] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class MorningScheduleCreate implements Built<MorningScheduleCreate, MorningScheduleCreateBuilder> {
  @BuiltValueField(wireName: r'work')
  bool get work;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  MorningScheduleCreate._();

  factory MorningScheduleCreate([void updates(MorningScheduleCreateBuilder b)]) = _$MorningScheduleCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MorningScheduleCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MorningScheduleCreate> get serializer => _$MorningScheduleCreateSerializer();
}

class _$MorningScheduleCreateSerializer implements PrimitiveSerializer<MorningScheduleCreate> {
  @override
  final Iterable<Type> types = const [MorningScheduleCreate, _$MorningScheduleCreate];

  @override
  final String wireName = r'MorningScheduleCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MorningScheduleCreate object, {
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
    MorningScheduleCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MorningScheduleCreateBuilder result,
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
  MorningScheduleCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MorningScheduleCreateBuilder();
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

