//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/performance_breakdown.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance.g.dart';

/// Serializzatore per le statistiche di performance
///
/// Properties:
/// * [totalTimeMs] 
/// * [breakdown] 
/// * [servicesCount] 
/// * [operatorsCount] 
@BuiltValue()
abstract class Performance implements Built<Performance, PerformanceBuilder> {
  @BuiltValueField(wireName: r'total_time_ms')
  double get totalTimeMs;

  @BuiltValueField(wireName: r'breakdown')
  PerformanceBreakdown get breakdown;

  @BuiltValueField(wireName: r'services_count')
  int get servicesCount;

  @BuiltValueField(wireName: r'operators_count')
  int get operatorsCount;

  Performance._();

  factory Performance([void updates(PerformanceBuilder b)]) = _$Performance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Performance> get serializer => _$PerformanceSerializer();
}

class _$PerformanceSerializer implements PrimitiveSerializer<Performance> {
  @override
  final Iterable<Type> types = const [Performance, _$Performance];

  @override
  final String wireName = r'Performance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Performance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total_time_ms';
    yield serializers.serialize(
      object.totalTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'breakdown';
    yield serializers.serialize(
      object.breakdown,
      specifiedType: const FullType(PerformanceBreakdown),
    );
    yield r'services_count';
    yield serializers.serialize(
      object.servicesCount,
      specifiedType: const FullType(int),
    );
    yield r'operators_count';
    yield serializers.serialize(
      object.operatorsCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Performance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total_time_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalTimeMs = valueDes;
          break;
        case r'breakdown':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PerformanceBreakdown),
          ) as PerformanceBreakdown;
          result.breakdown.replace(valueDes);
          break;
        case r'services_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.servicesCount = valueDes;
          break;
        case r'operators_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorsCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Performance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceBuilder();
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

