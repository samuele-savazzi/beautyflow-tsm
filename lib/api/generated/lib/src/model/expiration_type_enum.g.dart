// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expiration_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExpirationTypeEnum _$days = const ExpirationTypeEnum._('days');
const ExpirationTypeEnum _$month = const ExpirationTypeEnum._('month');
const ExpirationTypeEnum _$never = const ExpirationTypeEnum._('never');

ExpirationTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'days':
      return _$days;
    case 'month':
      return _$month;
    case 'never':
      return _$never;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExpirationTypeEnum> _$values =
    BuiltSet<ExpirationTypeEnum>(const <ExpirationTypeEnum>[
  _$days,
  _$month,
  _$never,
]);

class _$ExpirationTypeEnumMeta {
  const _$ExpirationTypeEnumMeta();
  ExpirationTypeEnum get days => _$days;
  ExpirationTypeEnum get month => _$month;
  ExpirationTypeEnum get never => _$never;
  ExpirationTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ExpirationTypeEnum> get values => _$values;
}

abstract class _$ExpirationTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$ExpirationTypeEnumMeta get ExpirationTypeEnum =>
      const _$ExpirationTypeEnumMeta();
}

Serializer<ExpirationTypeEnum> _$expirationTypeEnumSerializer =
    _$ExpirationTypeEnumSerializer();

class _$ExpirationTypeEnumSerializer
    implements PrimitiveSerializer<ExpirationTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'days': 'days',
    'month': 'month',
    'never': 'never',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'days': 'days',
    'month': 'month',
    'never': 'never',
  };

  @override
  final Iterable<Type> types = const <Type>[ExpirationTypeEnum];
  @override
  final String wireName = 'ExpirationTypeEnum';

  @override
  Object serialize(Serializers serializers, ExpirationTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExpirationTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExpirationTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
