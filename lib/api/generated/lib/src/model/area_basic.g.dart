// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaBasic extends AreaBasic {
  @override
  final int id;
  @override
  final String name;

  factory _$AreaBasic([void Function(AreaBasicBuilder)? updates]) =>
      (AreaBasicBuilder()..update(updates))._build();

  _$AreaBasic._({required this.id, required this.name}) : super._();
  @override
  AreaBasic rebuild(void Function(AreaBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaBasicBuilder toBuilder() => AreaBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaBasic && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'AreaBasic')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AreaBasicBuilder implements Builder<AreaBasic, AreaBasicBuilder> {
  _$AreaBasic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AreaBasicBuilder() {
    AreaBasic._defaults(this);
  }

  AreaBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaBasic other) {
    _$v = other as _$AreaBasic;
  }

  @override
  void update(void Function(AreaBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaBasic build() => _build();

  _$AreaBasic _build() {
    final _$result = _$v ??
        _$AreaBasic._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AreaBasic', 'id'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'AreaBasic', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
