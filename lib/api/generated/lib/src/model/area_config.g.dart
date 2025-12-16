// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaConfig extends AreaConfig {
  @override
  final String name;
  @override
  final String? description;

  factory _$AreaConfig([void Function(AreaConfigBuilder)? updates]) =>
      (AreaConfigBuilder()..update(updates))._build();

  _$AreaConfig._({required this.name, this.description}) : super._();
  @override
  AreaConfig rebuild(void Function(AreaConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaConfigBuilder toBuilder() => AreaConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaConfig &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaConfig')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class AreaConfigBuilder implements Builder<AreaConfig, AreaConfigBuilder> {
  _$AreaConfig? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AreaConfigBuilder() {
    AreaConfig._defaults(this);
  }

  AreaConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaConfig other) {
    _$v = other as _$AreaConfig;
  }

  @override
  void update(void Function(AreaConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaConfig build() => _build();

  _$AreaConfig _build() {
    final _$result = _$v ??
        _$AreaConfig._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AreaConfig', 'name'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
