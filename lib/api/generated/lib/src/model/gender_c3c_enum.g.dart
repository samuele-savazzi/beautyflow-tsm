// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_c3c_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GenderC3cEnum _$M = const GenderC3cEnum._('M');
const GenderC3cEnum _$F = const GenderC3cEnum._('F');
const GenderC3cEnum _$U = const GenderC3cEnum._('U');

GenderC3cEnum _$valueOf(String name) {
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

final BuiltSet<GenderC3cEnum> _$values =
    BuiltSet<GenderC3cEnum>(const <GenderC3cEnum>[
  _$M,
  _$F,
  _$U,
]);

class _$GenderC3cEnumMeta {
  const _$GenderC3cEnumMeta();
  GenderC3cEnum get M => _$M;
  GenderC3cEnum get F => _$F;
  GenderC3cEnum get U => _$U;
  GenderC3cEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<GenderC3cEnum> get values => _$values;
}

abstract class _$GenderC3cEnumMixin {
  // ignore: non_constant_identifier_names
  _$GenderC3cEnumMeta get GenderC3cEnum => const _$GenderC3cEnumMeta();
}

Serializer<GenderC3cEnum> _$genderC3cEnumSerializer =
    _$GenderC3cEnumSerializer();

class _$GenderC3cEnumSerializer implements PrimitiveSerializer<GenderC3cEnum> {
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
  final Iterable<Type> types = const <Type>[GenderC3cEnum];
  @override
  final String wireName = 'GenderC3cEnum';

  @override
  Object serialize(Serializers serializers, GenderC3cEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GenderC3cEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GenderC3cEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
