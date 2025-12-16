//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/afternoon_schedule_update.dart';
import 'package:beautyflow_api/src/model/morning_schedule_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_day_update.g.dart';

/// WorkingDayUpdate
///
/// Properties:
/// * [dayNumber] 
/// * [morning] 
/// * [afternoon] 
@BuiltValue()
abstract class WorkingDayUpdate implements Built<WorkingDayUpdate, WorkingDayUpdateBuilder> {
  @BuiltValueField(wireName: r'day_number')
  int get dayNumber;

  @BuiltValueField(wireName: r'morning')
  MorningScheduleUpdate get morning;

  @BuiltValueField(wireName: r'afternoon')
  AfternoonScheduleUpdate get afternoon;

  WorkingDayUpdate._();

  factory WorkingDayUpdate([void updates(WorkingDayUpdateBuilder b)]) = _$WorkingDayUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkingDayUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkingDayUpdate> get serializer => _$WorkingDayUpdateSerializer();
}

class _$WorkingDayUpdateSerializer implements PrimitiveSerializer<WorkingDayUpdate> {
  @override
  final Iterable<Type> types = const [WorkingDayUpdate, _$WorkingDayUpdate];

  @override
  final String wireName = r'WorkingDayUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkingDayUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'day_number';
    yield serializers.serialize(
      object.dayNumber,
      specifiedType: const FullType(int),
    );
    yield r'morning';
    yield serializers.serialize(
      object.morning,
      specifiedType: const FullType(MorningScheduleUpdate),
    );
    yield r'afternoon';
    yield serializers.serialize(
      object.afternoon,
      specifiedType: const FullType(AfternoonScheduleUpdate),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkingDayUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkingDayUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'day_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayNumber = valueDes;
          break;
        case r'morning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MorningScheduleUpdate),
          ) as MorningScheduleUpdate;
          result.morning.replace(valueDes);
          break;
        case r'afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AfternoonScheduleUpdate),
          ) as AfternoonScheduleUpdate;
          result.afternoon.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkingDayUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkingDayUpdateBuilder();
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

