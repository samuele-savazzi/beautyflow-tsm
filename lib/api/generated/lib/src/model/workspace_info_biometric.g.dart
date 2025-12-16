// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_info_biometric.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceInfoBiometric extends WorkspaceInfoBiometric {
  @override
  final int id;
  @override
  final String name;
  @override
  final String role;

  factory _$WorkspaceInfoBiometric(
          [void Function(WorkspaceInfoBiometricBuilder)? updates]) =>
      (WorkspaceInfoBiometricBuilder()..update(updates))._build();

  _$WorkspaceInfoBiometric._(
      {required this.id, required this.name, required this.role})
      : super._();
  @override
  WorkspaceInfoBiometric rebuild(
          void Function(WorkspaceInfoBiometricBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceInfoBiometricBuilder toBuilder() =>
      WorkspaceInfoBiometricBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceInfoBiometric &&
        id == other.id &&
        name == other.name &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceInfoBiometric')
          ..add('id', id)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class WorkspaceInfoBiometricBuilder
    implements Builder<WorkspaceInfoBiometric, WorkspaceInfoBiometricBuilder> {
  _$WorkspaceInfoBiometric? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  WorkspaceInfoBiometricBuilder() {
    WorkspaceInfoBiometric._defaults(this);
  }

  WorkspaceInfoBiometricBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceInfoBiometric other) {
    _$v = other as _$WorkspaceInfoBiometric;
  }

  @override
  void update(void Function(WorkspaceInfoBiometricBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceInfoBiometric build() => _build();

  _$WorkspaceInfoBiometric _build() {
    final _$result = _$v ??
        _$WorkspaceInfoBiometric._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'WorkspaceInfoBiometric', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'WorkspaceInfoBiometric', 'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'WorkspaceInfoBiometric', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
