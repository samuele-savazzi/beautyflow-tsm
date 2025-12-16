// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role3da_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Role3daEnum _$admin = const Role3daEnum._('admin');
const Role3daEnum _$commerciale = const Role3daEnum._('commerciale');
const Role3daEnum _$support = const Role3daEnum._('support');

Role3daEnum _$valueOf(String name) {
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

final BuiltSet<Role3daEnum> _$values =
    BuiltSet<Role3daEnum>(const <Role3daEnum>[
  _$admin,
  _$commerciale,
  _$support,
]);

class _$Role3daEnumMeta {
  const _$Role3daEnumMeta();
  Role3daEnum get admin => _$admin;
  Role3daEnum get commerciale => _$commerciale;
  Role3daEnum get support => _$support;
  Role3daEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<Role3daEnum> get values => _$values;
}

abstract class _$Role3daEnumMixin {
  // ignore: non_constant_identifier_names
  _$Role3daEnumMeta get Role3daEnum => const _$Role3daEnumMeta();
}

Serializer<Role3daEnum> _$role3daEnumSerializer = _$Role3daEnumSerializer();

class _$Role3daEnumSerializer implements PrimitiveSerializer<Role3daEnum> {
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
  final Iterable<Type> types = const <Type>[Role3daEnum];
  @override
  final String wireName = 'Role3daEnum';

  @override
  Object serialize(Serializers serializers, Role3daEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Role3daEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Role3daEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
