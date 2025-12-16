// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dashboard_config_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleDashboardConfigUpdate extends RoleDashboardConfigUpdate {
  @override
  final bool? visible;
  @override
  final int? order;
  @override
  final Map<String, dynamic>? config;

  factory _$RoleDashboardConfigUpdate(
          [void Function(RoleDashboardConfigUpdateBuilder)? updates]) =>
      (RoleDashboardConfigUpdateBuilder()..update(updates))._build();

  _$RoleDashboardConfigUpdate._({this.visible, this.order, this.config})
      : super._();
  @override
  RoleDashboardConfigUpdate rebuild(
          void Function(RoleDashboardConfigUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleDashboardConfigUpdateBuilder toBuilder() =>
      RoleDashboardConfigUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleDashboardConfigUpdate &&
        visible == other.visible &&
        order == other.order &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleDashboardConfigUpdate')
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config))
        .toString();
  }
}

class RoleDashboardConfigUpdateBuilder
    implements
        Builder<RoleDashboardConfigUpdate, RoleDashboardConfigUpdateBuilder> {
  _$RoleDashboardConfigUpdate? _$v;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(bool? visible) => _$this._visible = visible;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  Map<String, dynamic>? _config;
  Map<String, dynamic>? get config => _$this._config;
  set config(Map<String, dynamic>? config) => _$this._config = config;

  RoleDashboardConfigUpdateBuilder() {
    RoleDashboardConfigUpdate._defaults(this);
  }

  RoleDashboardConfigUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visible = $v.visible;
      _order = $v.order;
      _config = $v.config;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleDashboardConfigUpdate other) {
    _$v = other as _$RoleDashboardConfigUpdate;
  }

  @override
  void update(void Function(RoleDashboardConfigUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleDashboardConfigUpdate build() => _build();

  _$RoleDashboardConfigUpdate _build() {
    final _$result = _$v ??
        _$RoleDashboardConfigUpdate._(
          visible: visible,
          order: order,
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
