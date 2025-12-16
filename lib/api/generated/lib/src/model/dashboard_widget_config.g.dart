// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_widget_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardWidgetConfig extends DashboardWidgetConfig {
  @override
  final String code;
  @override
  final String name;
  @override
  final String category;
  @override
  final String icon;
  @override
  final int order;
  @override
  final Map<String, dynamic>? config;
  @override
  final String source_;

  factory _$DashboardWidgetConfig(
          [void Function(DashboardWidgetConfigBuilder)? updates]) =>
      (DashboardWidgetConfigBuilder()..update(updates))._build();

  _$DashboardWidgetConfig._(
      {required this.code,
      required this.name,
      required this.category,
      required this.icon,
      required this.order,
      this.config,
      required this.source_})
      : super._();
  @override
  DashboardWidgetConfig rebuild(
          void Function(DashboardWidgetConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardWidgetConfigBuilder toBuilder() =>
      DashboardWidgetConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardWidgetConfig &&
        code == other.code &&
        name == other.name &&
        category == other.category &&
        icon == other.icon &&
        order == other.order &&
        config == other.config &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardWidgetConfig')
          ..add('code', code)
          ..add('name', name)
          ..add('category', category)
          ..add('icon', icon)
          ..add('order', order)
          ..add('config', config)
          ..add('source_', source_))
        .toString();
  }
}

class DashboardWidgetConfigBuilder
    implements Builder<DashboardWidgetConfig, DashboardWidgetConfigBuilder> {
  _$DashboardWidgetConfig? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  Map<String, dynamic>? _config;
  Map<String, dynamic>? get config => _$this._config;
  set config(Map<String, dynamic>? config) => _$this._config = config;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DashboardWidgetConfigBuilder() {
    DashboardWidgetConfig._defaults(this);
  }

  DashboardWidgetConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _name = $v.name;
      _category = $v.category;
      _icon = $v.icon;
      _order = $v.order;
      _config = $v.config;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardWidgetConfig other) {
    _$v = other as _$DashboardWidgetConfig;
  }

  @override
  void update(void Function(DashboardWidgetConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardWidgetConfig build() => _build();

  _$DashboardWidgetConfig _build() {
    final _$result = _$v ??
        _$DashboardWidgetConfig._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'DashboardWidgetConfig', 'code'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DashboardWidgetConfig', 'name'),
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'DashboardWidgetConfig', 'category'),
          icon: BuiltValueNullFieldError.checkNotNull(
              icon, r'DashboardWidgetConfig', 'icon'),
          order: BuiltValueNullFieldError.checkNotNull(
              order, r'DashboardWidgetConfig', 'order'),
          config: config,
          source_: BuiltValueNullFieldError.checkNotNull(
              source_, r'DashboardWidgetConfig', 'source_'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
