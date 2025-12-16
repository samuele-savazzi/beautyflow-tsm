//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify2_fa_setup_response.g.dart';

/// Response per verify 2FA setup
///
/// Properties:
/// * [message] 
/// * [backupCodes] - Lista di 8 backup codes
/// * [warning] 
@BuiltValue()
abstract class Verify2FASetupResponse implements Built<Verify2FASetupResponse, Verify2FASetupResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  /// Lista di 8 backup codes
  @BuiltValueField(wireName: r'backup_codes')
  BuiltList<String> get backupCodes;

  @BuiltValueField(wireName: r'warning')
  String get warning;

  Verify2FASetupResponse._();

  factory Verify2FASetupResponse([void updates(Verify2FASetupResponseBuilder b)]) = _$Verify2FASetupResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Verify2FASetupResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Verify2FASetupResponse> get serializer => _$Verify2FASetupResponseSerializer();
}

class _$Verify2FASetupResponseSerializer implements PrimitiveSerializer<Verify2FASetupResponse> {
  @override
  final Iterable<Type> types = const [Verify2FASetupResponse, _$Verify2FASetupResponse];

  @override
  final String wireName = r'Verify2FASetupResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Verify2FASetupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'backup_codes';
    yield serializers.serialize(
      object.backupCodes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'warning';
    yield serializers.serialize(
      object.warning,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Verify2FASetupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Verify2FASetupResponseBuilder result,
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
        case r'backup_codes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.backupCodes.replace(valueDes);
          break;
        case r'warning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.warning = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Verify2FASetupResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Verify2FASetupResponseBuilder();
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

