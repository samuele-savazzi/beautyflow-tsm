//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_old_phone_response.g.dart';

/// VerifyOldPhoneResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [newPhoneMasked] 
@BuiltValue()
abstract class VerifyOldPhoneResponse implements Built<VerifyOldPhoneResponse, VerifyOldPhoneResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'new_phone_masked')
  String get newPhoneMasked;

  VerifyOldPhoneResponse._();

  factory VerifyOldPhoneResponse([void updates(VerifyOldPhoneResponseBuilder b)]) = _$VerifyOldPhoneResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyOldPhoneResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyOldPhoneResponse> get serializer => _$VerifyOldPhoneResponseSerializer();
}

class _$VerifyOldPhoneResponseSerializer implements PrimitiveSerializer<VerifyOldPhoneResponse> {
  @override
  final Iterable<Type> types = const [VerifyOldPhoneResponse, _$VerifyOldPhoneResponse];

  @override
  final String wireName = r'VerifyOldPhoneResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyOldPhoneResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'new_phone_masked';
    yield serializers.serialize(
      object.newPhoneMasked,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyOldPhoneResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyOldPhoneResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'new_phone_masked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPhoneMasked = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyOldPhoneResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyOldPhoneResponseBuilder();
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

