//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_old_phone_request.g.dart';

/// VerifyOldPhoneRequest
///
/// Properties:
/// * [newPhone] - Nuovo numero di telefono
/// * [oldPhoneOtp] - OTP ricevuto sul numero attuale
@BuiltValue()
abstract class VerifyOldPhoneRequest implements Built<VerifyOldPhoneRequest, VerifyOldPhoneRequestBuilder> {
  /// Nuovo numero di telefono
  @BuiltValueField(wireName: r'new_phone')
  String get newPhone;

  /// OTP ricevuto sul numero attuale
  @BuiltValueField(wireName: r'old_phone_otp')
  String get oldPhoneOtp;

  VerifyOldPhoneRequest._();

  factory VerifyOldPhoneRequest([void updates(VerifyOldPhoneRequestBuilder b)]) = _$VerifyOldPhoneRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyOldPhoneRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyOldPhoneRequest> get serializer => _$VerifyOldPhoneRequestSerializer();
}

class _$VerifyOldPhoneRequestSerializer implements PrimitiveSerializer<VerifyOldPhoneRequest> {
  @override
  final Iterable<Type> types = const [VerifyOldPhoneRequest, _$VerifyOldPhoneRequest];

  @override
  final String wireName = r'VerifyOldPhoneRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyOldPhoneRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'new_phone';
    yield serializers.serialize(
      object.newPhone,
      specifiedType: const FullType(String),
    );
    yield r'old_phone_otp';
    yield serializers.serialize(
      object.oldPhoneOtp,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyOldPhoneRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyOldPhoneRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPhone = valueDes;
          break;
        case r'old_phone_otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oldPhoneOtp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyOldPhoneRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyOldPhoneRequestBuilder();
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

