//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_response.g.dart';

/// PerformanceResponse
///
/// Properties:
/// * [responseTimeMs] - Tempo di risposta in millisecondi
/// * [cythonEnabled] - Se il modulo Cython è abilitato
/// * [targetMs] - Target di performance in millisecondi
@BuiltValue()
abstract class PerformanceResponse implements Built<PerformanceResponse, PerformanceResponseBuilder> {
  /// Tempo di risposta in millisecondi
  @BuiltValueField(wireName: r'response_time_ms')
  double get responseTimeMs;

  /// Se il modulo Cython è abilitato
  @BuiltValueField(wireName: r'cython_enabled')
  bool get cythonEnabled;

  /// Target di performance in millisecondi
  @BuiltValueField(wireName: r'target_ms')
  int get targetMs;

  PerformanceResponse._();

  factory PerformanceResponse([void updates(PerformanceResponseBuilder b)]) = _$PerformanceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PerformanceResponse> get serializer => _$PerformanceResponseSerializer();
}

class _$PerformanceResponseSerializer implements PrimitiveSerializer<PerformanceResponse> {
  @override
  final Iterable<Type> types = const [PerformanceResponse, _$PerformanceResponse];

  @override
  final String wireName = r'PerformanceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PerformanceResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PerformanceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PerformanceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceResponseBuilder();
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

