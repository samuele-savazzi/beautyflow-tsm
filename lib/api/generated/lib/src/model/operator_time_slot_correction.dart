//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_time_slot_correction.g.dart';

/// Serializer per i time slot degli operatori corretti.
///
/// Properties:
/// * [id] 
/// * [dayOfWeek] 
/// * [dayName] 
/// * [period] 
/// * [periodDisplay] 
/// * [isWorking] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class OperatorTimeSlotCorrection implements Built<OperatorTimeSlotCorrection, OperatorTimeSlotCorrectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'day_of_week')
  int get dayOfWeek;

  @BuiltValueField(wireName: r'day_name')
  String get dayName;

  @BuiltValueField(wireName: r'period')
  PeriodEnum get period;
  // enum periodEnum {  morning,  afternoon,  };

  @BuiltValueField(wireName: r'period_display')
  String get periodDisplay;

  @BuiltValueField(wireName: r'is_working')
  bool get isWorking;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  OperatorTimeSlotCorrection._();

  factory OperatorTimeSlotCorrection([void updates(OperatorTimeSlotCorrectionBuilder b)]) = _$OperatorTimeSlotCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorTimeSlotCorrectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorTimeSlotCorrection> get serializer => _$OperatorTimeSlotCorrectionSerializer();
}

class _$OperatorTimeSlotCorrectionSerializer implements PrimitiveSerializer<OperatorTimeSlotCorrection> {
  @override
  final Iterable<Type> types = const [OperatorTimeSlotCorrection, _$OperatorTimeSlotCorrection];

  @override
  final String wireName = r'OperatorTimeSlotCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorTimeSlotCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'day_of_week';
    yield serializers.serialize(
      object.dayOfWeek,
      specifiedType: const FullType(int),
    );
    yield r'day_name';
    yield serializers.serialize(
      object.dayName,
      specifiedType: const FullType(String),
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
    yield r'is_working';
    yield serializers.serialize(
      object.isWorking,
      specifiedType: const FullType(bool),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorTimeSlotCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorTimeSlotCorrectionBuilder result,
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
        case r'day_of_week':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayOfWeek = valueDes;
          break;
        case r'day_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayName = valueDes;
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
        case r'is_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isWorking = valueDes;
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
  OperatorTimeSlotCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorTimeSlotCorrectionBuilder();
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

