//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'check_fingerprint_response.g.dart';

/// CheckFingerprintResponse
///
/// Properties:
/// * [hasAccounts] 
/// * [accountsCount] 
/// * [biometricEnabled] 
/// * [deviceName] 
@BuiltValue()
abstract class CheckFingerprintResponse implements Built<CheckFingerprintResponse, CheckFingerprintResponseBuilder> {
  @BuiltValueField(wireName: r'has_accounts')
  bool get hasAccounts;

  @BuiltValueField(wireName: r'accounts_count')
  int get accountsCount;

  @BuiltValueField(wireName: r'biometric_enabled')
  bool get biometricEnabled;

  @BuiltValueField(wireName: r'device_name')
  String? get deviceName;

  CheckFingerprintResponse._();

  factory CheckFingerprintResponse([void updates(CheckFingerprintResponseBuilder b)]) = _$CheckFingerprintResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CheckFingerprintResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckFingerprintResponse> get serializer => _$CheckFingerprintResponseSerializer();
}

class _$CheckFingerprintResponseSerializer implements PrimitiveSerializer<CheckFingerprintResponse> {
  @override
  final Iterable<Type> types = const [CheckFingerprintResponse, _$CheckFingerprintResponse];

  @override
  final String wireName = r'CheckFingerprintResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckFingerprintResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'has_accounts';
    yield serializers.serialize(
      object.hasAccounts,
      specifiedType: const FullType(bool),
    );
    yield r'accounts_count';
    yield serializers.serialize(
      object.accountsCount,
      specifiedType: const FullType(int),
    );
    yield r'biometric_enabled';
    yield serializers.serialize(
      object.biometricEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'device_name';
    yield object.deviceName == null ? null : serializers.serialize(
      object.deviceName,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CheckFingerprintResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckFingerprintResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'has_accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasAccounts = valueDes;
          break;
        case r'accounts_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountsCount = valueDes;
          break;
        case r'biometric_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.biometricEnabled = valueDes;
          break;
        case r'device_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deviceName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CheckFingerprintResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CheckFingerprintResponseBuilder();
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

