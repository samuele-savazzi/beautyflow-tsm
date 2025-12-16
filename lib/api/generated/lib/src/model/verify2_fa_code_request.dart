//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify2_fa_code_request.g.dart';

/// Request per verifica codice 2FA
///
/// Properties:
/// * [code] - Codice TOTP a 6 cifre da Google Authenticator
/// * [backupCode] - Backup code (alternativa al codice TOTP)
@BuiltValue()
abstract class Verify2FACodeRequest implements Built<Verify2FACodeRequest, Verify2FACodeRequestBuilder> {
  /// Codice TOTP a 6 cifre da Google Authenticator
  @BuiltValueField(wireName: r'code')
  String? get code;

  /// Backup code (alternativa al codice TOTP)
  @BuiltValueField(wireName: r'backup_code')
  String? get backupCode;

  Verify2FACodeRequest._();

  factory Verify2FACodeRequest([void updates(Verify2FACodeRequestBuilder b)]) = _$Verify2FACodeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Verify2FACodeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Verify2FACodeRequest> get serializer => _$Verify2FACodeRequestSerializer();
}

class _$Verify2FACodeRequestSerializer implements PrimitiveSerializer<Verify2FACodeRequest> {
  @override
  final Iterable<Type> types = const [Verify2FACodeRequest, _$Verify2FACodeRequest];

  @override
  final String wireName = r'Verify2FACodeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Verify2FACodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
    if (object.backupCode != null) {
      yield r'backup_code';
      yield serializers.serialize(
        object.backupCode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Verify2FACodeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Verify2FACodeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'backup_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.backupCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Verify2FACodeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Verify2FACodeRequestBuilder();
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

