//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/time_slot_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_create.g.dart';

/// ScheduleCreate
///
/// Properties:
/// * [dayId] 
/// * [isOpen] 
/// * [timeSlots] 
@BuiltValue()
abstract class ScheduleCreate implements Built<ScheduleCreate, ScheduleCreateBuilder> {
  @BuiltValueField(wireName: r'day_id')
  int get dayId;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotCreate> get timeSlots;

  ScheduleCreate._();

  factory ScheduleCreate([void updates(ScheduleCreateBuilder b)]) = _$ScheduleCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduleCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduleCreate> get serializer => _$ScheduleCreateSerializer();
}

class _$ScheduleCreateSerializer implements PrimitiveSerializer<ScheduleCreate> {
  @override
  final Iterable<Type> types = const [ScheduleCreate, _$ScheduleCreate];

  @override
  final String wireName = r'ScheduleCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduleCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'day_id';
    yield serializers.serialize(
      object.dayId,
      specifiedType: const FullType(int),
    );
    yield r'is_open';
    yield serializers.serialize(
      object.isOpen,
      specifiedType: const FullType(bool),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduleCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduleCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'day_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayId = valueDes;
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
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotCreate)]),
          ) as BuiltList<TimeSlotCreate>;
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
  ScheduleCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduleCreateBuilder();
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

