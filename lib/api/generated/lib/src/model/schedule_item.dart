//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/timeslotsschedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_item.g.dart';

/// ScheduleItem
///
/// Properties:
/// * [id] 
/// * [effectiveFrom] 
/// * [day] 
/// * [dayName] 
/// * [isOpen] 
/// * [timeSlots] 
@BuiltValue()
abstract class ScheduleItem implements Built<ScheduleItem, ScheduleItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'effective_from')
  String get effectiveFrom;

  @BuiltValueField(wireName: r'day')
  int get day;

  @BuiltValueField(wireName: r'day_name')
  String get dayName;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<Timeslotsschedule> get timeSlots;

  ScheduleItem._();

  factory ScheduleItem([void updates(ScheduleItemBuilder b)]) = _$ScheduleItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduleItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduleItem> get serializer => _$ScheduleItemSerializer();
}

class _$ScheduleItemSerializer implements PrimitiveSerializer<ScheduleItem> {
  @override
  final Iterable<Type> types = const [ScheduleItem, _$ScheduleItem];

  @override
  final String wireName = r'ScheduleItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'effective_from';
    yield serializers.serialize(
      object.effectiveFrom,
      specifiedType: const FullType(String),
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
      specifiedType: const FullType(BuiltList, [FullType(Timeslotsschedule)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduleItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduleItemBuilder result,
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
        case r'effective_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effectiveFrom = valueDes;
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
            specifiedType: const FullType(BuiltList, [FullType(Timeslotsschedule)]),
          ) as BuiltList<Timeslotsschedule>;
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
  ScheduleItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduleItemBuilder();
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

