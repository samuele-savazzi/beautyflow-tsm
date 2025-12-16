//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/tokens_response.dart';
import 'package:beautyflow_api/src/model/tenant_admin_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify2_fa_login_response.g.dart';

/// Response per verifica 2FA login
///
/// Properties:
/// * [message] 
/// * [tokens] 
/// * [admin] 
@BuiltValue()
abstract class Verify2FALoginResponse implements Built<Verify2FALoginResponse, Verify2FALoginResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'tokens')
  TokensResponse get tokens;

  @BuiltValueField(wireName: r'admin')
  TenantAdminInfo get admin;

  Verify2FALoginResponse._();

  factory Verify2FALoginResponse([void updates(Verify2FALoginResponseBuilder b)]) = _$Verify2FALoginResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Verify2FALoginResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Verify2FALoginResponse> get serializer => _$Verify2FALoginResponseSerializer();
}

class _$Verify2FALoginResponseSerializer implements PrimitiveSerializer<Verify2FALoginResponse> {
  @override
  final Iterable<Type> types = const [Verify2FALoginResponse, _$Verify2FALoginResponse];

  @override
  final String wireName = r'Verify2FALoginResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Verify2FALoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'tokens';
    yield serializers.serialize(
      object.tokens,
      specifiedType: const FullType(TokensResponse),
    );
    yield r'admin';
    yield serializers.serialize(
      object.admin,
      specifiedType: const FullType(TenantAdminInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Verify2FALoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Verify2FALoginResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokensResponse),
          ) as TokensResponse;
          result.tokens.replace(valueDes);
          break;
        case r'admin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TenantAdminInfo),
          ) as TenantAdminInfo;
          result.admin.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Verify2FALoginResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Verify2FALoginResponseBuilder();
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

