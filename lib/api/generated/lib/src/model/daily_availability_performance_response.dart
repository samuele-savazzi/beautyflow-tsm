//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_availability_performance_response.g.dart';

/// DailyAvailabilityPerformanceResponse
///
/// Properties:
/// * [responseTimeMs] - Tempo di risposta in millisecondi
/// * [cythonEnabled] - Se il modulo Cython è abilitato
/// * [targetMs] - Target di performance in millisecondi
/// * [daysProcessed] - Numero giorni processati
@BuiltValue()
abstract class DailyAvailabilityPerformanceResponse implements Built<DailyAvailabilityPerformanceResponse, DailyAvailabilityPerformanceResponseBuilder> {
  /// Tempo di risposta in millisecondi
  @BuiltValueField(wireName: r'response_time_ms')
  double get responseTimeMs;

  /// Se il modulo Cython è abilitato
  @BuiltValueField(wireName: r'cython_enabled')
  bool get cythonEnabled;

  /// Target di performance in millisecondi
  @BuiltValueField(wireName: r'target_ms')
  int get targetMs;

  /// Numero giorni processati
  @BuiltValueField(wireName: r'days_processed')
  int get daysProcessed;

  DailyAvailabilityPerformanceResponse._();

  factory DailyAvailabilityPerformanceResponse([void updates(DailyAvailabilityPerformanceResponseBuilder b)]) = _$DailyAvailabilityPerformanceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyAvailabilityPerformanceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyAvailabilityPerformanceResponse> get serializer => _$DailyAvailabilityPerformanceResponseSerializer();
}

class _$DailyAvailabilityPerformanceResponseSerializer implements PrimitiveSerializer<DailyAvailabilityPerformanceResponse> {
  @override
  final Iterable<Type> types = const [DailyAvailabilityPerformanceResponse, _$DailyAvailabilityPerformanceResponse];

  @override
  final String wireName = r'DailyAvailabilityPerformanceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyAvailabilityPerformanceResponse object, {
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
    yield r'days_processed';
    yield serializers.serialize(
      object.daysProcessed,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyAvailabilityPerformanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyAvailabilityPerformanceResponseBuilder result,
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
        case r'days_processed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysProcessed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyAvailabilityPerformanceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyAvailabilityPerformanceResponseBuilder();
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

