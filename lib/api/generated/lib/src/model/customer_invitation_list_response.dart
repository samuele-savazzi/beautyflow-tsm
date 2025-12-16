//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/customer_invitation_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_invitation_list_response.g.dart';

/// CustomerInvitationListResponse
///
/// Properties:
/// * [success] 
/// * [count] 
/// * [invitations] 
@BuiltValue()
abstract class CustomerInvitationListResponse implements Built<CustomerInvitationListResponse, CustomerInvitationListResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'count')
  int get count;

  @BuiltValueField(wireName: r'invitations')
  BuiltList<CustomerInvitationItem> get invitations;

  CustomerInvitationListResponse._();

  factory CustomerInvitationListResponse([void updates(CustomerInvitationListResponseBuilder b)]) = _$CustomerInvitationListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerInvitationListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerInvitationListResponse> get serializer => _$CustomerInvitationListResponseSerializer();
}

class _$CustomerInvitationListResponseSerializer implements PrimitiveSerializer<CustomerInvitationListResponse> {
  @override
  final Iterable<Type> types = const [CustomerInvitationListResponse, _$CustomerInvitationListResponse];

  @override
  final String wireName = r'CustomerInvitationListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerInvitationListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'invitations';
    yield serializers.serialize(
      object.invitations,
      specifiedType: const FullType(BuiltList, [FullType(CustomerInvitationItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerInvitationListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerInvitationListResponseBuilder result,
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
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'invitations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerInvitationItem)]),
          ) as BuiltList<CustomerInvitationItem>;
          result.invitations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerInvitationListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerInvitationListResponseBuilder();
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

