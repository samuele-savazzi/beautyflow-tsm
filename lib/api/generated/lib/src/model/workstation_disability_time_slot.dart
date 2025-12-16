//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workstation_disability_time_slot.g.dart';

/// Serializer per i time slot delle disabilitazioni postazioni.
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [periodDisplay] 
/// * [openingTime] 
/// * [closingTime] 
/// * [isOpen] 
/// * [previousOpeningTime] 
/// * [previousClosingTime] 
@BuiltValue()
abstract class WorkstationDisabilityTimeSlot implements Built<WorkstationDisabilityTimeSlot, WorkstationDisabilityTimeSlotBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'period')
  PeriodEnum get period;
  // enum periodEnum {  morning,  afternoon,  };

  @BuiltValueField(wireName: r'period_display')
  String get periodDisplay;

  @BuiltValueField(wireName: r'opening_time')
  String? get openingTime;

  @BuiltValueField(wireName: r'closing_time')
  String? get closingTime;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'previous_opening_time')
  String? get previousOpeningTime;

  @BuiltValueField(wireName: r'previous_closing_time')
  String? get previousClosingTime;

  WorkstationDisabilityTimeSlot._();

  factory WorkstationDisabilityTimeSlot([void updates(WorkstationDisabilityTimeSlotBuilder b)]) = _$WorkstationDisabilityTimeSlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkstationDisabilityTimeSlotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkstationDisabilityTimeSlot> get serializer => _$WorkstationDisabilityTimeSlotSerializer();
}

class _$WorkstationDisabilityTimeSlotSerializer implements PrimitiveSerializer<WorkstationDisabilityTimeSlot> {
  @override
  final Iterable<Type> types = const [WorkstationDisabilityTimeSlot, _$WorkstationDisabilityTimeSlot];

  @override
  final String wireName = r'WorkstationDisabilityTimeSlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkstationDisabilityTimeSlot object, {
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
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'previous_opening_time';
    yield object.previousOpeningTime == null ? null : serializers.serialize(
      object.previousOpeningTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'previous_closing_time';
    yield object.previousClosingTime == null ? null : serializers.serialize(
      object.previousClosingTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkstationDisabilityTimeSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkstationDisabilityTimeSlotBuilder result,
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
        case r'is_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'previous_opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousOpeningTime = valueDes;
          break;
        case r'previous_closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.previousClosingTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkstationDisabilityTimeSlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkstationDisabilityTimeSlotBuilder();
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

