// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaInfo extends AreaInfo {
  @override
  final int id;
  @override
  final String name;

  factory _$AreaInfo([void Function(AreaInfoBuilder)? updates]) =>
      (AreaInfoBuilder()..update(updates))._build();

  _$AreaInfo._({required this.id, required this.name}) : super._();
  @override
  AreaInfo rebuild(void Function(AreaInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaInfoBuilder toBuilder() => AreaInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaInfo && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'AreaInfo')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AreaInfoBuilder implements Builder<AreaInfo, AreaInfoBuilder> {
  _$AreaInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AreaInfoBuilder() {
    AreaInfo._defaults(this);
  }

  AreaInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaInfo other) {
    _$v = other as _$AreaInfo;
  }

  @override
  void update(void Function(AreaInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaInfo build() => _build();

  _$AreaInfo _build() {
    final _$result = _$v ??
        _$AreaInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AreaInfo', 'id'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'AreaInfo', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
