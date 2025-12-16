//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/customer_invitation_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_invitation_detail_response.g.dart';

/// CustomerInvitationDetailResponse
///
/// Properties:
/// * [success] 
/// * [invitation] 
@BuiltValue()
abstract class CustomerInvitationDetailResponse implements Built<CustomerInvitationDetailResponse, CustomerInvitationDetailResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'invitation')
  CustomerInvitationDetail get invitation;

  CustomerInvitationDetailResponse._();

  factory CustomerInvitationDetailResponse([void updates(CustomerInvitationDetailResponseBuilder b)]) = _$CustomerInvitationDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInvitationDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInvitationDetailResponse> get serializer => _$CustomerInvitationDetailResponseSerializer();
}

class _$CustomerInvitationDetailResponseSerializer implements PrimitiveSerializer<CustomerInvitationDetailResponse> {
  @override
  final Iterable<Type> types = const [CustomerInvitationDetailResponse, _$CustomerInvitationDetailResponse];

  @override
  final String wireName = r'CustomerInvitationDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInvitationDetailResponse object, {
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
      specifiedType: const FullType(CustomerInvitationDetail),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerInvitationDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInvitationDetailResponseBuilder result,
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
            specifiedType: const FullType(CustomerInvitationDetail),
          ) as CustomerInvitationDetail;
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
  CustomerInvitationDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInvitationDetailResponseBuilder();
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

