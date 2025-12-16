//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/holiday_time_slot_create.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_create.g.dart';

/// HolidayCreate
///
/// Properties:
/// * [areaId] 
/// * [date] 
/// * [endDate] 
/// * [isFullDay] 
/// * [morningClosed] 
/// * [afternoonClosed] 
/// * [reason] 
/// * [timeSlots] 
@BuiltValue()
abstract class HolidayCreate implements Built<HolidayCreate, HolidayCreateBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'is_full_day')
  bool get isFullDay;

  @BuiltValueField(wireName: r'morning_closed')
  bool get morningClosed;

  @BuiltValueField(wireName: r'afternoon_closed')
  bool get afternoonClosed;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<HolidayTimeSlotCreate>? get timeSlots;

  HolidayCreate._();

  factory HolidayCreate([void updates(HolidayCreateBuilder b)]) = _$HolidayCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayCreate> get serializer => _$HolidayCreateSerializer();
}

class _$HolidayCreateSerializer implements PrimitiveSerializer<HolidayCreate> {
  @override
  final Iterable<Type> types = const [HolidayCreate, _$HolidayCreate];

  @override
  final String wireName = r'HolidayCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    yield r'is_full_day';
    yield serializers.serialize(
      object.isFullDay,
      specifiedType: const FullType(bool),
    );
    yield r'morning_closed';
    yield serializers.serialize(
      object.morningClosed,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_closed';
    yield serializers.serialize(
      object.afternoonClosed,
      specifiedType: const FullType(bool),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.timeSlots != null) {
      yield r'time_slots';
      yield serializers.serialize(
        object.timeSlots,
        specifiedType: const FullType(BuiltList, [FullType(HolidayTimeSlotCreate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HolidayCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'is_full_day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isFullDay = valueDes;
          break;
        case r'morning_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningClosed = valueDes;
          break;
        case r'afternoon_closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonClosed = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reason = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HolidayTimeSlotCreate)]),
          ) as BuiltList<HolidayTimeSlotCreate>;
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
  HolidayCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayCreateBuilder();
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

