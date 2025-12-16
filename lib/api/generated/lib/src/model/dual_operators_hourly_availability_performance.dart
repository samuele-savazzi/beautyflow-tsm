//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_hourly_availability_performance.g.dart';

/// Serializer per le metriche di performance dual operators
///
/// Properties:
/// * [responseTimeMs] - Tempo di risposta in millisecondi
/// * [cythonEnabled] - Se il modulo Cython è abilitato
/// * [targetMs] - Target di performance in millisecondi
/// * [combinationsFound] - Numero combinazioni trovate
@BuiltValue()
abstract class DualOperatorsHourlyAvailabilityPerformance implements Built<DualOperatorsHourlyAvailabilityPerformance, DualOperatorsHourlyAvailabilityPerformanceBuilder> {
  /// Tempo di risposta in millisecondi
  @BuiltValueField(wireName: r'response_time_ms')
  double get responseTimeMs;

  /// Se il modulo Cython è abilitato
  @BuiltValueField(wireName: r'cython_enabled')
  bool get cythonEnabled;

  /// Target di performance in millisecondi
  @BuiltValueField(wireName: r'target_ms')
  int get targetMs;

  /// Numero combinazioni trovate
  @BuiltValueField(wireName: r'combinations_found')
  int get combinationsFound;

  DualOperatorsHourlyAvailabilityPerformance._();

  factory DualOperatorsHourlyAvailabilityPerformance([void updates(DualOperatorsHourlyAvailabilityPerformanceBuilder b)]) = _$DualOperatorsHourlyAvailabilityPerformance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsHourlyAvailabilityPerformanceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsHourlyAvailabilityPerformance> get serializer => _$DualOperatorsHourlyAvailabilityPerformanceSerializer();
}

class _$DualOperatorsHourlyAvailabilityPerformanceSerializer implements PrimitiveSerializer<DualOperatorsHourlyAvailabilityPerformance> {
  @override
  final Iterable<Type> types = const [DualOperatorsHourlyAvailabilityPerformance, _$DualOperatorsHourlyAvailabilityPerformance];

  @override
  final String wireName = r'DualOperatorsHourlyAvailabilityPerformance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response_time_ms';
    yield serializers.serialize(
      object.responseTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'cython_enabled';
    yield serializers.serialize(
      object.cythonEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'target_ms';
    yield serializers.serialize(
      object.targetMs,
      specifiedType: const FullType(int),
    );
    yield r'combinations_found';
    yield serializers.serialize(
      object.combinationsFound,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityPerformance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsHourlyAvailabilityPerformanceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response_time_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.responseTimeMs = valueDes;
          break;
        case r'cython_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.cythonEnabled = valueDes;
          break;
        case r'target_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.targetMs = valueDes;
          break;
        case r'combinations_found':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.combinationsFound = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DualOperatorsHourlyAvailabilityPerformance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsHourlyAvailabilityPerformanceBuilder();
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

