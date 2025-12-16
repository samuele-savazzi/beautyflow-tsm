// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'null_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NullEnum _$null_ = const NullEnum._('null_');

NullEnum _$valueOf(String name) {
  switch (name) {
    case 'null_':
      return _$null_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NullEnum> _$values = BuiltSet<NullEnum>(const <NullEnum>[
  _$null_,
]);

class _$NullEnumMeta {
  const _$NullEnumMeta();
  NullEnum get null_ => _$null_;
  NullEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<NullEnum> get values => _$values;
}

abstract class _$NullEnumMixin {
  // ignore: non_constant_identifier_names
  _$NullEnumMeta get NullEnum => const _$NullEnumMeta();
}

Serializer<NullEnum> _$nullEnumSerializer = _$NullEnumSerializer();

class _$NullEnumSerializer implements PrimitiveSerializer<NullEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'null_': 'null',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'null': 'null_',
  };

  @override
  final Iterable<Type> types = const <Type>[NullEnum];
  @override
  final String wireName = 'NullEnum';

  @override
  Object serialize(Serializers serializers, NullEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NullEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NullEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
