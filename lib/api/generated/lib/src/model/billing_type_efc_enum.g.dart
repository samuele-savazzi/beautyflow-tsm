// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_type_efc_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BillingTypeEfcEnum _$oneTime = const BillingTypeEfcEnum._('oneTime');
const BillingTypeEfcEnum _$monthly = const BillingTypeEfcEnum._('monthly');
const BillingTypeEfcEnum _$yearly = const BillingTypeEfcEnum._('yearly');

BillingTypeEfcEnum _$valueOf(String name) {
  switch (name) {
    case 'oneTime':
      return _$oneTime;
    case 'monthly':
      return _$monthly;
    case 'yearly':
      return _$yearly;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BillingTypeEfcEnum> _$values =
    BuiltSet<BillingTypeEfcEnum>(const <BillingTypeEfcEnum>[
  _$oneTime,
  _$monthly,
  _$yearly,
]);

class _$BillingTypeEfcEnumMeta {
  const _$BillingTypeEfcEnumMeta();
  BillingTypeEfcEnum get oneTime => _$oneTime;
  BillingTypeEfcEnum get monthly => _$monthly;
  BillingTypeEfcEnum get yearly => _$yearly;
  BillingTypeEfcEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<BillingTypeEfcEnum> get values => _$values;
}

abstract class _$BillingTypeEfcEnumMixin {
  // ignore: non_constant_identifier_names
  _$BillingTypeEfcEnumMeta get BillingTypeEfcEnum =>
      const _$BillingTypeEfcEnumMeta();
}

Serializer<BillingTypeEfcEnum> _$billingTypeEfcEnumSerializer =
    _$BillingTypeEfcEnumSerializer();

class _$BillingTypeEfcEnumSerializer
    implements PrimitiveSerializer<BillingTypeEfcEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'oneTime': 'one_time',
    'monthly': 'monthly',
    'yearly': 'yearly',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'one_time': 'oneTime',
    'monthly': 'monthly',
    'yearly': 'yearly',
  };

  @override
  final Iterable<Type> types = const <Type>[BillingTypeEfcEnum];
  @override
  final String wireName = 'BillingTypeEfcEnum';

  @override
  Object serialize(Serializers serializers, BillingTypeEfcEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BillingTypeEfcEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BillingTypeEfcEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
