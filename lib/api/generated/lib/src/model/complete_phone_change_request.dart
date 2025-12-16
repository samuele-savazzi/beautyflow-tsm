//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_phone_change_request.g.dart';

/// CompletePhoneChangeRequest
///
/// Properties:
/// * [newPhone] - Nuovo numero di telefono
/// * [newPhoneOtp] - OTP ricevuto sul nuovo numero
@BuiltValue()
abstract class CompletePhoneChangeRequest implements Built<CompletePhoneChangeRequest, CompletePhoneChangeRequestBuilder> {
  /// Nuovo numero di telefono
  @BuiltValueField(wireName: r'new_phone')
  String get newPhone;

  /// OTP ricevuto sul nuovo numero
  @BuiltValueField(wireName: r'new_phone_otp')
  String get newPhoneOtp;

  CompletePhoneChangeRequest._();

  factory CompletePhoneChangeRequest([void updates(CompletePhoneChangeRequestBuilder b)]) = _$CompletePhoneChangeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompletePhoneChangeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompletePhoneChangeRequest> get serializer => _$CompletePhoneChangeRequestSerializer();
}

class _$CompletePhoneChangeRequestSerializer implements PrimitiveSerializer<CompletePhoneChangeRequest> {
  @override
  final Iterable<Type> types = const [CompletePhoneChangeRequest, _$CompletePhoneChangeRequest];

  @override
  final String wireName = r'CompletePhoneChangeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompletePhoneChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'new_phone';
    yield serializers.serialize(
      object.newPhone,
      specifiedType: const FullType(String),
    );
    yield r'new_phone_otp';
    yield serializers.serialize(
      object.newPhoneOtp,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CompletePhoneChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompletePhoneChangeRequestBuilder result,
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
        case r'new_phone_otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPhoneOtp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CompletePhoneChangeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompletePhoneChangeRequestBuilder();
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

