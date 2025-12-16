//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/batch_performance_response.dart';
import 'package:beautyflow_api/src/model/batch_result.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_response.g.dart';

/// BatchResponse
///
/// Properties:
/// * [success] - Stato generale del batch
/// * [results] - Risultati delle singole richieste
/// * [performance] 
@BuiltValue()
abstract class BatchResponse implements Built<BatchResponse, BatchResponseBuilder> {
  /// Stato generale del batch
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Risultati delle singole richieste
  @BuiltValueField(wireName: r'results')
  BuiltList<BatchResult> get results;

  @BuiltValueField(wireName: r'performance')
  BatchPerformanceResponse get performance;

  BatchResponse._();

  factory BatchResponse([void updates(BatchResponseBuilder b)]) = _$BatchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResponse> get serializer => _$BatchResponseSerializer();
}

class _$BatchResponseSerializer implements PrimitiveSerializer<BatchResponse> {
  @override
  final Iterable<Type> types = const [BatchResponse, _$BatchResponse];

  @override
  final String wireName = r'BatchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(BatchPerformanceResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchResult)]),
          ) as BuiltList<BatchResult>;
          result.results.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchPerformanceResponse),
          ) as BatchPerformanceResponse;
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
  BatchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResponseBuilder();
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

