// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkspaceInfo extends WorkspaceInfo {
  @override
  final int id;
  @override
  final String name;
  @override
  final String role;

  factory _$WorkspaceInfo([void Function(WorkspaceInfoBuilder)? updates]) =>
      (WorkspaceInfoBuilder()..update(updates))._build();

  _$WorkspaceInfo._({required this.id, required this.name, required this.role})
      : super._();
  @override
  WorkspaceInfo rebuild(void Function(WorkspaceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceInfoBuilder toBuilder() => WorkspaceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceInfo &&
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
    return (newBuiltValueToStringHelper(r'WorkspaceInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class WorkspaceInfoBuilder
    implements Builder<WorkspaceInfo, WorkspaceInfoBuilder> {
  _$WorkspaceInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  WorkspaceInfoBuilder() {
    WorkspaceInfo._defaults(this);
  }

  WorkspaceInfoBuilder get _$this {
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
  void replace(WorkspaceInfo other) {
    _$v = other as _$WorkspaceInfo;
  }

  @override
  void update(void Function(WorkspaceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceInfo build() => _build();

  _$WorkspaceInfo _build() {
    final _$result = _$v ??
        _$WorkspaceInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'WorkspaceInfo', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'WorkspaceInfo', 'name'),
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'WorkspaceInfo', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
