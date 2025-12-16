// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tenant_request_billing_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateTenantRequestBillingTypeEnum _$trial =
    const CreateTenantRequestBillingTypeEnum._('trial');
const CreateTenantRequestBillingTypeEnum _$monthly =
    const CreateTenantRequestBillingTypeEnum._('monthly');
const CreateTenantRequestBillingTypeEnum _$yearly =
    const CreateTenantRequestBillingTypeEnum._('yearly');
const CreateTenantRequestBillingTypeEnum _$custom =
    const CreateTenantRequestBillingTypeEnum._('custom');

CreateTenantRequestBillingTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'trial':
      return _$trial;
    case 'monthly':
      return _$monthly;
    case 'yearly':
      return _$yearly;
    case 'custom':
      return _$custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateTenantRequestBillingTypeEnum> _$values = BuiltSet<
    CreateTenantRequestBillingTypeEnum>(const <CreateTenantRequestBillingTypeEnum>[
  _$trial,
  _$monthly,
  _$yearly,
  _$custom,
]);

class _$CreateTenantRequestBillingTypeEnumMeta {
  const _$CreateTenantRequestBillingTypeEnumMeta();
  CreateTenantRequestBillingTypeEnum get trial => _$trial;
  CreateTenantRequestBillingTypeEnum get monthly => _$monthly;
  CreateTenantRequestBillingTypeEnum get yearly => _$yearly;
  CreateTenantRequestBillingTypeEnum get custom => _$custom;
  CreateTenantRequestBillingTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<CreateTenantRequestBillingTypeEnum> get values => _$values;
}

abstract class _$CreateTenantRequestBillingTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$CreateTenantRequestBillingTypeEnumMeta
      get CreateTenantRequestBillingTypeEnum =>
          const _$CreateTenantRequestBillingTypeEnumMeta();
}

Serializer<CreateTenantRequestBillingTypeEnum>
    _$createTenantRequestBillingTypeEnumSerializer =
    _$CreateTenantRequestBillingTypeEnumSerializer();

class _$CreateTenantRequestBillingTypeEnumSerializer
    implements PrimitiveSerializer<CreateTenantRequestBillingTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'trial': 'trial',
    'monthly': 'monthly',
    'yearly': 'yearly',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'trial': 'trial',
    'monthly': 'monthly',
    'yearly': 'yearly',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateTenantRequestBillingTypeEnum];
  @override
  final String wireName = 'CreateTenantRequestBillingTypeEnum';

  @override
  Object serialize(
          Serializers serializers, CreateTenantRequestBillingTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateTenantRequestBillingTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateTenantRequestBillingTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
