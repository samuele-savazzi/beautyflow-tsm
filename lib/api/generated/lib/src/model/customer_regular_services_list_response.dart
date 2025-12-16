//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/customer_regular_service.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_regular_services_list_response.g.dart';

/// CustomerRegularServicesListResponse
///
/// Properties:
/// * [count] 
/// * [results] 
@BuiltValue()
abstract class CustomerRegularServicesListResponse implements Built<CustomerRegularServicesListResponse, CustomerRegularServicesListResponseBuilder> {
  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'results')
  BuiltList<CustomerRegularService> get results;

  CustomerRegularServicesListResponse._();

  factory CustomerRegularServicesListResponse([void updates(CustomerRegularServicesListResponseBuilder b)]) = _$CustomerRegularServicesListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerRegularServicesListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerRegularServicesListResponse> get serializer => _$CustomerRegularServicesListResponseSerializer();
}

class _$CustomerRegularServicesListResponseSerializer implements PrimitiveSerializer<CustomerRegularServicesListResponse> {
  @override
  final Iterable<Type> types = const [CustomerRegularServicesListResponse, _$CustomerRegularServicesListResponse];

  @override
  final String wireName = r'CustomerRegularServicesListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerRegularServicesListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(CustomerRegularService)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerRegularServicesListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerRegularServicesListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerRegularService)]),
          ) as BuiltList<CustomerRegularService>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerRegularServicesListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerRegularServicesListResponseBuilder();
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

