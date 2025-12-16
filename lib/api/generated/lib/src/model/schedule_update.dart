//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/time_slot_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_update.g.dart';

/// ScheduleUpdate
///
/// Properties:
/// * [id] 
/// * [dayId] 
/// * [isOpen] 
/// * [timeSlots] 
@BuiltValue()
abstract class ScheduleUpdate implements Built<ScheduleUpdate, ScheduleUpdateBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'day_id')
  int get dayId;

  @BuiltValueField(wireName: r'is_open')
  bool get isOpen;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotUpdate> get timeSlots;

  ScheduleUpdate._();

  factory ScheduleUpdate([void updates(ScheduleUpdateBuilder b)]) = _$ScheduleUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduleUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduleUpdate> get serializer => _$ScheduleUpdateSerializer();
}

class _$ScheduleUpdateSerializer implements PrimitiveSerializer<ScheduleUpdate> {
  @override
  final Iterable<Type> types = const [ScheduleUpdate, _$ScheduleUpdate];

  @override
  final String wireName = r'ScheduleUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
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
      specifiedType: const FullType(BuiltList, [FullType(TimeSlotUpdate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduleUpdateBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotUpdate)]),
          ) as BuiltList<TimeSlotUpdate>;
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
  ScheduleUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduleUpdateBuilder();
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

