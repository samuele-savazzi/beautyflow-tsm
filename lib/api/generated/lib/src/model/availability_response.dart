//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/performance_response.dart';
import 'package:beautyflow_api/src/model/operator_data_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'availability_response.g.dart';

/// AvailabilityResponse
///
/// Properties:
/// * [success] - Stato della richiesta
/// * [data] 
/// * [performance] 
@BuiltValue()
abstract class AvailabilityResponse implements Built<AvailabilityResponse, AvailabilityResponseBuilder> {
  /// Stato della richiesta
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'data')
  OperatorDataResponse get data;

  @BuiltValueField(wireName: r'performance')
  PerformanceResponse get performance;

  AvailabilityResponse._();

  factory AvailabilityResponse([void updates(AvailabilityResponseBuilder b)]) = _$AvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvailabilityResponse> get serializer => _$AvailabilityResponseSerializer();
}

class _$AvailabilityResponseSerializer implements PrimitiveSerializer<AvailabilityResponse> {
  @override
  final Iterable<Type> types = const [AvailabilityResponse, _$AvailabilityResponse];

  @override
  final String wireName = r'AvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OperatorDataResponse),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(PerformanceResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvailabilityResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorDataResponse),
          ) as OperatorDataResponse;
          result.data.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PerformanceResponse),
          ) as PerformanceResponse;
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
  AvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailabilityResponseBuilder();
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

