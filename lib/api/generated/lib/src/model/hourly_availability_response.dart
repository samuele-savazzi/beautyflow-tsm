//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/hourly_availability_performance_response.dart';
import 'package:beautyflow_api/src/model/hourly_availability_operator_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hourly_availability_response.g.dart';

/// HourlyAvailabilityResponse
///
/// Properties:
/// * [success] - Stato della richiesta
/// * [data] 
/// * [performance] 
@BuiltValue()
abstract class HourlyAvailabilityResponse implements Built<HourlyAvailabilityResponse, HourlyAvailabilityResponseBuilder> {
  /// Stato della richiesta
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'data')
  HourlyAvailabilityOperatorResponse get data;

  @BuiltValueField(wireName: r'performance')
  HourlyAvailabilityPerformanceResponse get performance;

  HourlyAvailabilityResponse._();

  factory HourlyAvailabilityResponse([void updates(HourlyAvailabilityResponseBuilder b)]) = _$HourlyAvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourlyAvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HourlyAvailabilityResponse> get serializer => _$HourlyAvailabilityResponseSerializer();
}

class _$HourlyAvailabilityResponseSerializer implements PrimitiveSerializer<HourlyAvailabilityResponse> {
  @override
  final Iterable<Type> types = const [HourlyAvailabilityResponse, _$HourlyAvailabilityResponse];

  @override
  final String wireName = r'HourlyAvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourlyAvailabilityResponse object, {
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
      specifiedType: const FullType(HourlyAvailabilityOperatorResponse),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(HourlyAvailabilityPerformanceResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HourlyAvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HourlyAvailabilityResponseBuilder result,
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
            specifiedType: const FullType(HourlyAvailabilityOperatorResponse),
          ) as HourlyAvailabilityOperatorResponse;
          result.data.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HourlyAvailabilityPerformanceResponse),
          ) as HourlyAvailabilityPerformanceResponse;
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
  HourlyAvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourlyAvailabilityResponseBuilder();
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

