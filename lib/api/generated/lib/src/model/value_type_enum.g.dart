// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ValueTypeEnum _$percentage = const ValueTypeEnum._('percentage');
const ValueTypeEnum _$fixed = const ValueTypeEnum._('fixed');

ValueTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'percentage':
      return _$percentage;
    case 'fixed':
      return _$fixed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ValueTypeEnum> _$values =
    BuiltSet<ValueTypeEnum>(const <ValueTypeEnum>[
  _$percentage,
  _$fixed,
]);

class _$ValueTypeEnumMeta {
  const _$ValueTypeEnumMeta();
  ValueTypeEnum get percentage => _$percentage;
  ValueTypeEnum get fixed => _$fixed;
  ValueTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ValueTypeEnum> get values => _$values;
}

abstract class _$ValueTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$ValueTypeEnumMeta get ValueTypeEnum => const _$ValueTypeEnumMeta();
}

Serializer<ValueTypeEnum> _$valueTypeEnumSerializer =
    _$ValueTypeEnumSerializer();

class _$ValueTypeEnumSerializer implements PrimitiveSerializer<ValueTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'percentage': 'percentage',
    'fixed': 'fixed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'percentage': 'percentage',
    'fixed': 'fixed',
  };

  @override
  final Iterable<Type> types = const <Type>[ValueTypeEnum];
  @override
  final String wireName = 'ValueTypeEnum';

  @override
  Object serialize(Serializers serializers, ValueTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ValueTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ValueTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
