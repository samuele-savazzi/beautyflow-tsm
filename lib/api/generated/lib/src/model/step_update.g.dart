// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepUpdate extends StepUpdate {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int templateId;
  @override
  final bool immutable;
  @override
  final bool requiresActiveTime;
  @override
  final bool preparationWorkStation;
  @override
  final bool cleanWorkStation;
  @override
  final bool hasCategories;
  @override
  final bool active;
  @override
  final String type;
  @override
  final String value;
  @override
  final CategoryGroupUpdate categoryGroup;
  @override
  final String icon;
  @override
  final String color;
  @override
  final String bgColor;
  @override
  final String dragId;

  factory _$StepUpdate([void Function(StepUpdateBuilder)? updates]) =>
      (StepUpdateBuilder()..update(updates))._build();

  _$StepUpdate._(
      {this.id,
      required this.name,
      required this.description,
      required this.templateId,
      required this.immutable,
      required this.requiresActiveTime,
      required this.preparationWorkStation,
      required this.cleanWorkStation,
      required this.hasCategories,
      required this.active,
      required this.type,
      required this.value,
      required this.categoryGroup,
      required this.icon,
      required this.color,
      required this.bgColor,
      required this.dragId})
      : super._();
  @override
  StepUpdate rebuild(void Function(StepUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepUpdateBuilder toBuilder() => StepUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepUpdate &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        templateId == other.templateId &&
        immutable == other.immutable &&
        requiresActiveTime == other.requiresActiveTime &&
        preparationWorkStation == other.preparationWorkStation &&
        cleanWorkStation == other.cleanWorkStation &&
        hasCategories == other.hasCategories &&
        active == other.active &&
        type == other.type &&
        value == other.value &&
        categoryGroup == other.categoryGroup &&
        icon == other.icon &&
        color == other.color &&
        bgColor == other.bgColor &&
        dragId == other.dragId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, templateId.hashCode);
    _$hash = $jc(_$hash, immutable.hashCode);
    _$hash = $jc(_$hash, requiresActiveTime.hashCode);
    _$hash = $jc(_$hash, preparationWorkStation.hashCode);
    _$hash = $jc(_$hash, cleanWorkStation.hashCode);
    _$hash = $jc(_$hash, hasCategories.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, categoryGroup.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, bgColor.hashCode);
    _$hash = $jc(_$hash, dragId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StepUpdate')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('templateId', templateId)
          ..add('immutable', immutable)
          ..add('requiresActiveTime', requiresActiveTime)
          ..add('preparationWorkStation', preparationWorkStation)
          ..add('cleanWorkStation', cleanWorkStation)
          ..add('hasCategories', hasCategories)
          ..add('active', active)
          ..add('type', type)
          ..add('value', value)
          ..add('categoryGroup', categoryGroup)
          ..add('icon', icon)
          ..add('color', color)
          ..add('bgColor', bgColor)
          ..add('dragId', dragId))
        .toString();
  }
}

class StepUpdateBuilder implements Builder<StepUpdate, StepUpdateBuilder> {
  _$StepUpdate? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _templateId;
  int? get templateId => _$this._templateId;
  set templateId(int? templateId) => _$this._templateId = templateId;

  bool? _immutable;
  bool? get immutable => _$this._immutable;
  set immutable(bool? immutable) => _$this._immutable = immutable;

  bool? _requiresActiveTime;
  bool? get requiresActiveTime => _$this._requiresActiveTime;
  set requiresActiveTime(bool? requiresActiveTime) =>
      _$this._requiresActiveTime = requiresActiveTime;

  bool? _preparationWorkStation;
  bool? get preparationWorkStation => _$this._preparationWorkStation;
  set preparationWorkStation(bool? preparationWorkStation) =>
      _$this._preparationWorkStation = preparationWorkStation;

  bool? _cleanWorkStation;
  bool? get cleanWorkStation => _$this._cleanWorkStation;
  set cleanWorkStation(bool? cleanWorkStation) =>
      _$this._cleanWorkStation = cleanWorkStation;

  bool? _hasCategories;
  bool? get hasCategories => _$this._hasCategories;
  set hasCategories(bool? hasCategories) =>
      _$this._hasCategories = hasCategories;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  CategoryGroupUpdateBuilder? _categoryGroup;
  CategoryGroupUpdateBuilder get categoryGroup =>
      _$this._categoryGroup ??= CategoryGroupUpdateBuilder();
  set categoryGroup(CategoryGroupUpdateBuilder? categoryGroup) =>
      _$this._categoryGroup = categoryGroup;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _bgColor;
  String? get bgColor => _$this._bgColor;
  set bgColor(String? bgColor) => _$this._bgColor = bgColor;

  String? _dragId;
  String? get dragId => _$this._dragId;
  set dragId(String? dragId) => _$this._dragId = dragId;

  StepUpdateBuilder() {
    StepUpdate._defaults(this);
  }

  StepUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _templateId = $v.templateId;
      _immutable = $v.immutable;
      _requiresActiveTime = $v.requiresActiveTime;
      _preparationWorkStation = $v.preparationWorkStation;
      _cleanWorkStation = $v.cleanWorkStation;
      _hasCategories = $v.hasCategories;
      _active = $v.active;
      _type = $v.type;
      _value = $v.value;
      _categoryGroup = $v.categoryGroup.toBuilder();
      _icon = $v.icon;
      _color = $v.color;
      _bgColor = $v.bgColor;
      _dragId = $v.dragId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepUpdate other) {
    _$v = other as _$StepUpdate;
  }

  @override
  void update(void Function(StepUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepUpdate build() => _build();

  _$StepUpdate _build() {
    _$StepUpdate _$result;
    try {
      _$result = _$v ??
          _$StepUpdate._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'StepUpdate', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'StepUpdate', 'description'),
            templateId: BuiltValueNullFieldError.checkNotNull(
                templateId, r'StepUpdate', 'templateId'),
            immutable: BuiltValueNullFieldError.checkNotNull(
                immutable, r'StepUpdate', 'immutable'),
            requiresActiveTime: BuiltValueNullFieldError.checkNotNull(
                requiresActiveTime, r'StepUpdate', 'requiresActiveTime'),
            preparationWorkStation: BuiltValueNullFieldError.checkNotNull(
                preparationWorkStation,
                r'StepUpdate',
                'preparationWorkStation'),
            cleanWorkStation: BuiltValueNullFieldError.checkNotNull(
                cleanWorkStation, r'StepUpdate', 'cleanWorkStation'),
            hasCategories: BuiltValueNullFieldError.checkNotNull(
                hasCategories, r'StepUpdate', 'hasCategories'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'StepUpdate', 'active'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'StepUpdate', 'type'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'StepUpdate', 'value'),
            categoryGroup: categoryGroup.build(),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'StepUpdate', 'icon'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'StepUpdate', 'color'),
            bgColor: BuiltValueNullFieldError.checkNotNull(
                bgColor, r'StepUpdate', 'bgColor'),
            dragId: BuiltValueNullFieldError.checkNotNull(
                dragId, r'StepUpdate', 'dragId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryGroup';
        categoryGroup.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StepUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
