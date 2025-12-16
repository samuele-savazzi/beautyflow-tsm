//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_performance_response.g.dart';

/// BatchPerformanceResponse
///
/// Properties:
/// * [responseTimeMs] - Tempo totale di risposta in millisecondi
/// * [requestsCount] - Numero di richieste processate
/// * [avgTimePerRequest] - Tempo medio per richiesta
@BuiltValue()
abstract class BatchPerformanceResponse implements Built<BatchPerformanceResponse, BatchPerformanceResponseBuilder> {
  /// Tempo totale di risposta in millisecondi
  @BuiltValueField(wireName: r'response_time_ms')
  double get responseTimeMs;

  /// Numero di richieste processate
  @BuiltValueField(wireName: r'requests_count')
  int get requestsCount;

  /// Tempo medio per richiesta
  @BuiltValueField(wireName: r'avg_time_per_request')
  double get avgTimePerRequest;

  BatchPerformanceResponse._();

  factory BatchPerformanceResponse([void updates(BatchPerformanceResponseBuilder b)]) = _$BatchPerformanceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchPerformanceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchPerformanceResponse> get serializer => _$BatchPerformanceResponseSerializer();
}

class _$BatchPerformanceResponseSerializer implements PrimitiveSerializer<BatchPerformanceResponse> {
  @override
  final Iterable<Type> types = const [BatchPerformanceResponse, _$BatchPerformanceResponse];

  @override
  final String wireName = r'BatchPerformanceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchPerformanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response_time_ms';
    yield serializers.serialize(
      object.responseTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'requests_count';
    yield serializers.serialize(
      object.requestsCount,
      specifiedType: const FullType(int),
    );
    yield r'avg_time_per_request';
    yield serializers.serialize(
      object.avgTimePerRequest,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchPerformanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchPerformanceResponseBuilder result,
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
        case r'requests_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.requestsCount = valueDes;
          break;
        case r'avg_time_per_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.avgTimePerRequest = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchPerformanceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchPerformanceResponseBuilder();
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

