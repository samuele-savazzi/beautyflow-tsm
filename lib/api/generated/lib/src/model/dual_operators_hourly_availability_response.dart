//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/dual_operators_hourly_availability_data.dart';
import 'package:beautyflow_api/src/model/dual_operators_hourly_availability_performance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_hourly_availability_response.g.dart';

/// Serializer completo per la risposta API dual operators
///
/// Properties:
/// * [success] - Stato della richiesta
/// * [data] 
/// * [performance] 
@BuiltValue()
abstract class DualOperatorsHourlyAvailabilityResponse implements Built<DualOperatorsHourlyAvailabilityResponse, DualOperatorsHourlyAvailabilityResponseBuilder> {
  /// Stato della richiesta
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'data')
  DualOperatorsHourlyAvailabilityData get data;

  @BuiltValueField(wireName: r'performance')
  DualOperatorsHourlyAvailabilityPerformance get performance;

  DualOperatorsHourlyAvailabilityResponse._();

  factory DualOperatorsHourlyAvailabilityResponse([void updates(DualOperatorsHourlyAvailabilityResponseBuilder b)]) = _$DualOperatorsHourlyAvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsHourlyAvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsHourlyAvailabilityResponse> get serializer => _$DualOperatorsHourlyAvailabilityResponseSerializer();
}

class _$DualOperatorsHourlyAvailabilityResponseSerializer implements PrimitiveSerializer<DualOperatorsHourlyAvailabilityResponse> {
  @override
  final Iterable<Type> types = const [DualOperatorsHourlyAvailabilityResponse, _$DualOperatorsHourlyAvailabilityResponse];

  @override
  final String wireName = r'DualOperatorsHourlyAvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityResponse object, {
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
      specifiedType: const FullType(DualOperatorsHourlyAvailabilityData),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(DualOperatorsHourlyAvailabilityPerformance),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsHourlyAvailabilityResponseBuilder result,
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
            specifiedType: const FullType(DualOperatorsHourlyAvailabilityData),
          ) as DualOperatorsHourlyAvailabilityData;
          result.data.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DualOperatorsHourlyAvailabilityPerformance),
          ) as DualOperatorsHourlyAvailabilityPerformance;
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
  DualOperatorsHourlyAvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsHourlyAvailabilityResponseBuilder();
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

