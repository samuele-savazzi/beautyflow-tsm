//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/schedule_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_schedule_update.g.dart';

/// DailyScheduleUpdate
///
/// Properties:
/// * [areaId] 
/// * [schedules] 
@BuiltValue()
abstract class DailyScheduleUpdate implements Built<DailyScheduleUpdate, DailyScheduleUpdateBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'schedules')
  BuiltList<ScheduleUpdate> get schedules;

  DailyScheduleUpdate._();

  factory DailyScheduleUpdate([void updates(DailyScheduleUpdateBuilder b)]) = _$DailyScheduleUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyScheduleUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyScheduleUpdate> get serializer => _$DailyScheduleUpdateSerializer();
}

class _$DailyScheduleUpdateSerializer implements PrimitiveSerializer<DailyScheduleUpdate> {
  @override
  final Iterable<Type> types = const [DailyScheduleUpdate, _$DailyScheduleUpdate];

  @override
  final String wireName = r'DailyScheduleUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyScheduleUpdate object, {
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
      specifiedType: const FullType(BuiltList, [FullType(ScheduleUpdate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyScheduleUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyScheduleUpdateBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ScheduleUpdate)]),
          ) as BuiltList<ScheduleUpdate>;
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
  DailyScheduleUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyScheduleUpdateBuilder();
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

