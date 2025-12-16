//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_request.g.dart';

/// Request per refresh token
///
/// Properties:
/// * [refresh] - Refresh token JWT
@BuiltValue()
abstract class RefreshTokenRequest implements Built<RefreshTokenRequest, RefreshTokenRequestBuilder> {
  /// Refresh token JWT
  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  RefreshTokenRequest._();

  factory RefreshTokenRequest([void updates(RefreshTokenRequestBuilder b)]) = _$RefreshTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshTokenRequest> get serializer => _$RefreshTokenRequestSerializer();
}

class _$RefreshTokenRequestSerializer implements PrimitiveSerializer<RefreshTokenRequest> {
  @override
  final Iterable<Type> types = const [RefreshTokenRequest, _$RefreshTokenRequest];

  @override
  final String wireName = r'RefreshTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refresh';
    yield serializers.serialize(
      object.refresh,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  RefreshTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenRequestBuilder();
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

