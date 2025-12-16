// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboard_config_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDashboardConfigList extends UserDashboardConfigList {
  @override
  final int id;
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

  factory _$UserDashboardConfigList(
          [void Function(UserDashboardConfigListBuilder)? updates]) =>
      (UserDashboardConfigListBuilder()..update(updates))._build();

  _$UserDashboardConfigList._(
      {required this.id,
      required this.areaId,
      required this.areaName,
      required this.widgetCode,
      required this.widgetName,
      required this.visible,
      required this.order,
      this.config})
      : super._();
  @override
  UserDashboardConfigList rebuild(
          void Function(UserDashboardConfigListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDashboardConfigListBuilder toBuilder() =>
      UserDashboardConfigListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDashboardConfigList &&
        id == other.id &&
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
    return (newBuiltValueToStringHelper(r'UserDashboardConfigList')
          ..add('id', id)
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

class UserDashboardConfigListBuilder
    implements
        Builder<UserDashboardConfigList, UserDashboardConfigListBuilder> {
  _$UserDashboardConfigList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  UserDashboardConfigListBuilder() {
    UserDashboardConfigList._defaults(this);
  }

  UserDashboardConfigListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
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
  void replace(UserDashboardConfigList other) {
    _$v = other as _$UserDashboardConfigList;
  }

  @override
  void update(void Function(UserDashboardConfigListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDashboardConfigList build() => _build();

  _$UserDashboardConfigList _build() {
    final _$result = _$v ??
        _$UserDashboardConfigList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UserDashboardConfigList', 'id'),
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'UserDashboardConfigList', 'areaId'),
          areaName: BuiltValueNullFieldError.checkNotNull(
              areaName, r'UserDashboardConfigList', 'areaName'),
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'UserDashboardConfigList', 'widgetCode'),
          widgetName: BuiltValueNullFieldError.checkNotNull(
              widgetName, r'UserDashboardConfigList', 'widgetName'),
          visible: BuiltValueNullFieldError.checkNotNull(
              visible, r'UserDashboardConfigList', 'visible'),
          order: BuiltValueNullFieldError.checkNotNull(
              order, r'UserDashboardConfigList', 'order'),
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
