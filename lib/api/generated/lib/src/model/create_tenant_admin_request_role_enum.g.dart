// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_admin_request_role_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateTenantAdminRequestRoleEnum _$admin =
    const CreateTenantAdminRequestRoleEnum._('admin');
const CreateTenantAdminRequestRoleEnum _$commerciale =
    const CreateTenantAdminRequestRoleEnum._('commerciale');
const CreateTenantAdminRequestRoleEnum _$support =
    const CreateTenantAdminRequestRoleEnum._('support');

CreateTenantAdminRequestRoleEnum _$valueOf(String name) {
  switch (name) {
    case 'admin':
      return _$admin;
    case 'commerciale':
      return _$commerciale;
    case 'support':
      return _$support;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateTenantAdminRequestRoleEnum> _$values = BuiltSet<
    CreateTenantAdminRequestRoleEnum>(const <CreateTenantAdminRequestRoleEnum>[
  _$admin,
  _$commerciale,
  _$support,
]);

class _$CreateTenantAdminRequestRoleEnumMeta {
  const _$CreateTenantAdminRequestRoleEnumMeta();
  CreateTenantAdminRequestRoleEnum get admin => _$admin;
  CreateTenantAdminRequestRoleEnum get commerciale => _$commerciale;
  CreateTenantAdminRequestRoleEnum get support => _$support;
  CreateTenantAdminRequestRoleEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<CreateTenantAdminRequestRoleEnum> get values => _$values;
}

abstract class _$CreateTenantAdminRequestRoleEnumMixin {
  // ignore: non_constant_identifier_names
  _$CreateTenantAdminRequestRoleEnumMeta get CreateTenantAdminRequestRoleEnum =>
      const _$CreateTenantAdminRequestRoleEnumMeta();
}

Serializer<CreateTenantAdminRequestRoleEnum>
    _$createTenantAdminRequestRoleEnumSerializer =
    _$CreateTenantAdminRequestRoleEnumSerializer();

class _$CreateTenantAdminRequestRoleEnumSerializer
    implements PrimitiveSerializer<CreateTenantAdminRequestRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'admin': 'admin',
    'commerciale': 'commerciale',
    'support': 'support',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'admin': 'admin',
    'commerciale': 'commerciale',
    'support': 'support',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateTenantAdminRequestRoleEnum];
  @override
  final String wireName = 'CreateTenantAdminRequestRoleEnum';

  @override
  Object serialize(
          Serializers serializers, CreateTenantAdminRequestRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateTenantAdminRequestRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateTenantAdminRequestRoleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
