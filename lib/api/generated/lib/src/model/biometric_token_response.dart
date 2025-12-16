//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/user_info_with_role_biometric.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'biometric_token_response.g.dart';

/// BiometricTokenResponse
///
/// Properties:
/// * [access] 
/// * [refresh] 
/// * [user] 
@BuiltValue()
abstract class BiometricTokenResponse implements Built<BiometricTokenResponse, BiometricTokenResponseBuilder> {
  @BuiltValueField(wireName: r'access')
  String get access;

  @BuiltValueField(wireName: r'refresh')
  String get refresh;

  @BuiltValueField(wireName: r'user')
  UserInfoWithRoleBiometric get user;

  BiometricTokenResponse._();

  factory BiometricTokenResponse([void updates(BiometricTokenResponseBuilder b)]) = _$BiometricTokenResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BiometricTokenResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BiometricTokenResponse> get serializer => _$BiometricTokenResponseSerializer();
}

class _$BiometricTokenResponseSerializer implements PrimitiveSerializer<BiometricTokenResponse> {
  @override
  final Iterable<Type> types = const [BiometricTokenResponse, _$BiometricTokenResponse];

  @override
  final String wireName = r'BiometricTokenResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BiometricTokenResponse object, {
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
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(UserInfoWithRoleBiometric),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BiometricTokenResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BiometricTokenResponseBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserInfoWithRoleBiometric),
          ) as UserInfoWithRoleBiometric;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BiometricTokenResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BiometricTokenResponseBuilder();
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

