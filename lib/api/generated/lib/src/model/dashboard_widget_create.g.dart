// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_widget_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardWidgetCreate extends DashboardWidgetCreate {
  @override
  final String code;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String category;
  @override
  final String? icon;
  @override
  final bool? defaultVisible;
  @override
  final int? minRoleLevel;
  @override
  final Map<String, dynamic>? defaultConfig;

  factory _$DashboardWidgetCreate(
          [void Function(DashboardWidgetCreateBuilder)? updates]) =>
      (DashboardWidgetCreateBuilder()..update(updates))._build();

  _$DashboardWidgetCreate._(
      {required this.code,
      required this.name,
      this.description,
      required this.category,
      this.icon,
      this.defaultVisible,
      this.minRoleLevel,
      this.defaultConfig})
      : super._();
  @override
  DashboardWidgetCreate rebuild(
          void Function(DashboardWidgetCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardWidgetCreateBuilder toBuilder() =>
      DashboardWidgetCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardWidgetCreate &&
        code == other.code &&
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
    _$hash = $jc(_$hash, code.hashCode);
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
    return (newBuiltValueToStringHelper(r'DashboardWidgetCreate')
          ..add('code', code)
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

class DashboardWidgetCreateBuilder
    implements Builder<DashboardWidgetCreate, DashboardWidgetCreateBuilder> {
  _$DashboardWidgetCreate? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

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

  DashboardWidgetCreateBuilder() {
    DashboardWidgetCreate._defaults(this);
  }

  DashboardWidgetCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
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
  void replace(DashboardWidgetCreate other) {
    _$v = other as _$DashboardWidgetCreate;
  }

  @override
  void update(void Function(DashboardWidgetCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardWidgetCreate build() => _build();

  _$DashboardWidgetCreate _build() {
    final _$result = _$v ??
        _$DashboardWidgetCreate._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'DashboardWidgetCreate', 'code'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DashboardWidgetCreate', 'name'),
          description: description,
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'DashboardWidgetCreate', 'category'),
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
