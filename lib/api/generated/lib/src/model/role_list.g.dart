// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleList extends RoleList {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isOperator;
  @override
  final bool isOperatorAuthorized;
  @override
  final bool isTitular;
  @override
  final bool isSecretariat;
  @override
  final bool isAdmin;

  factory _$RoleList([void Function(RoleListBuilder)? updates]) =>
      (RoleListBuilder()..update(updates))._build();

  _$RoleList._(
      {required this.id,
      required this.name,
      required this.isOperator,
      required this.isOperatorAuthorized,
      required this.isTitular,
      required this.isSecretariat,
      required this.isAdmin})
      : super._();
  @override
  RoleList rebuild(void Function(RoleListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleListBuilder toBuilder() => RoleListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleList &&
        id == other.id &&
        name == other.name &&
        isOperator == other.isOperator &&
        isOperatorAuthorized == other.isOperatorAuthorized &&
        isTitular == other.isTitular &&
        isSecretariat == other.isSecretariat &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isOperator.hashCode);
    _$hash = $jc(_$hash, isOperatorAuthorized.hashCode);
    _$hash = $jc(_$hash, isTitular.hashCode);
    _$hash = $jc(_$hash, isSecretariat.hashCode);
    _$hash = $jc(_$hash, isAdmin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleList')
          ..add('id', id)
          ..add('name', name)
          ..add('isOperator', isOperator)
          ..add('isOperatorAuthorized', isOperatorAuthorized)
          ..add('isTitular', isTitular)
          ..add('isSecretariat', isSecretariat)
          ..add('isAdmin', isAdmin))
        .toString();
  }
}

class RoleListBuilder implements Builder<RoleList, RoleListBuilder> {
  _$RoleList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isOperator;
  bool? get isOperator => _$this._isOperator;
  set isOperator(bool? isOperator) => _$this._isOperator = isOperator;

  bool? _isOperatorAuthorized;
  bool? get isOperatorAuthorized => _$this._isOperatorAuthorized;
  set isOperatorAuthorized(bool? isOperatorAuthorized) =>
      _$this._isOperatorAuthorized = isOperatorAuthorized;

  bool? _isTitular;
  bool? get isTitular => _$this._isTitular;
  set isTitular(bool? isTitular) => _$this._isTitular = isTitular;

  bool? _isSecretariat;
  bool? get isSecretariat => _$this._isSecretariat;
  set isSecretariat(bool? isSecretariat) =>
      _$this._isSecretariat = isSecretariat;

  bool? _isAdmin;
  bool? get isAdmin => _$this._isAdmin;
  set isAdmin(bool? isAdmin) => _$this._isAdmin = isAdmin;

  RoleListBuilder() {
    RoleList._defaults(this);
  }

  RoleListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isOperator = $v.isOperator;
      _isOperatorAuthorized = $v.isOperatorAuthorized;
      _isTitular = $v.isTitular;
      _isSecretariat = $v.isSecretariat;
      _isAdmin = $v.isAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleList other) {
    _$v = other as _$RoleList;
  }

  @override
  void update(void Function(RoleListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleList build() => _build();

  _$RoleList _build() {
    final _$result = _$v ??
        _$RoleList._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'RoleList', 'id'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'RoleList', 'name'),
          isOperator: BuiltValueNullFieldError.checkNotNull(
              isOperator, r'RoleList', 'isOperator'),
          isOperatorAuthorized: BuiltValueNullFieldError.checkNotNull(
              isOperatorAuthorized, r'RoleList', 'isOperatorAuthorized'),
          isTitular: BuiltValueNullFieldError.checkNotNull(
              isTitular, r'RoleList', 'isTitular'),
          isSecretariat: BuiltValueNullFieldError.checkNotNull(
              isSecretariat, r'RoleList', 'isSecretariat'),
          isAdmin: BuiltValueNullFieldError.checkNotNull(
              isAdmin, r'RoleList', 'isAdmin'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
