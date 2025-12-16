// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_widget_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardWidgetList extends DashboardWidgetList {
  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final String description;
  @override
  final String category;
  @override
  final String icon;
  @override
  final bool defaultVisible;
  @override
  final Map<String, dynamic>? defaultConfig;
  @override
  final bool forOperator;
  @override
  final bool forOperatorAuthorized;
  @override
  final bool forAdmin;
  @override
  final bool forSecretariat;
  @override
  final bool forTitular;
  @override
  final BuiltList<String> requiredWidgets;
  @override
  final BuiltList<String> mutuallyExclusiveWith;
  @override
  final BuiltList<AuthorizationRequirement> requiredAuthorizations;

  factory _$DashboardWidgetList(
          [void Function(DashboardWidgetListBuilder)? updates]) =>
      (DashboardWidgetListBuilder()..update(updates))._build();

  _$DashboardWidgetList._(
      {required this.id,
      required this.code,
      required this.name,
      required this.description,
      required this.category,
      required this.icon,
      required this.defaultVisible,
      this.defaultConfig,
      required this.forOperator,
      required this.forOperatorAuthorized,
      required this.forAdmin,
      required this.forSecretariat,
      required this.forTitular,
      required this.requiredWidgets,
      required this.mutuallyExclusiveWith,
      required this.requiredAuthorizations})
      : super._();
  @override
  DashboardWidgetList rebuild(
          void Function(DashboardWidgetListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardWidgetListBuilder toBuilder() =>
      DashboardWidgetListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardWidgetList &&
        id == other.id &&
        code == other.code &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        icon == other.icon &&
        defaultVisible == other.defaultVisible &&
        defaultConfig == other.defaultConfig &&
        forOperator == other.forOperator &&
        forOperatorAuthorized == other.forOperatorAuthorized &&
        forAdmin == other.forAdmin &&
        forSecretariat == other.forSecretariat &&
        forTitular == other.forTitular &&
        requiredWidgets == other.requiredWidgets &&
        mutuallyExclusiveWith == other.mutuallyExclusiveWith &&
        requiredAuthorizations == other.requiredAuthorizations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, defaultVisible.hashCode);
    _$hash = $jc(_$hash, defaultConfig.hashCode);
    _$hash = $jc(_$hash, forOperator.hashCode);
    _$hash = $jc(_$hash, forOperatorAuthorized.hashCode);
    _$hash = $jc(_$hash, forAdmin.hashCode);
    _$hash = $jc(_$hash, forSecretariat.hashCode);
    _$hash = $jc(_$hash, forTitular.hashCode);
    _$hash = $jc(_$hash, requiredWidgets.hashCode);
    _$hash = $jc(_$hash, mutuallyExclusiveWith.hashCode);
    _$hash = $jc(_$hash, requiredAuthorizations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardWidgetList')
          ..add('id', id)
          ..add('code', code)
          ..add('name', name)
          ..add('description', description)
          ..add('category', category)
          ..add('icon', icon)
          ..add('defaultVisible', defaultVisible)
          ..add('defaultConfig', defaultConfig)
          ..add('forOperator', forOperator)
          ..add('forOperatorAuthorized', forOperatorAuthorized)
          ..add('forAdmin', forAdmin)
          ..add('forSecretariat', forSecretariat)
          ..add('forTitular', forTitular)
          ..add('requiredWidgets', requiredWidgets)
          ..add('mutuallyExclusiveWith', mutuallyExclusiveWith)
          ..add('requiredAuthorizations', requiredAuthorizations))
        .toString();
  }
}

class DashboardWidgetListBuilder
    implements Builder<DashboardWidgetList, DashboardWidgetListBuilder> {
  _$DashboardWidgetList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  Map<String, dynamic>? _defaultConfig;
  Map<String, dynamic>? get defaultConfig => _$this._defaultConfig;
  set defaultConfig(Map<String, dynamic>? defaultConfig) =>
      _$this._defaultConfig = defaultConfig;

  bool? _forOperator;
  bool? get forOperator => _$this._forOperator;
  set forOperator(bool? forOperator) => _$this._forOperator = forOperator;

  bool? _forOperatorAuthorized;
  bool? get forOperatorAuthorized => _$this._forOperatorAuthorized;
  set forOperatorAuthorized(bool? forOperatorAuthorized) =>
      _$this._forOperatorAuthorized = forOperatorAuthorized;

  bool? _forAdmin;
  bool? get forAdmin => _$this._forAdmin;
  set forAdmin(bool? forAdmin) => _$this._forAdmin = forAdmin;

  bool? _forSecretariat;
  bool? get forSecretariat => _$this._forSecretariat;
  set forSecretariat(bool? forSecretariat) =>
      _$this._forSecretariat = forSecretariat;

  bool? _forTitular;
  bool? get forTitular => _$this._forTitular;
  set forTitular(bool? forTitular) => _$this._forTitular = forTitular;

  ListBuilder<String>? _requiredWidgets;
  ListBuilder<String> get requiredWidgets =>
      _$this._requiredWidgets ??= ListBuilder<String>();
  set requiredWidgets(ListBuilder<String>? requiredWidgets) =>
      _$this._requiredWidgets = requiredWidgets;

  ListBuilder<String>? _mutuallyExclusiveWith;
  ListBuilder<String> get mutuallyExclusiveWith =>
      _$this._mutuallyExclusiveWith ??= ListBuilder<String>();
  set mutuallyExclusiveWith(ListBuilder<String>? mutuallyExclusiveWith) =>
      _$this._mutuallyExclusiveWith = mutuallyExclusiveWith;

  ListBuilder<AuthorizationRequirement>? _requiredAuthorizations;
  ListBuilder<AuthorizationRequirement> get requiredAuthorizations =>
      _$this._requiredAuthorizations ??=
          ListBuilder<AuthorizationRequirement>();
  set requiredAuthorizations(
          ListBuilder<AuthorizationRequirement>? requiredAuthorizations) =>
      _$this._requiredAuthorizations = requiredAuthorizations;

  DashboardWidgetListBuilder() {
    DashboardWidgetList._defaults(this);
  }

  DashboardWidgetListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _name = $v.name;
      _description = $v.description;
      _category = $v.category;
      _icon = $v.icon;
      _defaultVisible = $v.defaultVisible;
      _defaultConfig = $v.defaultConfig;
      _forOperator = $v.forOperator;
      _forOperatorAuthorized = $v.forOperatorAuthorized;
      _forAdmin = $v.forAdmin;
      _forSecretariat = $v.forSecretariat;
      _forTitular = $v.forTitular;
      _requiredWidgets = $v.requiredWidgets.toBuilder();
      _mutuallyExclusiveWith = $v.mutuallyExclusiveWith.toBuilder();
      _requiredAuthorizations = $v.requiredAuthorizations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardWidgetList other) {
    _$v = other as _$DashboardWidgetList;
  }

  @override
  void update(void Function(DashboardWidgetListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardWidgetList build() => _build();

  _$DashboardWidgetList _build() {
    _$DashboardWidgetList _$result;
    try {
      _$result = _$v ??
          _$DashboardWidgetList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DashboardWidgetList', 'id'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'DashboardWidgetList', 'code'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'DashboardWidgetList', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'DashboardWidgetList', 'description'),
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'DashboardWidgetList', 'category'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'DashboardWidgetList', 'icon'),
            defaultVisible: BuiltValueNullFieldError.checkNotNull(
                defaultVisible, r'DashboardWidgetList', 'defaultVisible'),
            defaultConfig: defaultConfig,
            forOperator: BuiltValueNullFieldError.checkNotNull(
                forOperator, r'DashboardWidgetList', 'forOperator'),
            forOperatorAuthorized: BuiltValueNullFieldError.checkNotNull(
                forOperatorAuthorized,
                r'DashboardWidgetList',
                'forOperatorAuthorized'),
            forAdmin: BuiltValueNullFieldError.checkNotNull(
                forAdmin, r'DashboardWidgetList', 'forAdmin'),
            forSecretariat: BuiltValueNullFieldError.checkNotNull(
                forSecretariat, r'DashboardWidgetList', 'forSecretariat'),
            forTitular: BuiltValueNullFieldError.checkNotNull(
                forTitular, r'DashboardWidgetList', 'forTitular'),
            requiredWidgets: requiredWidgets.build(),
            mutuallyExclusiveWith: mutuallyExclusiveWith.build(),
            requiredAuthorizations: requiredAuthorizations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requiredWidgets';
        requiredWidgets.build();
        _$failedField = 'mutuallyExclusiveWith';
        mutuallyExclusiveWith.build();
        _$failedField = 'requiredAuthorizations';
        requiredAuthorizations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DashboardWidgetList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
