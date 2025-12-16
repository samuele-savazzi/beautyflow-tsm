//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'otp_request.g.dart';

/// OTPRequest
///
/// Properties:
/// * [phone] - Numero di telefono a cui inviare l'OTP
@BuiltValue()
abstract class OTPRequest implements Built<OTPRequest, OTPRequestBuilder> {
  /// Numero di telefono a cui inviare l'OTP
  @BuiltValueField(wireName: r'phone')
  String get phone;

  OTPRequest._();

  factory OTPRequest([void updates(OTPRequestBuilder b)]) = _$OTPRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OTPRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OTPRequest> get serializer => _$OTPRequestSerializer();
}

class _$OTPRequestSerializer implements PrimitiveSerializer<OTPRequest> {
  @override
  final Iterable<Type> types = const [OTPRequest, _$OTPRequest];

  @override
  final String wireName = r'OTPRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OTPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OTPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OTPRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OTPRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OTPRequestBuilder();
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

