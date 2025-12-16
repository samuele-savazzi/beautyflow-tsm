// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action55f_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Action55fEnum _$approve = const Action55fEnum._('approve');
const Action55fEnum _$reject = const Action55fEnum._('reject');

Action55fEnum _$valueOf(String name) {
  switch (name) {
    case 'approve':
      return _$approve;
    case 'reject':
      return _$reject;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Action55fEnum> _$values =
    BuiltSet<Action55fEnum>(const <Action55fEnum>[
  _$approve,
  _$reject,
]);

class _$Action55fEnumMeta {
  const _$Action55fEnumMeta();
  Action55fEnum get approve => _$approve;
  Action55fEnum get reject => _$reject;
  Action55fEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<Action55fEnum> get values => _$values;
}

abstract class _$Action55fEnumMixin {
  // ignore: non_constant_identifier_names
  _$Action55fEnumMeta get Action55fEnum => const _$Action55fEnumMeta();
}

Serializer<Action55fEnum> _$action55fEnumSerializer =
    _$Action55fEnumSerializer();

class _$Action55fEnumSerializer implements PrimitiveSerializer<Action55fEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approve': 'approve',
    'reject': 'reject',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approve': 'approve',
    'reject': 'reject',
  };

  @override
  final Iterable<Type> types = const <Type>[Action55fEnum];
  @override
  final String wireName = 'Action55fEnum';

  @override
  Object serialize(Serializers serializers, Action55fEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Action55fEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Action55fEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
