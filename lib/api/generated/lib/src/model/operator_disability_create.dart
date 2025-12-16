//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/time_slot_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_disability_create.g.dart';

/// OperatorDisabilityCreate
///
/// Properties:
/// * [operatorId] 
/// * [reason] 
/// * [startDate] 
/// * [endDate] 
/// * [timeSlots] 
/// * [isDaily] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [areaId] - ID dell'area per la creazione delle fasce orarie
@BuiltValue()
abstract class OperatorDisabilityCreate implements Built<OperatorDisabilityCreate, OperatorDisabilityCreateBuilder> {
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'start_date')
  Date get startDate;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotCreate>? get timeSlots;

  @BuiltValueField(wireName: r'is_daily')
  bool? get isDaily;

  @BuiltValueField(wireName: r'morning_start_time')
  String? get morningStartTime;

  @BuiltValueField(wireName: r'morning_end_time')
  String? get morningEndTime;

  @BuiltValueField(wireName: r'afternoon_start_time')
  String? get afternoonStartTime;

  @BuiltValueField(wireName: r'afternoon_end_time')
  String? get afternoonEndTime;

  /// ID dell'area per la creazione delle fasce orarie
  @BuiltValueField(wireName: r'area_id')
  int? get areaId;

  OperatorDisabilityCreate._();

  factory OperatorDisabilityCreate([void updates(OperatorDisabilityCreateBuilder b)]) = _$OperatorDisabilityCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDisabilityCreateBuilder b) => b
      ..timeSlots = ListBuilder()
      ..isDaily = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDisabilityCreate> get serializer => _$OperatorDisabilityCreateSerializer();
}

class _$OperatorDisabilityCreateSerializer implements PrimitiveSerializer<OperatorDisabilityCreate> {
  @override
  final Iterable<Type> types = const [OperatorDisabilityCreate, _$OperatorDisabilityCreate];

  @override
  final String wireName = r'OperatorDisabilityCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDisabilityCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
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
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.timeSlots != null) {
      yield r'time_slots';
      yield serializers.serialize(
        object.timeSlots,
        specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
      );
    }
    if (object.isDaily != null) {
      yield r'is_daily';
      yield serializers.serialize(
        object.isDaily,
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
    if (object.areaId != null) {
      yield r'area_id';
      yield serializers.serialize(
        object.areaId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDisabilityCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDisabilityCreateBuilder result,
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
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
          ) as BuiltList<TimeSlotCreate>;
          result.timeSlots.replace(valueDes);
          break;
        case r'is_daily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDaily = valueDes;
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
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDisabilityCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDisabilityCreateBuilder();
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

