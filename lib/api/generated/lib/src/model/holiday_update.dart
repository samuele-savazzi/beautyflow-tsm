//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/holiday_time_slot_update.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_update.g.dart';

/// HolidayUpdate
///
/// Properties:
/// * [date] 
/// * [isFullDay] 
/// * [morningClosed] 
/// * [afternoonClosed] 
/// * [reason] 
/// * [timeSlots] 
@BuiltValue()
abstract class HolidayUpdate implements Built<HolidayUpdate, HolidayUpdateBuilder> {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'is_full_day')
  bool get isFullDay;

  @BuiltValueField(wireName: r'morning_closed')
  bool get morningClosed;

  @BuiltValueField(wireName: r'afternoon_closed')
  bool get afternoonClosed;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<HolidayTimeSlotUpdate>? get timeSlots;

  HolidayUpdate._();

  factory HolidayUpdate([void updates(HolidayUpdateBuilder b)]) = _$HolidayUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayUpdate> get serializer => _$HolidayUpdateSerializer();
}

class _$HolidayUpdateSerializer implements PrimitiveSerializer<HolidayUpdate> {
  @override
  final Iterable<Type> types = const [HolidayUpdate, _$HolidayUpdate];

  @override
  final String wireName = r'HolidayUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
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
        specifiedType: const FullType(BuiltList, [FullType(HolidayTimeSlotUpdate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HolidayUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
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
            specifiedType: const FullType(BuiltList, [FullType(HolidayTimeSlotUpdate)]),
          ) as BuiltList<HolidayTimeSlotUpdate>;
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
  HolidayUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayUpdateBuilder();
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

