//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/customer_updated.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_update_response.g.dart';

/// CustomerUpdateResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [customer] 
@BuiltValue()
abstract class CustomerUpdateResponse implements Built<CustomerUpdateResponse, CustomerUpdateResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'customer')
  CustomerUpdated get customer;

  CustomerUpdateResponse._();

  factory CustomerUpdateResponse([void updates(CustomerUpdateResponseBuilder b)]) = _$CustomerUpdateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerUpdateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerUpdateResponse> get serializer => _$CustomerUpdateResponseSerializer();
}

class _$CustomerUpdateResponseSerializer implements PrimitiveSerializer<CustomerUpdateResponse> {
  @override
  final Iterable<Type> types = const [CustomerUpdateResponse, _$CustomerUpdateResponse];

  @override
  final String wireName = r'CustomerUpdateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(CustomerUpdated),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerUpdateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerUpdateResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerUpdated),
          ) as CustomerUpdated;
          result.customer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerUpdateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerUpdateResponseBuilder();
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

