// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dashboard_config_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleDashboardConfigCreate extends RoleDashboardConfigCreate {
  @override
  final int roleId;
  @override
  final int? areaId;
  @override
  final String widgetCode;
  @override
  final bool? visible;
  @override
  final int? order;
  @override
  final Map<String, dynamic>? config;

  factory _$RoleDashboardConfigCreate(
          [void Function(RoleDashboardConfigCreateBuilder)? updates]) =>
      (RoleDashboardConfigCreateBuilder()..update(updates))._build();

  _$RoleDashboardConfigCreate._(
      {required this.roleId,
      this.areaId,
      required this.widgetCode,
      this.visible,
      this.order,
      this.config})
      : super._();
  @override
  RoleDashboardConfigCreate rebuild(
          void Function(RoleDashboardConfigCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleDashboardConfigCreateBuilder toBuilder() =>
      RoleDashboardConfigCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleDashboardConfigCreate &&
        roleId == other.roleId &&
        areaId == other.areaId &&
        widgetCode == other.widgetCode &&
        visible == other.visible &&
        order == other.order &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, widgetCode.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleDashboardConfigCreate')
          ..add('roleId', roleId)
          ..add('areaId', areaId)
          ..add('widgetCode', widgetCode)
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config))
        .toString();
  }
}

class RoleDashboardConfigCreateBuilder
    implements
        Builder<RoleDashboardConfigCreate, RoleDashboardConfigCreateBuilder> {
  _$RoleDashboardConfigCreate? _$v;

  int? _roleId;
  int? get roleId => _$this._roleId;
  set roleId(int? roleId) => _$this._roleId = roleId;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  String? _widgetCode;
  String? get widgetCode => _$this._widgetCode;
  set widgetCode(String? widgetCode) => _$this._widgetCode = widgetCode;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(bool? visible) => _$this._visible = visible;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  Map<String, dynamic>? _config;
  Map<String, dynamic>? get config => _$this._config;
  set config(Map<String, dynamic>? config) => _$this._config = config;

  RoleDashboardConfigCreateBuilder() {
    RoleDashboardConfigCreate._defaults(this);
  }

  RoleDashboardConfigCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleId = $v.roleId;
      _areaId = $v.areaId;
      _widgetCode = $v.widgetCode;
      _visible = $v.visible;
      _order = $v.order;
      _config = $v.config;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleDashboardConfigCreate other) {
    _$v = other as _$RoleDashboardConfigCreate;
  }

  @override
  void update(void Function(RoleDashboardConfigCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleDashboardConfigCreate build() => _build();

  _$RoleDashboardConfigCreate _build() {
    final _$result = _$v ??
        _$RoleDashboardConfigCreate._(
          roleId: BuiltValueNullFieldError.checkNotNull(
              roleId, r'RoleDashboardConfigCreate', 'roleId'),
          areaId: areaId,
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'RoleDashboardConfigCreate', 'widgetCode'),
          visible: visible,
          order: order,
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
