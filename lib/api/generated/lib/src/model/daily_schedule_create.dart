//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/schedule_create.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_schedule_create.g.dart';

/// DailyScheduleCreate
///
/// Properties:
/// * [areaId] 
/// * [schedules] 
@BuiltValue()
abstract class DailyScheduleCreate implements Built<DailyScheduleCreate, DailyScheduleCreateBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'schedules')
  BuiltList<ScheduleCreate> get schedules;

  DailyScheduleCreate._();

  factory DailyScheduleCreate([void updates(DailyScheduleCreateBuilder b)]) = _$DailyScheduleCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyScheduleCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyScheduleCreate> get serializer => _$DailyScheduleCreateSerializer();
}

class _$DailyScheduleCreateSerializer implements PrimitiveSerializer<DailyScheduleCreate> {
  @override
  final Iterable<Type> types = const [DailyScheduleCreate, _$DailyScheduleCreate];

  @override
  final String wireName = r'DailyScheduleCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyScheduleCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'schedules';
    yield serializers.serialize(
      object.schedules,
      specifiedType: const FullType(BuiltList, [FullType(ScheduleCreate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyScheduleCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyScheduleCreateBuilder result,
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
        case r'schedules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ScheduleCreate)]),
          ) as BuiltList<ScheduleCreate>;
          result.schedules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyScheduleCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyScheduleCreateBuilder();
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

