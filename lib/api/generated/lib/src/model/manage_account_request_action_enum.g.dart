// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_account_request_action_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ManageAccountRequestActionEnum _$remove =
    const ManageAccountRequestActionEnum._('remove');
const ManageAccountRequestActionEnum _$deactivate =
    const ManageAccountRequestActionEnum._('deactivate');

ManageAccountRequestActionEnum _$valueOf(String name) {
  switch (name) {
    case 'remove':
      return _$remove;
    case 'deactivate':
      return _$deactivate;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ManageAccountRequestActionEnum> _$values = BuiltSet<
    ManageAccountRequestActionEnum>(const <ManageAccountRequestActionEnum>[
  _$remove,
  _$deactivate,
]);

class _$ManageAccountRequestActionEnumMeta {
  const _$ManageAccountRequestActionEnumMeta();
  ManageAccountRequestActionEnum get remove => _$remove;
  ManageAccountRequestActionEnum get deactivate => _$deactivate;
  ManageAccountRequestActionEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ManageAccountRequestActionEnum> get values => _$values;
}

abstract class _$ManageAccountRequestActionEnumMixin {
  // ignore: non_constant_identifier_names
  _$ManageAccountRequestActionEnumMeta get ManageAccountRequestActionEnum =>
      const _$ManageAccountRequestActionEnumMeta();
}

Serializer<ManageAccountRequestActionEnum>
    _$manageAccountRequestActionEnumSerializer =
    _$ManageAccountRequestActionEnumSerializer();

class _$ManageAccountRequestActionEnumSerializer
    implements PrimitiveSerializer<ManageAccountRequestActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'remove': 'remove',
    'deactivate': 'deactivate',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'remove': 'remove',
    'deactivate': 'deactivate',
  };

  @override
  final Iterable<Type> types = const <Type>[ManageAccountRequestActionEnum];
  @override
  final String wireName = 'ManageAccountRequestActionEnum';

  @override
  Object serialize(
          Serializers serializers, ManageAccountRequestActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ManageAccountRequestActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ManageAccountRequestActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
