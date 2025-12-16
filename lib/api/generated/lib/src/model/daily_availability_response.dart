//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/daily_availability_operator_response.dart';
import 'package:beautyflow_api/src/model/daily_availability_performance_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_availability_response.g.dart';

/// DailyAvailabilityResponse
///
/// Properties:
/// * [success] - Stato della richiesta
/// * [data] 
/// * [performance] 
@BuiltValue()
abstract class DailyAvailabilityResponse implements Built<DailyAvailabilityResponse, DailyAvailabilityResponseBuilder> {
  /// Stato della richiesta
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'data')
  DailyAvailabilityOperatorResponse get data;

  @BuiltValueField(wireName: r'performance')
  DailyAvailabilityPerformanceResponse get performance;

  DailyAvailabilityResponse._();

  factory DailyAvailabilityResponse([void updates(DailyAvailabilityResponseBuilder b)]) = _$DailyAvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyAvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyAvailabilityResponse> get serializer => _$DailyAvailabilityResponseSerializer();
}

class _$DailyAvailabilityResponseSerializer implements PrimitiveSerializer<DailyAvailabilityResponse> {
  @override
  final Iterable<Type> types = const [DailyAvailabilityResponse, _$DailyAvailabilityResponse];

  @override
  final String wireName = r'DailyAvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyAvailabilityResponse object, {
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
      specifiedType: const FullType(DailyAvailabilityOperatorResponse),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(DailyAvailabilityPerformanceResponse),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyAvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyAvailabilityResponseBuilder result,
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
            specifiedType: const FullType(DailyAvailabilityOperatorResponse),
          ) as DailyAvailabilityOperatorResponse;
          result.data.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DailyAvailabilityPerformanceResponse),
          ) as DailyAvailabilityPerformanceResponse;
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
  DailyAvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyAvailabilityResponseBuilder();
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

