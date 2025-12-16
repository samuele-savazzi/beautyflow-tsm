//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/schedule_item.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_schedule_list.g.dart';

/// DailyScheduleList
///
/// Properties:
/// * [id] 
/// * [day] 
/// * [dayName] 
/// * [isOpen] 
/// * [timeSlots] 
/// * [schedule] 
@BuiltValue()
abstract class DailyScheduleList implements Built<DailyScheduleList, DailyScheduleListBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'day')
  int get day;

  @BuiltValueField(wireName: r'day_name')
  String get dayName;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get timeSlots;

  @BuiltValueField(wireName: r'schedule')
  ScheduleItem? get schedule;

  DailyScheduleList._();

  factory DailyScheduleList([void updates(DailyScheduleListBuilder b)]) = _$DailyScheduleList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyScheduleListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyScheduleList> get serializer => _$DailyScheduleListSerializer();
}

class _$DailyScheduleListSerializer implements PrimitiveSerializer<DailyScheduleList> {
  @override
  final Iterable<Type> types = const [DailyScheduleList, _$DailyScheduleList];

  @override
  final String wireName = r'DailyScheduleList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyScheduleList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'day';
    yield serializers.serialize(
      object.day,
      specifiedType: const FullType(int),
    );
    yield r'day_name';
    yield serializers.serialize(
      object.dayName,
      specifiedType: const FullType(String),
    );
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'schedule';
    yield object.schedule == null ? null : serializers.serialize(
      object.schedule,
      specifiedType: const FullType.nullable(ScheduleItem),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyScheduleList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyScheduleListBuilder result,
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
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.day = valueDes;
          break;
        case r'day_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dayName = valueDes;
          break;
        case r'is_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.timeSlots.replace(valueDes);
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ScheduleItem),
          ) as ScheduleItem?;
          if (valueDes == null) continue;
          result.schedule.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyScheduleList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyScheduleListBuilder();
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

