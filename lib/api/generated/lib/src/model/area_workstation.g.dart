// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_workstation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaWorkstation extends AreaWorkstation {
  @override
  final int id;
  @override
  final String name;

  factory _$AreaWorkstation([void Function(AreaWorkstationBuilder)? updates]) =>
      (AreaWorkstationBuilder()..update(updates))._build();

  _$AreaWorkstation._({required this.id, required this.name}) : super._();
  @override
  AreaWorkstation rebuild(void Function(AreaWorkstationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaWorkstationBuilder toBuilder() => AreaWorkstationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaWorkstation && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaWorkstation')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AreaWorkstationBuilder
    implements Builder<AreaWorkstation, AreaWorkstationBuilder> {
  _$AreaWorkstation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AreaWorkstationBuilder() {
    AreaWorkstation._defaults(this);
  }

  AreaWorkstationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaWorkstation other) {
    _$v = other as _$AreaWorkstation;
  }

  @override
  void update(void Function(AreaWorkstationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaWorkstation build() => _build();

  _$AreaWorkstation _build() {
    final _$result = _$v ??
        _$AreaWorkstation._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AreaWorkstation', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AreaWorkstation', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
