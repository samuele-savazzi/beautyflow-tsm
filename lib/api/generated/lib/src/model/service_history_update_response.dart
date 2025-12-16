//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/service_history_updated.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_history_update_response.g.dart';

/// ServiceHistoryUpdateResponse
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ServiceHistoryUpdateResponse implements Built<ServiceHistoryUpdateResponse, ServiceHistoryUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'data')
  ServiceHistoryUpdated get data;

  ServiceHistoryUpdateResponse._();

  factory ServiceHistoryUpdateResponse([void updates(ServiceHistoryUpdateResponseBuilder b)]) = _$ServiceHistoryUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceHistoryUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceHistoryUpdateResponse> get serializer => _$ServiceHistoryUpdateResponseSerializer();
}

class _$ServiceHistoryUpdateResponseSerializer implements PrimitiveSerializer<ServiceHistoryUpdateResponse> {
  @override
  final Iterable<Type> types = const [ServiceHistoryUpdateResponse, _$ServiceHistoryUpdateResponse];

  @override
  final String wireName = r'ServiceHistoryUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceHistoryUpdateResponse object, {
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
      specifiedType: const FullType(ServiceHistoryUpdated),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceHistoryUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceHistoryUpdateResponseBuilder result,
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
            specifiedType: const FullType(ServiceHistoryUpdated),
          ) as ServiceHistoryUpdated;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceHistoryUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceHistoryUpdateResponseBuilder();
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

