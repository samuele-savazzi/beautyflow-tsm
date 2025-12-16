// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_widget_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardWidgetUpdate extends DashboardWidgetUpdate {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? category;
  @override
  final String? icon;
  @override
  final bool? defaultVisible;
  @override
  final int? minRoleLevel;
  @override
  final Map<String, dynamic>? defaultConfig;

  factory _$DashboardWidgetUpdate(
          [void Function(DashboardWidgetUpdateBuilder)? updates]) =>
      (DashboardWidgetUpdateBuilder()..update(updates))._build();

  _$DashboardWidgetUpdate._(
      {this.name,
      this.description,
      this.category,
      this.icon,
      this.defaultVisible,
      this.minRoleLevel,
      this.defaultConfig})
      : super._();
  @override
  DashboardWidgetUpdate rebuild(
          void Function(DashboardWidgetUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardWidgetUpdateBuilder toBuilder() =>
      DashboardWidgetUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardWidgetUpdate &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        icon == other.icon &&
        defaultVisible == other.defaultVisible &&
        minRoleLevel == other.minRoleLevel &&
        defaultConfig == other.defaultConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, defaultVisible.hashCode);
    _$hash = $jc(_$hash, minRoleLevel.hashCode);
    _$hash = $jc(_$hash, defaultConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardWidgetUpdate')
          ..add('name', name)
          ..add('description', description)
          ..add('category', category)
          ..add('icon', icon)
          ..add('defaultVisible', defaultVisible)
          ..add('minRoleLevel', minRoleLevel)
          ..add('defaultConfig', defaultConfig))
        .toString();
  }
}

class DashboardWidgetUpdateBuilder
    implements Builder<DashboardWidgetUpdate, DashboardWidgetUpdateBuilder> {
  _$DashboardWidgetUpdate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  bool? _defaultVisible;
  bool? get defaultVisible => _$this._defaultVisible;
  set defaultVisible(bool? defaultVisible) =>
      _$this._defaultVisible = defaultVisible;

  int? _minRoleLevel;
  int? get minRoleLevel => _$this._minRoleLevel;
  set minRoleLevel(int? minRoleLevel) => _$this._minRoleLevel = minRoleLevel;

  Map<String, dynamic>? _defaultConfig;
  Map<String, dynamic>? get defaultConfig => _$this._defaultConfig;
  set defaultConfig(Map<String, dynamic>? defaultConfig) =>
      _$this._defaultConfig = defaultConfig;

  DashboardWidgetUpdateBuilder() {
    DashboardWidgetUpdate._defaults(this);
  }

  DashboardWidgetUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _category = $v.category;
      _icon = $v.icon;
      _defaultVisible = $v.defaultVisible;
      _minRoleLevel = $v.minRoleLevel;
      _defaultConfig = $v.defaultConfig;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardWidgetUpdate other) {
    _$v = other as _$DashboardWidgetUpdate;
  }

  @override
  void update(void Function(DashboardWidgetUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardWidgetUpdate build() => _build();

  _$DashboardWidgetUpdate _build() {
    final _$result = _$v ??
        _$DashboardWidgetUpdate._(
          name: name,
          description: description,
          category: category,
          icon: icon,
          defaultVisible: defaultVisible,
          minRoleLevel: minRoleLevel,
          defaultConfig: defaultConfig,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
