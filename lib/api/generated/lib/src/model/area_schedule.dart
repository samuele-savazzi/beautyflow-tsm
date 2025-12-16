//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/working_day.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/area_operator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_schedule.g.dart';

/// AreaSchedule
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [mainArea] 
/// * [operators] 
/// * [workingDays] 
@BuiltValue()
abstract class AreaSchedule implements Built<AreaSchedule, AreaScheduleBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'main_area')
  bool get mainArea;

  @BuiltValueField(wireName: r'operators')
  BuiltList<AreaOperator> get operators;

  @BuiltValueField(wireName: r'working_days')
  BuiltList<WorkingDay> get workingDays;

  AreaSchedule._();

  factory AreaSchedule([void updates(AreaScheduleBuilder b)]) = _$AreaSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaSchedule> get serializer => _$AreaScheduleSerializer();
}

class _$AreaScheduleSerializer implements PrimitiveSerializer<AreaSchedule> {
  @override
  final Iterable<Type> types = const [AreaSchedule, _$AreaSchedule];

  @override
  final String wireName = r'AreaSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'main_area';
    yield serializers.serialize(
      object.mainArea,
      specifiedType: const FullType(bool),
    );
    yield r'operators';
    yield serializers.serialize(
      object.operators,
      specifiedType: const FullType(BuiltList, [FullType(AreaOperator)]),
    );
    yield r'working_days';
    yield serializers.serialize(
      object.workingDays,
      specifiedType: const FullType(BuiltList, [FullType(WorkingDay)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaScheduleBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'main_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.mainArea = valueDes;
          break;
        case r'operators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaOperator)]),
          ) as BuiltList<AreaOperator>;
          result.operators.replace(valueDes);
          break;
        case r'working_days':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkingDay)]),
          ) as BuiltList<WorkingDay>;
          result.workingDays.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaScheduleBuilder();
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

