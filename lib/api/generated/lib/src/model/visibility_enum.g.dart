// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VisibilityEnum _$individual = const VisibilityEnum._('individual');
const VisibilityEnum _$group = const VisibilityEnum._('group');
const VisibilityEnum _$public = const VisibilityEnum._('public');

VisibilityEnum _$valueOf(String name) {
  switch (name) {
    case 'individual':
      return _$individual;
    case 'group':
      return _$group;
    case 'public':
      return _$public;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VisibilityEnum> _$values =
    BuiltSet<VisibilityEnum>(const <VisibilityEnum>[
  _$individual,
  _$group,
  _$public,
]);

class _$VisibilityEnumMeta {
  const _$VisibilityEnumMeta();
  VisibilityEnum get individual => _$individual;
  VisibilityEnum get group => _$group;
  VisibilityEnum get public => _$public;
  VisibilityEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<VisibilityEnum> get values => _$values;
}

abstract class _$VisibilityEnumMixin {
  // ignore: non_constant_identifier_names
  _$VisibilityEnumMeta get VisibilityEnum => const _$VisibilityEnumMeta();
}

Serializer<VisibilityEnum> _$visibilityEnumSerializer =
    _$VisibilityEnumSerializer();

class _$VisibilityEnumSerializer
    implements PrimitiveSerializer<VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'individual': 'individual',
    'group': 'group',
    'public': 'public',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'individual': 'individual',
    'group': 'group',
    'public': 'public',
  };

  @override
  final Iterable<Type> types = const <Type>[VisibilityEnum];
  @override
  final String wireName = 'VisibilityEnum';

  @override
  Object serialize(Serializers serializers, VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VisibilityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VisibilityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
