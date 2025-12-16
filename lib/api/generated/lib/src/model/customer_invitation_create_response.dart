//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_invitation_create_response.g.dart';

/// CustomerInvitationCreateResponse
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [invitationId] 
/// * [invitationUrl] 
/// * [expiresAt] 
@BuiltValue()
abstract class CustomerInvitationCreateResponse implements Built<CustomerInvitationCreateResponse, CustomerInvitationCreateResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'invitation_id')
  String get invitationId;

  @BuiltValueField(wireName: r'invitation_url')
  String get invitationUrl;

  @BuiltValueField(wireName: r'expires_at')
  DateTime get expiresAt;

  CustomerInvitationCreateResponse._();

  factory CustomerInvitationCreateResponse([void updates(CustomerInvitationCreateResponseBuilder b)]) = _$CustomerInvitationCreateResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInvitationCreateResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInvitationCreateResponse> get serializer => _$CustomerInvitationCreateResponseSerializer();
}

class _$CustomerInvitationCreateResponseSerializer implements PrimitiveSerializer<CustomerInvitationCreateResponse> {
  @override
  final Iterable<Type> types = const [CustomerInvitationCreateResponse, _$CustomerInvitationCreateResponse];

  @override
  final String wireName = r'CustomerInvitationCreateResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInvitationCreateResponse object, {
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
    yield r'invitation_id';
    yield serializers.serialize(
      object.invitationId,
      specifiedType: const FullType(String),
    );
    yield r'invitation_url';
    yield serializers.serialize(
      object.invitationUrl,
      specifiedType: const FullType(String),
    );
    yield r'expires_at';
    yield serializers.serialize(
      object.expiresAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerInvitationCreateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInvitationCreateResponseBuilder result,
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
        case r'invitation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invitationId = valueDes;
          break;
        case r'invitation_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invitationUrl = valueDes;
          break;
        case r'expires_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiresAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerInvitationCreateResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInvitationCreateResponseBuilder();
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

