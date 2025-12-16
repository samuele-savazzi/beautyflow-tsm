// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceBasic extends ServiceBasic {
  @override
  final int id;
  @override
  final String name;

  factory _$ServiceBasic([void Function(ServiceBasicBuilder)? updates]) =>
      (ServiceBasicBuilder()..update(updates))._build();

  _$ServiceBasic._({required this.id, required this.name}) : super._();
  @override
  ServiceBasic rebuild(void Function(ServiceBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceBasicBuilder toBuilder() => ServiceBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceBasic && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'ServiceBasic')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ServiceBasicBuilder
    implements Builder<ServiceBasic, ServiceBasicBuilder> {
  _$ServiceBasic? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ServiceBasicBuilder() {
    ServiceBasic._defaults(this);
  }

  ServiceBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceBasic other) {
    _$v = other as _$ServiceBasic;
  }

  @override
  void update(void Function(ServiceBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceBasic build() => _build();

  _$ServiceBasic _build() {
    final _$result = _$v ??
        _$ServiceBasic._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ServiceBasic', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ServiceBasic', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
