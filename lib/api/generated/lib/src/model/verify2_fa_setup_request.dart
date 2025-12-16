//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify2_fa_setup_request.g.dart';

/// Request per verify 2FA setup
///
/// Properties:
/// * [code] - Codice TOTP a 6 cifre
@BuiltValue()
abstract class Verify2FASetupRequest implements Built<Verify2FASetupRequest, Verify2FASetupRequestBuilder> {
  /// Codice TOTP a 6 cifre
  @BuiltValueField(wireName: r'code')
  String get code;

  Verify2FASetupRequest._();

  factory Verify2FASetupRequest([void updates(Verify2FASetupRequestBuilder b)]) = _$Verify2FASetupRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Verify2FASetupRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Verify2FASetupRequest> get serializer => _$Verify2FASetupRequestSerializer();
}

class _$Verify2FASetupRequestSerializer implements PrimitiveSerializer<Verify2FASetupRequest> {
  @override
  final Iterable<Type> types = const [Verify2FASetupRequest, _$Verify2FASetupRequest];

  @override
  final String wireName = r'Verify2FASetupRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Verify2FASetupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Verify2FASetupRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Verify2FASetupRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Verify2FASetupRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Verify2FASetupRequestBuilder();
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

