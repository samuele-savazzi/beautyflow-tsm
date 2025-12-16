//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_time_slot_response.g.dart';

/// Serializer per le fasce orarie della modifica programmata.
///
/// Properties:
/// * [id] 
/// * [dayOfWeek] 
/// * [dayName] 
/// * [period] 
/// * [periodDisplay] 
/// * [isOpen] 
/// * [openingTime] 
/// * [closingTime] 
@BuiltValue()
abstract class ScheduledTimeSlotResponse implements Built<ScheduledTimeSlotResponse, ScheduledTimeSlotResponseBuilder> {
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

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'opening_time')
  String? get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String? get closingTime;

  ScheduledTimeSlotResponse._();

  factory ScheduledTimeSlotResponse([void updates(ScheduledTimeSlotResponseBuilder b)]) = _$ScheduledTimeSlotResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledTimeSlotResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledTimeSlotResponse> get serializer => _$ScheduledTimeSlotResponseSerializer();
}

class _$ScheduledTimeSlotResponseSerializer implements PrimitiveSerializer<ScheduledTimeSlotResponse> {
  @override
  final Iterable<Type> types = const [ScheduledTimeSlotResponse, _$ScheduledTimeSlotResponse];

  @override
  final String wireName = r'ScheduledTimeSlotResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledTimeSlotResponse object, {
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
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'opening_time';
    yield object.openingTime == null ? null : serializers.serialize(
      object.openingTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'closing_time';
    yield object.closingTime == null ? null : serializers.serialize(
      object.closingTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledTimeSlotResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduledTimeSlotResponseBuilder result,
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
        case r'is_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.openingTime = valueDes;
          break;
        case r'closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.closingTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledTimeSlotResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledTimeSlotResponseBuilder();
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

