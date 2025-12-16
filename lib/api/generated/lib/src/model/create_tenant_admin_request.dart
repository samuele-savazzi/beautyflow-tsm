//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/create_tenant_admin_request_role_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_admin_request.g.dart';

/// Request per creazione nuovo TenantAdmin
///
/// Properties:
/// * [email] - Email univoca TenantAdmin
/// * [firstName] 
/// * [lastName] 
/// * [phoneNumber] 
/// * [role] 
@BuiltValue()
abstract class CreateTenantAdminRequest implements Built<CreateTenantAdminRequest, CreateTenantAdminRequestBuilder> {
  /// Email univoca TenantAdmin
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  @BuiltValueField(wireName: r'phone_number')
  String get phoneNumber;

  @BuiltValueField(wireName: r'role')
  CreateTenantAdminRequestRoleEnum? get role;
  // enum roleEnum {  admin,  commerciale,  support,  };

  CreateTenantAdminRequest._();

  factory CreateTenantAdminRequest([void updates(CreateTenantAdminRequestBuilder b)]) = _$CreateTenantAdminRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTenantAdminRequestBuilder b) => b
      ..role = CreateTenantAdminRequestRoleEnum.support;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTenantAdminRequest> get serializer => _$CreateTenantAdminRequestSerializer();
}

class _$CreateTenantAdminRequestSerializer implements PrimitiveSerializer<CreateTenantAdminRequest> {
  @override
  final Iterable<Type> types = const [CreateTenantAdminRequest, _$CreateTenantAdminRequest];

  @override
  final String wireName = r'CreateTenantAdminRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTenantAdminRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'phone_number';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(CreateTenantAdminRequestRoleEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTenantAdminRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTenantAdminRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTenantAdminRequestRoleEnum),
          ) as CreateTenantAdminRequestRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTenantAdminRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTenantAdminRequestBuilder();
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

