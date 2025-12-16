//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/available_service.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_available_services_response.g.dart';

/// GetAvailableServicesResponse
///
/// Properties:
/// * [services] - Lista dei servizi disponibili per la selezione del servizio frequente
@BuiltValue()
abstract class GetAvailableServicesResponse implements Built<GetAvailableServicesResponse, GetAvailableServicesResponseBuilder> {
  /// Lista dei servizi disponibili per la selezione del servizio frequente
  @BuiltValueField(wireName: r'services')
  BuiltList<AvailableService> get services;

  GetAvailableServicesResponse._();

  factory GetAvailableServicesResponse([void updates(GetAvailableServicesResponseBuilder b)]) = _$GetAvailableServicesResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAvailableServicesResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAvailableServicesResponse> get serializer => _$GetAvailableServicesResponseSerializer();
}

class _$GetAvailableServicesResponseSerializer implements PrimitiveSerializer<GetAvailableServicesResponse> {
  @override
  final Iterable<Type> types = const [GetAvailableServicesResponse, _$GetAvailableServicesResponse];

  @override
  final String wireName = r'GetAvailableServicesResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAvailableServicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(AvailableService)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAvailableServicesResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAvailableServicesResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AvailableService)]),
          ) as BuiltList<AvailableService>;
          result.services.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAvailableServicesResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAvailableServicesResponseBuilder();
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

