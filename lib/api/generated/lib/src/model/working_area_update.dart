//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/working_day_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'working_area_update.g.dart';

/// WorkingAreaUpdate
///
/// Properties:
/// * [areaId] 
/// * [days] 
@BuiltValue()
abstract class WorkingAreaUpdate implements Built<WorkingAreaUpdate, WorkingAreaUpdateBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'days')
  BuiltList<WorkingDayUpdate> get days;

  WorkingAreaUpdate._();

  factory WorkingAreaUpdate([void updates(WorkingAreaUpdateBuilder b)]) = _$WorkingAreaUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkingAreaUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkingAreaUpdate> get serializer => _$WorkingAreaUpdateSerializer();
}

class _$WorkingAreaUpdateSerializer implements PrimitiveSerializer<WorkingAreaUpdate> {
  @override
  final Iterable<Type> types = const [WorkingAreaUpdate, _$WorkingAreaUpdate];

  @override
  final String wireName = r'WorkingAreaUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkingAreaUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'days';
    yield serializers.serialize(
      object.days,
      specifiedType: const FullType(BuiltList, [FullType(WorkingDayUpdate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkingAreaUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkingAreaUpdateBuilder result,
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
        case r'days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkingDayUpdate)]),
          ) as BuiltList<WorkingDayUpdate>;
          result.days.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkingAreaUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkingAreaUpdateBuilder();
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

