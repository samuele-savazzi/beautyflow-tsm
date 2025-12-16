//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/operator_disability_time_slot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_disability_correction.g.dart';

/// Serializer per le correzioni di disabilitazioni operatori.
///
/// Properties:
/// * [id] 
/// * [operatorId] 
/// * [operatorName] 
/// * [reason] 
/// * [startDate] 
/// * [endDate] 
/// * [disabilityType] 
/// * [ignore] 
/// * [ignoreMorning] 
/// * [ignoreAfternoon] 
/// * [previousIgnore] 
/// * [previousIgnoreMorning] 
/// * [previousIgnoreAfternoon] 
/// * [timeSlots] 
@BuiltValue()
abstract class OperatorDisabilityCorrection implements Built<OperatorDisabilityCorrection, OperatorDisabilityCorrectionBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'start_date')
  Date get startDate;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'disability_type')
  String get disabilityType;

  @BuiltValueField(wireName: r'ignore')
  bool get ignore;

  @BuiltValueField(wireName: r'ignore_morning')
  bool get ignoreMorning;

  @BuiltValueField(wireName: r'ignore_afternoon')
  bool get ignoreAfternoon;

  @BuiltValueField(wireName: r'previous_ignore')
  bool? get previousIgnore;

  @BuiltValueField(wireName: r'previous_ignore_morning')
  bool? get previousIgnoreMorning;

  @BuiltValueField(wireName: r'previous_ignore_afternoon')
  bool? get previousIgnoreAfternoon;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<OperatorDisabilityTimeSlot> get timeSlots;

  OperatorDisabilityCorrection._();

  factory OperatorDisabilityCorrection([void updates(OperatorDisabilityCorrectionBuilder b)]) = _$OperatorDisabilityCorrection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDisabilityCorrectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDisabilityCorrection> get serializer => _$OperatorDisabilityCorrectionSerializer();
}

class _$OperatorDisabilityCorrectionSerializer implements PrimitiveSerializer<OperatorDisabilityCorrection> {
  @override
  final Iterable<Type> types = const [OperatorDisabilityCorrection, _$OperatorDisabilityCorrection];

  @override
  final String wireName = r'OperatorDisabilityCorrection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDisabilityCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(Date),
    );
    yield r'end_date';
    yield object.endDate == null ? null : serializers.serialize(
      object.endDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'disability_type';
    yield serializers.serialize(
      object.disabilityType,
      specifiedType: const FullType(String),
    );
    yield r'ignore';
    yield serializers.serialize(
      object.ignore,
      specifiedType: const FullType(bool),
    );
    yield r'ignore_morning';
    yield serializers.serialize(
      object.ignoreMorning,
      specifiedType: const FullType(bool),
    );
    yield r'ignore_afternoon';
    yield serializers.serialize(
      object.ignoreAfternoon,
      specifiedType: const FullType(bool),
    );
    yield r'previous_ignore';
    yield object.previousIgnore == null ? null : serializers.serialize(
      object.previousIgnore,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_ignore_morning';
    yield object.previousIgnoreMorning == null ? null : serializers.serialize(
      object.previousIgnoreMorning,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'previous_ignore_afternoon';
    yield object.previousIgnoreAfternoon == null ? null : serializers.serialize(
      object.previousIgnoreAfternoon,
      specifiedType: const FullType.nullable(bool),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(OperatorDisabilityTimeSlot)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDisabilityCorrection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDisabilityCorrectionBuilder result,
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
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startDate = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'disability_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.disabilityType = valueDes;
          break;
        case r'ignore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ignore = valueDes;
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
        case r'previous_ignore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousIgnore = valueDes;
          break;
        case r'previous_ignore_morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousIgnoreMorning = valueDes;
          break;
        case r'previous_ignore_afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.previousIgnoreAfternoon = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorDisabilityTimeSlot)]),
          ) as BuiltList<OperatorDisabilityTimeSlot>;
          result.timeSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDisabilityCorrection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDisabilityCorrectionBuilder();
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

