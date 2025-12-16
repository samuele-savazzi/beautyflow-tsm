// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user_dashboard_config_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminUserDashboardConfigCreate extends AdminUserDashboardConfigCreate {
  @override
  final int userId;
  @override
  final int areaId;
  @override
  final String widgetCode;
  @override
  final bool? visible;
  @override
  final int? order;
  @override
  final Map<String, dynamic>? config;

  factory _$AdminUserDashboardConfigCreate(
          [void Function(AdminUserDashboardConfigCreateBuilder)? updates]) =>
      (AdminUserDashboardConfigCreateBuilder()..update(updates))._build();

  _$AdminUserDashboardConfigCreate._(
      {required this.userId,
      required this.areaId,
      required this.widgetCode,
      this.visible,
      this.order,
      this.config})
      : super._();
  @override
  AdminUserDashboardConfigCreate rebuild(
          void Function(AdminUserDashboardConfigCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminUserDashboardConfigCreateBuilder toBuilder() =>
      AdminUserDashboardConfigCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminUserDashboardConfigCreate &&
        userId == other.userId &&
        areaId == other.areaId &&
        widgetCode == other.widgetCode &&
        visible == other.visible &&
        order == other.order &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
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
    return (newBuiltValueToStringHelper(r'AdminUserDashboardConfigCreate')
          ..add('userId', userId)
          ..add('areaId', areaId)
          ..add('widgetCode', widgetCode)
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config))
        .toString();
  }
}

class AdminUserDashboardConfigCreateBuilder
    implements
        Builder<AdminUserDashboardConfigCreate,
            AdminUserDashboardConfigCreateBuilder> {
  _$AdminUserDashboardConfigCreate? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

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

  AdminUserDashboardConfigCreateBuilder() {
    AdminUserDashboardConfigCreate._defaults(this);
  }

  AdminUserDashboardConfigCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
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
  void replace(AdminUserDashboardConfigCreate other) {
    _$v = other as _$AdminUserDashboardConfigCreate;
  }

  @override
  void update(void Function(AdminUserDashboardConfigCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminUserDashboardConfigCreate build() => _build();

  _$AdminUserDashboardConfigCreate _build() {
    final _$result = _$v ??
        _$AdminUserDashboardConfigCreate._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'AdminUserDashboardConfigCreate', 'userId'),
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'AdminUserDashboardConfigCreate', 'areaId'),
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'AdminUserDashboardConfigCreate', 'widgetCode'),
          visible: visible,
          order: order,
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
