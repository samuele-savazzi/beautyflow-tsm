// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboard_config_create_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDashboardConfigCreateUpdate
    extends UserDashboardConfigCreateUpdate {
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

  factory _$UserDashboardConfigCreateUpdate(
          [void Function(UserDashboardConfigCreateUpdateBuilder)? updates]) =>
      (UserDashboardConfigCreateUpdateBuilder()..update(updates))._build();

  _$UserDashboardConfigCreateUpdate._(
      {required this.areaId,
      required this.widgetCode,
      this.visible,
      this.order,
      this.config})
      : super._();
  @override
  UserDashboardConfigCreateUpdate rebuild(
          void Function(UserDashboardConfigCreateUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDashboardConfigCreateUpdateBuilder toBuilder() =>
      UserDashboardConfigCreateUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDashboardConfigCreateUpdate &&
        areaId == other.areaId &&
        widgetCode == other.widgetCode &&
        visible == other.visible &&
        order == other.order &&
        config == other.config;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'UserDashboardConfigCreateUpdate')
          ..add('areaId', areaId)
          ..add('widgetCode', widgetCode)
          ..add('visible', visible)
          ..add('order', order)
          ..add('config', config))
        .toString();
  }
}

class UserDashboardConfigCreateUpdateBuilder
    implements
        Builder<UserDashboardConfigCreateUpdate,
            UserDashboardConfigCreateUpdateBuilder> {
  _$UserDashboardConfigCreateUpdate? _$v;

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

  UserDashboardConfigCreateUpdateBuilder() {
    UserDashboardConfigCreateUpdate._defaults(this);
  }

  UserDashboardConfigCreateUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(UserDashboardConfigCreateUpdate other) {
    _$v = other as _$UserDashboardConfigCreateUpdate;
  }

  @override
  void update(void Function(UserDashboardConfigCreateUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDashboardConfigCreateUpdate build() => _build();

  _$UserDashboardConfigCreateUpdate _build() {
    final _$result = _$v ??
        _$UserDashboardConfigCreateUpdate._(
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'UserDashboardConfigCreateUpdate', 'areaId'),
          widgetCode: BuiltValueNullFieldError.checkNotNull(
              widgetCode, r'UserDashboardConfigCreateUpdate', 'widgetCode'),
          visible: visible,
          order: order,
          config: config,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
