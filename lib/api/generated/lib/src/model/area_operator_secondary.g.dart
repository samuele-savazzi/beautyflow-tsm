// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_operator_secondary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaOperatorSecondary extends AreaOperatorSecondary {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? photo;
  @override
  final String role;

  factory _$AreaOperatorSecondary(
          [void Function(AreaOperatorSecondaryBuilder)? updates]) =>
      (AreaOperatorSecondaryBuilder()..update(updates))._build();

  _$AreaOperatorSecondary._(
      {required this.id, required this.name, this.photo, required this.role})
      : super._();
  @override
  AreaOperatorSecondary rebuild(
          void Function(AreaOperatorSecondaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaOperatorSecondaryBuilder toBuilder() =>
      AreaOperatorSecondaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaOperatorSecondary &&
        id == other.id &&
        name == other.name &&
        photo == other.photo &&
        role == other.role;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaOperatorSecondary')
          ..add('id', id)
          ..add('name', name)
          ..add('photo', photo)
          ..add('role', role))
        .toString();
  }
}

class AreaOperatorSecondaryBuilder
    implements Builder<AreaOperatorSecondary, AreaOperatorSecondaryBuilder> {
  _$AreaOperatorSecondary? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  AreaOperatorSecondaryBuilder() {
    AreaOperatorSecondary._defaults(this);
  }

  AreaOperatorSecondaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _photo = $v.photo;
      _role = $v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaOperatorSecondary other) {
    _$v = other as _$AreaOperatorSecondary;
  }

  @override
  void update(void Function(AreaOperatorSecondaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaOperatorSecondary build() => _build();

  _$AreaOperatorSecondary _build() {
    final _$result = _$v ??
        _$AreaOperatorSecondary._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AreaOperatorSecondary', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AreaOperatorSecondary', 'name'),
          photo: photo,
          role: BuiltValueNullFieldError.checkNotNull(
              role, r'AreaOperatorSecondary', 'role'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
