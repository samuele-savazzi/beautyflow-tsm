// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_tier_request_billing_cycle_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivateTierRequestBillingCycleEnum _$monthly =
    const ActivateTierRequestBillingCycleEnum._('monthly');
const ActivateTierRequestBillingCycleEnum _$yearly =
    const ActivateTierRequestBillingCycleEnum._('yearly');

ActivateTierRequestBillingCycleEnum _$valueOf(String name) {
  switch (name) {
    case 'monthly':
      return _$monthly;
    case 'yearly':
      return _$yearly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivateTierRequestBillingCycleEnum> _$values = BuiltSet<
    ActivateTierRequestBillingCycleEnum>(const <ActivateTierRequestBillingCycleEnum>[
  _$monthly,
  _$yearly,
]);

class _$ActivateTierRequestBillingCycleEnumMeta {
  const _$ActivateTierRequestBillingCycleEnumMeta();
  ActivateTierRequestBillingCycleEnum get monthly => _$monthly;
  ActivateTierRequestBillingCycleEnum get yearly => _$yearly;
  ActivateTierRequestBillingCycleEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ActivateTierRequestBillingCycleEnum> get values => _$values;
}

abstract class _$ActivateTierRequestBillingCycleEnumMixin {
  // ignore: non_constant_identifier_names
  _$ActivateTierRequestBillingCycleEnumMeta
      get ActivateTierRequestBillingCycleEnum =>
          const _$ActivateTierRequestBillingCycleEnumMeta();
}

Serializer<ActivateTierRequestBillingCycleEnum>
    _$activateTierRequestBillingCycleEnumSerializer =
    _$ActivateTierRequestBillingCycleEnumSerializer();

class _$ActivateTierRequestBillingCycleEnumSerializer
    implements PrimitiveSerializer<ActivateTierRequestBillingCycleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monthly': 'monthly',
    'yearly': 'yearly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monthly': 'monthly',
    'yearly': 'yearly',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ActivateTierRequestBillingCycleEnum
  ];
  @override
  final String wireName = 'ActivateTierRequestBillingCycleEnum';

  @override
  Object serialize(
          Serializers serializers, ActivateTierRequestBillingCycleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivateTierRequestBillingCycleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivateTierRequestBillingCycleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
