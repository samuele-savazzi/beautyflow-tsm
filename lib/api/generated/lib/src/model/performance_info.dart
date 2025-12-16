//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_info.g.dart';

/// PerformanceInfo
///
/// Properties:
/// * [queryExecutionTimeMs] 
/// * [totalExecutionTimeMs] 
/// * [processingTimeMs] 
/// * [rowsProcessed] 
@BuiltValue()
abstract class PerformanceInfo implements Built<PerformanceInfo, PerformanceInfoBuilder> {
  @BuiltValueField(wireName: r'query_execution_time_ms')
  double get queryExecutionTimeMs;

  @BuiltValueField(wireName: r'total_execution_time_ms')
  double get totalExecutionTimeMs;

  @BuiltValueField(wireName: r'processing_time_ms')
  double get processingTimeMs;

  @BuiltValueField(wireName: r'rows_processed')
  int get rowsProcessed;

  PerformanceInfo._();

  factory PerformanceInfo([void updates(PerformanceInfoBuilder b)]) = _$PerformanceInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PerformanceInfo> get serializer => _$PerformanceInfoSerializer();
}

class _$PerformanceInfoSerializer implements PrimitiveSerializer<PerformanceInfo> {
  @override
  final Iterable<Type> types = const [PerformanceInfo, _$PerformanceInfo];

  @override
  final String wireName = r'PerformanceInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PerformanceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'query_execution_time_ms';
    yield serializers.serialize(
      object.queryExecutionTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'total_execution_time_ms';
    yield serializers.serialize(
      object.totalExecutionTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'processing_time_ms';
    yield serializers.serialize(
      object.processingTimeMs,
      specifiedType: const FullType(double),
    );
    yield r'rows_processed';
    yield serializers.serialize(
      object.rowsProcessed,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PerformanceInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'query_execution_time_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.queryExecutionTimeMs = valueDes;
          break;
        case r'total_execution_time_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalExecutionTimeMs = valueDes;
          break;
        case r'processing_time_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.processingTimeMs = valueDes;
          break;
        case r'rows_processed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rowsProcessed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PerformanceInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceInfoBuilder();
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

