//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/afternoon_schedule_create.dart';
import 'package:beautyflow_api/src/model/morning_schedule_create.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_day_create.g.dart';

/// WorkingDayCreate
///
/// Properties:
/// * [dayNumber] 
/// * [morning] 
/// * [afternoon] 
@BuiltValue()
abstract class WorkingDayCreate implements Built<WorkingDayCreate, WorkingDayCreateBuilder> {
  @BuiltValueField(wireName: r'day_number')
  int get dayNumber;

  @BuiltValueField(wireName: r'morning')
  MorningScheduleCreate get morning;

  @BuiltValueField(wireName: r'afternoon')
  AfternoonScheduleCreate get afternoon;

  WorkingDayCreate._();

  factory WorkingDayCreate([void updates(WorkingDayCreateBuilder b)]) = _$WorkingDayCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkingDayCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkingDayCreate> get serializer => _$WorkingDayCreateSerializer();
}

class _$WorkingDayCreateSerializer implements PrimitiveSerializer<WorkingDayCreate> {
  @override
  final Iterable<Type> types = const [WorkingDayCreate, _$WorkingDayCreate];

  @override
  final String wireName = r'WorkingDayCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkingDayCreate object, {
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
      specifiedType: const FullType(MorningScheduleCreate),
    );
    yield r'afternoon';
    yield serializers.serialize(
      object.afternoon,
      specifiedType: const FullType(AfternoonScheduleCreate),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkingDayCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkingDayCreateBuilder result,
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
            specifiedType: const FullType(MorningScheduleCreate),
          ) as MorningScheduleCreate;
          result.morning.replace(valueDes);
          break;
        case r'afternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AfternoonScheduleCreate),
          ) as AfternoonScheduleCreate;
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
  WorkingDayCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkingDayCreateBuilder();
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

