// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender63e_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Gender63eEnum _$M = const Gender63eEnum._('M');
const Gender63eEnum _$F = const Gender63eEnum._('F');
const Gender63eEnum _$U = const Gender63eEnum._('U');

Gender63eEnum _$valueOf(String name) {
  switch (name) {
    case 'M':
      return _$M;
    case 'F':
      return _$F;
    case 'U':
      return _$U;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Gender63eEnum> _$values =
    BuiltSet<Gender63eEnum>(const <Gender63eEnum>[
  _$M,
  _$F,
  _$U,
]);

class _$Gender63eEnumMeta {
  const _$Gender63eEnumMeta();
  Gender63eEnum get M => _$M;
  Gender63eEnum get F => _$F;
  Gender63eEnum get U => _$U;
  Gender63eEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<Gender63eEnum> get values => _$values;
}

abstract class _$Gender63eEnumMixin {
  // ignore: non_constant_identifier_names
  _$Gender63eEnumMeta get Gender63eEnum => const _$Gender63eEnumMeta();
}

Serializer<Gender63eEnum> _$gender63eEnumSerializer =
    _$Gender63eEnumSerializer();

class _$Gender63eEnumSerializer implements PrimitiveSerializer<Gender63eEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'M': 'M',
    'F': 'F',
    'U': 'U',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'M': 'M',
    'F': 'F',
    'U': 'U',
  };

  @override
  final Iterable<Type> types = const <Type>[Gender63eEnum];
  @override
  final String wireName = 'Gender63eEnum';

  @override
  Object serialize(Serializers serializers, Gender63eEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Gender63eEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Gender63eEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
