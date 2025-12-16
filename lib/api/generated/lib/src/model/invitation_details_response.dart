//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/public_invitation_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invitation_details_response.g.dart';

/// InvitationDetailsResponse
///
/// Properties:
/// * [success] 
/// * [invitation] 
@BuiltValue()
abstract class InvitationDetailsResponse implements Built<InvitationDetailsResponse, InvitationDetailsResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'invitation')
  PublicInvitationDetail get invitation;

  InvitationDetailsResponse._();

  factory InvitationDetailsResponse([void updates(InvitationDetailsResponseBuilder b)]) = _$InvitationDetailsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvitationDetailsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvitationDetailsResponse> get serializer => _$InvitationDetailsResponseSerializer();
}

class _$InvitationDetailsResponseSerializer implements PrimitiveSerializer<InvitationDetailsResponse> {
  @override
  final Iterable<Type> types = const [InvitationDetailsResponse, _$InvitationDetailsResponse];

  @override
  final String wireName = r'InvitationDetailsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvitationDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'invitation';
    yield serializers.serialize(
      object.invitation,
      specifiedType: const FullType(PublicInvitationDetail),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InvitationDetailsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvitationDetailsResponseBuilder result,
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
        case r'invitation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PublicInvitationDetail),
          ) as PublicInvitationDetail;
          result.invitation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvitationDetailsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvitationDetailsResponseBuilder();
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

