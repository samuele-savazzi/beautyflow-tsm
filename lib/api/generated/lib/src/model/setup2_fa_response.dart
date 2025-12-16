//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setup2_fa_response.g.dart';

/// Response per setup 2FA
///
/// Properties:
/// * [secret] - Secret TOTP per setup manuale
/// * [qrCode] - QR code base64 per Google Authenticator
/// * [message] 
@BuiltValue()
abstract class Setup2FAResponse implements Built<Setup2FAResponse, Setup2FAResponseBuilder> {
  /// Secret TOTP per setup manuale
  @BuiltValueField(wireName: r'secret')
  String get secret;

  /// QR code base64 per Google Authenticator
  @BuiltValueField(wireName: r'qr_code')
  String get qrCode;

  @BuiltValueField(wireName: r'message')
  String get message;

  Setup2FAResponse._();

  factory Setup2FAResponse([void updates(Setup2FAResponseBuilder b)]) = _$Setup2FAResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Setup2FAResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Setup2FAResponse> get serializer => _$Setup2FAResponseSerializer();
}

class _$Setup2FAResponseSerializer implements PrimitiveSerializer<Setup2FAResponse> {
  @override
  final Iterable<Type> types = const [Setup2FAResponse, _$Setup2FAResponse];

  @override
  final String wireName = r'Setup2FAResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Setup2FAResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'secret';
    yield serializers.serialize(
      object.secret,
      specifiedType: const FullType(String),
    );
    yield r'qr_code';
    yield serializers.serialize(
      object.qrCode,
      specifiedType: const FullType(String),
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
    Setup2FAResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Setup2FAResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secret = valueDes;
          break;
        case r'qr_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qrCode = valueDes;
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
  Setup2FAResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Setup2FAResponseBuilder();
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

