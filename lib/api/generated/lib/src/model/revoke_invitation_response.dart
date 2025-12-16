//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revoke_invitation_response.g.dart';

/// RevokeInvitationResponse
///
/// Properties:
/// * [success] 
/// * [message] 
@BuiltValue()
abstract class RevokeInvitationResponse implements Built<RevokeInvitationResponse, RevokeInvitationResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  RevokeInvitationResponse._();

  factory RevokeInvitationResponse([void updates(RevokeInvitationResponseBuilder b)]) = _$RevokeInvitationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevokeInvitationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevokeInvitationResponse> get serializer => _$RevokeInvitationResponseSerializer();
}

class _$RevokeInvitationResponseSerializer implements PrimitiveSerializer<RevokeInvitationResponse> {
  @override
  final Iterable<Type> types = const [RevokeInvitationResponse, _$RevokeInvitationResponse];

  @override
  final String wireName = r'RevokeInvitationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevokeInvitationResponse object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    RevokeInvitationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevokeInvitationResponseBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevokeInvitationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevokeInvitationResponseBuilder();
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

