// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user_dashboard_config_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminUserDashboardConfigList extends AdminUserDashboardConfigList {
  @override
  final int id;
  @override
  final int userId;
  @override
  final String userName;
  @override
  final int areaId;
  @override
  final String areaName;
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

  factory _$AdminUserDashboardConfigList(
          [void Function(AdminUserDashboardConfigListBuilder)? updates]) =>
      (AdminUserDashboardConfigListBuilder()..update(updates))._build();

  _$AdminUserDashboardConfigList._(
      {required this.id,
      required this.userId,
      required this.userName,
      required this.areaId,
      required this.areaName,
      required this.widgetCode,
      required this.widgetName,
      required this.visible,
      required this.order,
      this.config})
      : super._();
  @override
  AdminUserDashboardConfigList rebuild(
          void Function(AdminUserDashboardConfigListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminUserDashboardConfigListBuilder toBuilder() =>
      AdminUserDashboardConfigListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminUserDashboardConfigList &&
        id == other.id &&
        userId == other.userId &&
        userName == other.userName &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        widgetCode == other.widgetCode &&
        widgetName == other.widgetName &&
        visible == other.visible &&
        order == other.order &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, widgetCode.hashCode);
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminUserDashboardConfigList')
          ..add('id', id)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('widgetCode', widgetCode)
          ..add('widgetName', widgetName)
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config))
        .toString();
  }
}

class AdminUserDashboardConfigListBuilder
    implements
        Builder<AdminUserDashboardConfigList,
            AdminUserDashboardConfigListBuilder> {
  _$AdminUserDashboardConfigList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

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

  AdminUserDashboardConfigListBuilder() {
    AdminUserDashboardConfigList._defaults(this);
  }

  AdminUserDashboardConfigListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _userName = $v.userName;
      _areaId = $v.areaId;
      _areaName = $v.areaName;
      _widgetCode = $v.widgetCode;
      _widgetName = $v.widgetName;
      _visible = $v.visible;
      _order = $v.order;
      _config = $v.config;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminUserDashboardConfigList other) {
    _$v = other as _$AdminUserDashboardConfigList;
  }

  @override
  void update(void Function(AdminUserDashboardConfigListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminUserDashboardConfigList build() => _build();

  _$AdminUserDashboardConfigList _build() {
    final _$result = _$v ??
        _$AdminUserDashboardConfigList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AdminUserDashboardConfigList', 'id'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'AdminUserDashboardConfigList', 'userId'),
          userName: BuiltValueNullFieldError.checkNotNull(
              userName, r'AdminUserDashboardConfigList', 'userName'),
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'AdminUserDashboardConfigList', 'areaId'),
          areaName: BuiltValueNullFieldError.checkNotNull(
              areaName, r'AdminUserDashboardConfigList', 'areaName'),
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'AdminUserDashboardConfigList', 'widgetCode'),
          widgetName: BuiltValueNullFieldError.checkNotNull(
              widgetName, r'AdminUserDashboardConfigList', 'widgetName'),
          visible: BuiltValueNullFieldError.checkNotNull(
              visible, r'AdminUserDashboardConfigList', 'visible'),
          order: BuiltValueNullFieldError.checkNotNull(
              order, r'AdminUserDashboardConfigList', 'order'),
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
