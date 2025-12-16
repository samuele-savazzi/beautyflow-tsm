//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_token_response.g.dart';

/// ValidateTokenResponse
///
/// Properties:
/// * [valid] 
/// * [message] 
@BuiltValue()
abstract class ValidateTokenResponse implements Built<ValidateTokenResponse, ValidateTokenResponseBuilder> {
  @BuiltValueField(wireName: r'valid')
  bool get valid;

  @BuiltValueField(wireName: r'message')
  String get message;

  ValidateTokenResponse._();

  factory ValidateTokenResponse([void updates(ValidateTokenResponseBuilder b)]) = _$ValidateTokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateTokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateTokenResponse> get serializer => _$ValidateTokenResponseSerializer();
}

class _$ValidateTokenResponseSerializer implements PrimitiveSerializer<ValidateTokenResponse> {
  @override
  final Iterable<Type> types = const [ValidateTokenResponse, _$ValidateTokenResponse];

  @override
  final String wireName = r'ValidateTokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateTokenResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateTokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateTokenResponseBuilder();
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

