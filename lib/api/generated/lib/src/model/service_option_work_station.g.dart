// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_option_work_station.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceOptionWorkStation extends ServiceOptionWorkStation {
  @override
  final String key;
  @override
  final String label;
  @override
  final BuiltList<ServiceOptionWorkStationElement> services;

  factory _$ServiceOptionWorkStation(
          [void Function(ServiceOptionWorkStationBuilder)? updates]) =>
      (ServiceOptionWorkStationBuilder()..update(updates))._build();

  _$ServiceOptionWorkStation._(
      {required this.key, required this.label, required this.services})
      : super._();
  @override
  ServiceOptionWorkStation rebuild(
          void Function(ServiceOptionWorkStationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceOptionWorkStationBuilder toBuilder() =>
      ServiceOptionWorkStationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceOptionWorkStation &&
        key == other.key &&
        label == other.label &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceOptionWorkStation')
          ..add('key', key)
          ..add('label', label)
          ..add('services', services))
        .toString();
  }
}

class ServiceOptionWorkStationBuilder
    implements
        Builder<ServiceOptionWorkStation, ServiceOptionWorkStationBuilder> {
  _$ServiceOptionWorkStation? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  ListBuilder<ServiceOptionWorkStationElement>? _services;
  ListBuilder<ServiceOptionWorkStationElement> get services =>
      _$this._services ??= ListBuilder<ServiceOptionWorkStationElement>();
  set services(ListBuilder<ServiceOptionWorkStationElement>? services) =>
      _$this._services = services;

  ServiceOptionWorkStationBuilder() {
    ServiceOptionWorkStation._defaults(this);
  }

  ServiceOptionWorkStationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _label = $v.label;
      _services = $v.services.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceOptionWorkStation other) {
    _$v = other as _$ServiceOptionWorkStation;
  }

  @override
  void update(void Function(ServiceOptionWorkStationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceOptionWorkStation build() => _build();

  _$ServiceOptionWorkStation _build() {
    _$ServiceOptionWorkStation _$result;
    try {
      _$result = _$v ??
          _$ServiceOptionWorkStation._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'ServiceOptionWorkStation', 'key'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'ServiceOptionWorkStation', 'label'),
            services: services.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceOptionWorkStation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
