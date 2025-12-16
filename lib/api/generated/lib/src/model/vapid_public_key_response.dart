//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vapid_public_key_response.g.dart';

/// VapidPublicKeyResponse
///
/// Properties:
/// * [vapidPublicKey] 
@BuiltValue()
abstract class VapidPublicKeyResponse implements Built<VapidPublicKeyResponse, VapidPublicKeyResponseBuilder> {
  @BuiltValueField(wireName: r'vapidPublicKey')
  String get vapidPublicKey;

  VapidPublicKeyResponse._();

  factory VapidPublicKeyResponse([void updates(VapidPublicKeyResponseBuilder b)]) = _$VapidPublicKeyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VapidPublicKeyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VapidPublicKeyResponse> get serializer => _$VapidPublicKeyResponseSerializer();
}

class _$VapidPublicKeyResponseSerializer implements PrimitiveSerializer<VapidPublicKeyResponse> {
  @override
  final Iterable<Type> types = const [VapidPublicKeyResponse, _$VapidPublicKeyResponse];

  @override
  final String wireName = r'VapidPublicKeyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VapidPublicKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'vapidPublicKey';
    yield serializers.serialize(
      object.vapidPublicKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VapidPublicKeyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VapidPublicKeyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'vapidPublicKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vapidPublicKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VapidPublicKeyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VapidPublicKeyResponseBuilder();
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

