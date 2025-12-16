//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/customer_phone_updated.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_phone_change_response.g.dart';

/// CompletePhoneChangeResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [customer] 
@BuiltValue()
abstract class CompletePhoneChangeResponse implements Built<CompletePhoneChangeResponse, CompletePhoneChangeResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'customer')
  CustomerPhoneUpdated get customer;

  CompletePhoneChangeResponse._();

  factory CompletePhoneChangeResponse([void updates(CompletePhoneChangeResponseBuilder b)]) = _$CompletePhoneChangeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompletePhoneChangeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompletePhoneChangeResponse> get serializer => _$CompletePhoneChangeResponseSerializer();
}

class _$CompletePhoneChangeResponseSerializer implements PrimitiveSerializer<CompletePhoneChangeResponse> {
  @override
  final Iterable<Type> types = const [CompletePhoneChangeResponse, _$CompletePhoneChangeResponse];

  @override
  final String wireName = r'CompletePhoneChangeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompletePhoneChangeResponse object, {
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
      specifiedType: const FullType(CustomerPhoneUpdated),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CompletePhoneChangeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompletePhoneChangeResponseBuilder result,
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
            specifiedType: const FullType(CustomerPhoneUpdated),
          ) as CustomerPhoneUpdated;
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
  CompletePhoneChangeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompletePhoneChangeResponseBuilder();
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

