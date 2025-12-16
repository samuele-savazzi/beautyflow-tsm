//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tokens_response.g.dart';

/// Response con JWT tokens
///
/// Properties:
/// * [access] - Access token JWT
/// * [refresh] - Refresh token JWT
@BuiltValue()
abstract class TokensResponse implements Built<TokensResponse, TokensResponseBuilder> {
  /// Access token JWT
  @BuiltValueField(wireName: r'access')
  String get access;

  /// Refresh token JWT
  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  TokensResponse._();

  factory TokensResponse([void updates(TokensResponseBuilder b)]) = _$TokensResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokensResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokensResponse> get serializer => _$TokensResponseSerializer();
}

class _$TokensResponseSerializer implements PrimitiveSerializer<TokensResponse> {
  @override
  final Iterable<Type> types = const [TokensResponse, _$TokensResponse];

  @override
  final String wireName = r'TokensResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokensResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'access';
    yield serializers.serialize(
      object.access,
      specifiedType: const FullType(String),
    );
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokensResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokensResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.access = valueDes;
          break;
        case r'refresh':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refresh = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokensResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokensResponseBuilder();
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

