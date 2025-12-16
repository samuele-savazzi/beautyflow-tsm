// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceInfo extends ServiceInfo {
  @override
  final int id;
  @override
  final String name;

  factory _$ServiceInfo([void Function(ServiceInfoBuilder)? updates]) =>
      (ServiceInfoBuilder()..update(updates))._build();

  _$ServiceInfo._({required this.id, required this.name}) : super._();
  @override
  ServiceInfo rebuild(void Function(ServiceInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceInfoBuilder toBuilder() => ServiceInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceInfo && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'ServiceInfo')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ServiceInfoBuilder implements Builder<ServiceInfo, ServiceInfoBuilder> {
  _$ServiceInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ServiceInfoBuilder() {
    ServiceInfo._defaults(this);
  }

  ServiceInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceInfo other) {
    _$v = other as _$ServiceInfo;
  }

  @override
  void update(void Function(ServiceInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceInfo build() => _build();

  _$ServiceInfo _build() {
    final _$result = _$v ??
        _$ServiceInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ServiceInfo', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ServiceInfo', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
