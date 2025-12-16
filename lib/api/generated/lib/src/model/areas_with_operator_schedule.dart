//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/performance_info.dart';
import 'package:beautyflow_api/src/model/area_schedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'areas_with_operator_schedule.g.dart';

/// AreasWithOperatorSchedule
///
/// Properties:
/// * [areas] 
/// * [performance] 
@BuiltValue()
abstract class AreasWithOperatorSchedule implements Built<AreasWithOperatorSchedule, AreasWithOperatorScheduleBuilder> {
  @BuiltValueField(wireName: r'areas')
  BuiltList<AreaSchedule> get areas;

  @BuiltValueField(wireName: r'performance')
  PerformanceInfo get performance;

  AreasWithOperatorSchedule._();

  factory AreasWithOperatorSchedule([void updates(AreasWithOperatorScheduleBuilder b)]) = _$AreasWithOperatorSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreasWithOperatorScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreasWithOperatorSchedule> get serializer => _$AreasWithOperatorScheduleSerializer();
}

class _$AreasWithOperatorScheduleSerializer implements PrimitiveSerializer<AreasWithOperatorSchedule> {
  @override
  final Iterable<Type> types = const [AreasWithOperatorSchedule, _$AreasWithOperatorSchedule];

  @override
  final String wireName = r'AreasWithOperatorSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreasWithOperatorSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'areas';
    yield serializers.serialize(
      object.areas,
      specifiedType: const FullType(BuiltList, [FullType(AreaSchedule)]),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(PerformanceInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AreasWithOperatorSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreasWithOperatorScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AreaSchedule)]),
          ) as BuiltList<AreaSchedule>;
          result.areas.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PerformanceInfo),
          ) as PerformanceInfo;
          result.performance.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreasWithOperatorSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreasWithOperatorScheduleBuilder();
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

