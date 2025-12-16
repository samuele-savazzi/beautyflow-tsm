// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_dashboard_config_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleDashboardConfigList extends RoleDashboardConfigList {
  @override
  final int id;
  @override
  final int roleId;
  @override
  final String roleName;
  @override
  final int? areaId;
  @override
  final String? areaName;
  @override
  final String widgetCode;
  @override
  final String widgetName;
  @override
  final bool visible;
  @override
  final int order;
  @override
  final Map<String, dynamic>? config;
  @override
  final bool isGlobal;

  factory _$RoleDashboardConfigList(
          [void Function(RoleDashboardConfigListBuilder)? updates]) =>
      (RoleDashboardConfigListBuilder()..update(updates))._build();

  _$RoleDashboardConfigList._(
      {required this.id,
      required this.roleId,
      required this.roleName,
      this.areaId,
      this.areaName,
      required this.widgetCode,
      required this.widgetName,
      required this.visible,
      required this.order,
      this.config,
      required this.isGlobal})
      : super._();
  @override
  RoleDashboardConfigList rebuild(
          void Function(RoleDashboardConfigListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleDashboardConfigListBuilder toBuilder() =>
      RoleDashboardConfigListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleDashboardConfigList &&
        id == other.id &&
        roleId == other.roleId &&
        roleName == other.roleName &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        widgetCode == other.widgetCode &&
        widgetName == other.widgetName &&
        visible == other.visible &&
        order == other.order &&
        config == other.config &&
        isGlobal == other.isGlobal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, roleName.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, widgetCode.hashCode);
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoleDashboardConfigList')
          ..add('id', id)
          ..add('roleId', roleId)
          ..add('roleName', roleName)
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('widgetCode', widgetCode)
          ..add('widgetName', widgetName)
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config)
          ..add('isGlobal', isGlobal))
        .toString();
  }
}

class RoleDashboardConfigListBuilder
    implements
        Builder<RoleDashboardConfigList, RoleDashboardConfigListBuilder> {
  _$RoleDashboardConfigList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _roleId;
  int? get roleId => _$this._roleId;
  set roleId(int? roleId) => _$this._roleId = roleId;

  String? _roleName;
  String? get roleName => _$this._roleName;
  set roleName(String? roleName) => _$this._roleName = roleName;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  String? _widgetCode;
  String? get widgetCode => _$this._widgetCode;
  set widgetCode(String? widgetCode) => _$this._widgetCode = widgetCode;

  String? _widgetName;
  String? get widgetName => _$this._widgetName;
  set widgetName(String? widgetName) => _$this._widgetName = widgetName;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(bool? visible) => _$this._visible = visible;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  Map<String, dynamic>? _config;
  Map<String, dynamic>? get config => _$this._config;
  set config(Map<String, dynamic>? config) => _$this._config = config;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  RoleDashboardConfigListBuilder() {
    RoleDashboardConfigList._defaults(this);
  }

  RoleDashboardConfigListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _roleId = $v.roleId;
      _roleName = $v.roleName;
      _areaId = $v.areaId;
      _areaName = $v.areaName;
      _widgetCode = $v.widgetCode;
      _widgetName = $v.widgetName;
      _visible = $v.visible;
      _order = $v.order;
      _config = $v.config;
      _isGlobal = $v.isGlobal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoleDashboardConfigList other) {
    _$v = other as _$RoleDashboardConfigList;
  }

  @override
  void update(void Function(RoleDashboardConfigListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleDashboardConfigList build() => _build();

  _$RoleDashboardConfigList _build() {
    final _$result = _$v ??
        _$RoleDashboardConfigList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'RoleDashboardConfigList', 'id'),
          roleId: BuiltValueNullFieldError.checkNotNull(
              roleId, r'RoleDashboardConfigList', 'roleId'),
          roleName: BuiltValueNullFieldError.checkNotNull(
              roleName, r'RoleDashboardConfigList', 'roleName'),
          areaId: areaId,
          areaName: areaName,
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'RoleDashboardConfigList', 'widgetCode'),
          widgetName: BuiltValueNullFieldError.checkNotNull(
              widgetName, r'RoleDashboardConfigList', 'widgetName'),
          visible: BuiltValueNullFieldError.checkNotNull(
              visible, r'RoleDashboardConfigList', 'visible'),
          order: BuiltValueNullFieldError.checkNotNull(
              order, r'RoleDashboardConfigList', 'order'),
          config: config,
          isGlobal: BuiltValueNullFieldError.checkNotNull(
              isGlobal, r'RoleDashboardConfigList', 'isGlobal'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
