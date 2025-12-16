// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_type874_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BillingType874Enum _$oneTime = const BillingType874Enum._('oneTime');
const BillingType874Enum _$monthly = const BillingType874Enum._('monthly');
const BillingType874Enum _$yearly = const BillingType874Enum._('yearly');

BillingType874Enum _$valueOf(String name) {
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

final BuiltSet<BillingType874Enum> _$values =
    BuiltSet<BillingType874Enum>(const <BillingType874Enum>[
  _$oneTime,
  _$monthly,
  _$yearly,
]);

class _$BillingType874EnumMeta {
  const _$BillingType874EnumMeta();
  BillingType874Enum get oneTime => _$oneTime;
  BillingType874Enum get monthly => _$monthly;
  BillingType874Enum get yearly => _$yearly;
  BillingType874Enum valueOf(String name) => _$valueOf(name);
  BuiltSet<BillingType874Enum> get values => _$values;
}

abstract class _$BillingType874EnumMixin {
  // ignore: non_constant_identifier_names
  _$BillingType874EnumMeta get BillingType874Enum =>
      const _$BillingType874EnumMeta();
}

Serializer<BillingType874Enum> _$billingType874EnumSerializer =
    _$BillingType874EnumSerializer();

class _$BillingType874EnumSerializer
    implements PrimitiveSerializer<BillingType874Enum> {
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
  final Iterable<Type> types = const <Type>[BillingType874Enum];
  @override
  final String wireName = 'BillingType874Enum';

  @override
  Object serialize(Serializers serializers, BillingType874Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BillingType874Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BillingType874Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
