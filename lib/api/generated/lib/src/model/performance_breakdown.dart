//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_breakdown.g.dart';

/// Serializzatore per i dettagli di performance
///
/// Properties:
/// * [unifiedQueryMs] 
/// * [dataProcessingMs] 
/// * [batchWorkstationsMs] 
/// * [batchCategoriesMs] 
@BuiltValue()
abstract class PerformanceBreakdown implements Built<PerformanceBreakdown, PerformanceBreakdownBuilder> {
  @BuiltValueField(wireName: r'unified_query_ms')
  double get unifiedQueryMs;

  @BuiltValueField(wireName: r'data_processing_ms')
  double get dataProcessingMs;

  @BuiltValueField(wireName: r'batch_workstations_ms')
  double get batchWorkstationsMs;

  @BuiltValueField(wireName: r'batch_categories_ms')
  double get batchCategoriesMs;

  PerformanceBreakdown._();

  factory PerformanceBreakdown([void updates(PerformanceBreakdownBuilder b)]) = _$PerformanceBreakdown;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceBreakdownBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PerformanceBreakdown> get serializer => _$PerformanceBreakdownSerializer();
}

class _$PerformanceBreakdownSerializer implements PrimitiveSerializer<PerformanceBreakdown> {
  @override
  final Iterable<Type> types = const [PerformanceBreakdown, _$PerformanceBreakdown];

  @override
  final String wireName = r'PerformanceBreakdown';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PerformanceBreakdown object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unified_query_ms';
    yield serializers.serialize(
      object.unifiedQueryMs,
      specifiedType: const FullType(double),
    );
    yield r'data_processing_ms';
    yield serializers.serialize(
      object.dataProcessingMs,
      specifiedType: const FullType(double),
    );
    yield r'batch_workstations_ms';
    yield serializers.serialize(
      object.batchWorkstationsMs,
      specifiedType: const FullType(double),
    );
    yield r'batch_categories_ms';
    yield serializers.serialize(
      object.batchCategoriesMs,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PerformanceBreakdown object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceBreakdownBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unified_query_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.unifiedQueryMs = valueDes;
          break;
        case r'data_processing_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.dataProcessingMs = valueDes;
          break;
        case r'batch_workstations_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.batchWorkstationsMs = valueDes;
          break;
        case r'batch_categories_ms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.batchCategoriesMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PerformanceBreakdown deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceBreakdownBuilder();
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

