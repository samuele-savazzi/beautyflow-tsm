//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_disability_time_slot.g.dart';

/// Serializer per i time slot delle disabilitazioni operatori.
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [periodDisplay] 
/// * [startTime] 
/// * [endTime] 
/// * [previousStartTime] 
/// * [previousEndTime] 
@BuiltValue()
abstract class OperatorDisabilityTimeSlot implements Built<OperatorDisabilityTimeSlot, OperatorDisabilityTimeSlotBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'period')
  PeriodEnum get period;
  // enum periodEnum {  morning,  afternoon,  };

  @BuiltValueField(wireName: r'period_display')
  String get periodDisplay;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  @BuiltValueField(wireName: r'previous_start_time')
  String? get previousStartTime;

  @BuiltValueField(wireName: r'previous_end_time')
  String? get previousEndTime;

  OperatorDisabilityTimeSlot._();

  factory OperatorDisabilityTimeSlot([void updates(OperatorDisabilityTimeSlotBuilder b)]) = _$OperatorDisabilityTimeSlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDisabilityTimeSlotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDisabilityTimeSlot> get serializer => _$OperatorDisabilityTimeSlotSerializer();
}

class _$OperatorDisabilityTimeSlotSerializer implements PrimitiveSerializer<OperatorDisabilityTimeSlot> {
  @override
  final Iterable<Type> types = const [OperatorDisabilityTimeSlot, _$OperatorDisabilityTimeSlot];

  @override
  final String wireName = r'OperatorDisabilityTimeSlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDisabilityTimeSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(PeriodEnum),
    );
    yield r'period_display';
    yield serializers.serialize(
      object.periodDisplay,
      specifiedType: const FullType(String),
    );
    yield r'start_time';
    yield object.startTime == null ? null : serializers.serialize(
      object.startTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'end_time';
    yield object.endTime == null ? null : serializers.serialize(
      object.endTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_start_time';
    yield object.previousStartTime == null ? null : serializers.serialize(
      object.previousStartTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_end_time';
    yield object.previousEndTime == null ? null : serializers.serialize(
      object.previousEndTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDisabilityTimeSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDisabilityTimeSlotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PeriodEnum),
          ) as PeriodEnum;
          result.period = valueDes;
          break;
        case r'period_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodDisplay = valueDes;
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
        case r'previous_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousStartTime = valueDes;
          break;
        case r'previous_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousEndTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDisabilityTimeSlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDisabilityTimeSlotBuilder();
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

