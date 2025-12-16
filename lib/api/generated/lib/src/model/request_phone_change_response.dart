//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'request_phone_change_response.g.dart';

/// RequestPhoneChangeResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [currentPhoneMasked] 
@BuiltValue()
abstract class RequestPhoneChangeResponse implements Built<RequestPhoneChangeResponse, RequestPhoneChangeResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'current_phone_masked')
  String get currentPhoneMasked;

  RequestPhoneChangeResponse._();

  factory RequestPhoneChangeResponse([void updates(RequestPhoneChangeResponseBuilder b)]) = _$RequestPhoneChangeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RequestPhoneChangeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RequestPhoneChangeResponse> get serializer => _$RequestPhoneChangeResponseSerializer();
}

class _$RequestPhoneChangeResponseSerializer implements PrimitiveSerializer<RequestPhoneChangeResponse> {
  @override
  final Iterable<Type> types = const [RequestPhoneChangeResponse, _$RequestPhoneChangeResponse];

  @override
  final String wireName = r'RequestPhoneChangeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RequestPhoneChangeResponse object, {
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
    yield r'current_phone_masked';
    yield serializers.serialize(
      object.currentPhoneMasked,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RequestPhoneChangeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RequestPhoneChangeResponseBuilder result,
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
        case r'current_phone_masked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentPhoneMasked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RequestPhoneChangeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestPhoneChangeResponseBuilder();
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

