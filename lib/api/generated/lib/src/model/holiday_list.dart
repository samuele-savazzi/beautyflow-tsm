//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holiday_list.g.dart';

/// HolidayList
///
/// Properties:
/// * [id] 
/// * [date] 
/// * [isFullDay] 
/// * [morningClosed] 
/// * [afternoonClosed] 
/// * [reason] 
/// * [timeSlots] 
@BuiltValue()
abstract class HolidayList implements Built<HolidayList, HolidayListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

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
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get timeSlots;

  HolidayList._();

  factory HolidayList([void updates(HolidayListBuilder b)]) = _$HolidayList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HolidayListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HolidayList> get serializer => _$HolidayListSerializer();
}

class _$HolidayListSerializer implements PrimitiveSerializer<HolidayList> {
  @override
  final Iterable<Type> types = const [HolidayList, _$HolidayList];

  @override
  final String wireName = r'HolidayList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HolidayList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
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
    yield r'reason';
    yield object.reason == null ? null : serializers.serialize(
      object.reason,
      specifiedType: const FullType.nullable(String),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HolidayList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HolidayListBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
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
  HolidayList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HolidayListBuilder();
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

