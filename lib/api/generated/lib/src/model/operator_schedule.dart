//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_schedule.g.dart';

/// Serializer per gli orari dell'operatore nell'apertura speciale.
///
/// Properties:
/// * [operatorId] 
/// * [morningWorking] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonWorking] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [ignoreMorning] 
/// * [ignoreAfternoon] 
/// * [notes] 
@BuiltValue()
abstract class OperatorSchedule implements Built<OperatorSchedule, OperatorScheduleBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'morning_working')
  bool? get morningWorking;

  @BuiltValueField(wireName: r'morning_start_time')
  String? get morningStartTime;

  @BuiltValueField(wireName: r'morning_end_time')
  String? get morningEndTime;

  @BuiltValueField(wireName: r'afternoon_working')
  bool? get afternoonWorking;

  @BuiltValueField(wireName: r'afternoon_start_time')
  String? get afternoonStartTime;

  @BuiltValueField(wireName: r'afternoon_end_time')
  String? get afternoonEndTime;

  @BuiltValueField(wireName: r'ignore_morning')
  bool? get ignoreMorning;

  @BuiltValueField(wireName: r'ignore_afternoon')
  bool? get ignoreAfternoon;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  OperatorSchedule._();

  factory OperatorSchedule([void updates(OperatorScheduleBuilder b)]) = _$OperatorSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorScheduleBuilder b) => b
      ..morningWorking = false
      ..afternoonWorking = false
      ..ignoreMorning = false
      ..ignoreAfternoon = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorSchedule> get serializer => _$OperatorScheduleSerializer();
}

class _$OperatorScheduleSerializer implements PrimitiveSerializer<OperatorSchedule> {
  @override
  final Iterable<Type> types = const [OperatorSchedule, _$OperatorSchedule];

  @override
  final String wireName = r'OperatorSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    if (object.morningWorking != null) {
      yield r'morning_working';
      yield serializers.serialize(
        object.morningWorking,
        specifiedType: const FullType(bool),
      );
    }
    if (object.morningStartTime != null) {
      yield r'morning_start_time';
      yield serializers.serialize(
        object.morningStartTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.morningEndTime != null) {
      yield r'morning_end_time';
      yield serializers.serialize(
        object.morningEndTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonWorking != null) {
      yield r'afternoon_working';
      yield serializers.serialize(
        object.afternoonWorking,
        specifiedType: const FullType(bool),
      );
    }
    if (object.afternoonStartTime != null) {
      yield r'afternoon_start_time';
      yield serializers.serialize(
        object.afternoonStartTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonEndTime != null) {
      yield r'afternoon_end_time';
      yield serializers.serialize(
        object.afternoonEndTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ignoreMorning != null) {
      yield r'ignore_morning';
      yield serializers.serialize(
        object.ignoreMorning,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ignoreAfternoon != null) {
      yield r'ignore_afternoon';
      yield serializers.serialize(
        object.ignoreAfternoon,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorScheduleBuilder result,
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
        case r'morning_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningWorking = valueDes;
          break;
        case r'morning_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningStartTime = valueDes;
          break;
        case r'morning_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningEndTime = valueDes;
          break;
        case r'afternoon_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonWorking = valueDes;
          break;
        case r'afternoon_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonStartTime = valueDes;
          break;
        case r'afternoon_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonEndTime = valueDes;
          break;
        case r'ignore_morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreMorning = valueDes;
          break;
        case r'ignore_afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignoreAfternoon = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorScheduleBuilder();
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

