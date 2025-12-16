// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_tier_detail_billing_cycle_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TenantTierDetailBillingCycleEnum _$monthly =
    const TenantTierDetailBillingCycleEnum._('monthly');
const TenantTierDetailBillingCycleEnum _$yearly =
    const TenantTierDetailBillingCycleEnum._('yearly');

TenantTierDetailBillingCycleEnum _$valueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$monthly;
    case 'yearly':
      return _$yearly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TenantTierDetailBillingCycleEnum> _$values = BuiltSet<
    TenantTierDetailBillingCycleEnum>(const <TenantTierDetailBillingCycleEnum>[
  _$monthly,
  _$yearly,
]);

class _$TenantTierDetailBillingCycleEnumMeta {
  const _$TenantTierDetailBillingCycleEnumMeta();
  TenantTierDetailBillingCycleEnum get monthly => _$monthly;
  TenantTierDetailBillingCycleEnum get yearly => _$yearly;
  TenantTierDetailBillingCycleEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<TenantTierDetailBillingCycleEnum> get values => _$values;
}

abstract class _$TenantTierDetailBillingCycleEnumMixin {
  // ignore: non_constant_identifier_names
  _$TenantTierDetailBillingCycleEnumMeta get TenantTierDetailBillingCycleEnum =>
      const _$TenantTierDetailBillingCycleEnumMeta();
}

Serializer<TenantTierDetailBillingCycleEnum>
    _$tenantTierDetailBillingCycleEnumSerializer =
    _$TenantTierDetailBillingCycleEnumSerializer();

class _$TenantTierDetailBillingCycleEnumSerializer
    implements PrimitiveSerializer<TenantTierDetailBillingCycleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthly': 'monthly',
    'yearly': 'yearly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly': 'monthly',
    'yearly': 'yearly',
  };

  @override
  final Iterable<Type> types = const <Type>[TenantTierDetailBillingCycleEnum];
  @override
  final String wireName = 'TenantTierDetailBillingCycleEnum';

  @override
  Object serialize(
          Serializers serializers, TenantTierDetailBillingCycleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TenantTierDetailBillingCycleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TenantTierDetailBillingCycleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
