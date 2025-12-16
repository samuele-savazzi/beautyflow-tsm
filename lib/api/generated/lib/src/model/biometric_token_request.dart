//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'biometric_token_request.g.dart';

/// BiometricTokenRequest
///
/// Properties:
/// * [deviceFingerprint] 
/// * [userId] 
/// * [biometricVerified] 
@BuiltValue()
abstract class BiometricTokenRequest implements Built<BiometricTokenRequest, BiometricTokenRequestBuilder> {
  @BuiltValueField(wireName: r'device_fingerprint')
  String get deviceFingerprint;

  @BuiltValueField(wireName: r'user_id')
  int get userId;

  @BuiltValueField(wireName: r'biometric_verified')
  bool get biometricVerified;

  BiometricTokenRequest._();

  factory BiometricTokenRequest([void updates(BiometricTokenRequestBuilder b)]) = _$BiometricTokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BiometricTokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BiometricTokenRequest> get serializer => _$BiometricTokenRequestSerializer();
}

class _$BiometricTokenRequestSerializer implements PrimitiveSerializer<BiometricTokenRequest> {
  @override
  final Iterable<Type> types = const [BiometricTokenRequest, _$BiometricTokenRequest];

  @override
  final String wireName = r'BiometricTokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BiometricTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'device_fingerprint';
    yield serializers.serialize(
      object.deviceFingerprint,
      specifiedType: const FullType(String),
    );
    yield r'user_id';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(int),
    );
    yield r'biometric_verified';
    yield serializers.serialize(
      object.biometricVerified,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BiometricTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BiometricTokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'device_fingerprint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deviceFingerprint = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.userId = valueDes;
          break;
        case r'biometric_verified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.biometricVerified = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BiometricTokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BiometricTokenRequestBuilder();
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

