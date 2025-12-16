// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_template_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StepTemplateList extends StepTemplateList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final String color;
  @override
  final String bgColor;
  @override
  final String description;
  @override
  final int defaultTime;
  @override
  final bool isImmutable;
  @override
  final bool requiresActiveTime;
  @override
  final bool hasCategories;
  @override
  final bool preparationWorkStation;
  @override
  final bool cleanWorkStation;

  factory _$StepTemplateList(
          [void Function(StepTemplateListBuilder)? updates]) =>
      (StepTemplateListBuilder()..update(updates))._build();

  _$StepTemplateList._(
      {required this.id,
      required this.name,
      required this.icon,
      required this.color,
      required this.bgColor,
      required this.description,
      required this.defaultTime,
      required this.isImmutable,
      required this.requiresActiveTime,
      required this.hasCategories,
      required this.preparationWorkStation,
      required this.cleanWorkStation})
      : super._();
  @override
  StepTemplateList rebuild(void Function(StepTemplateListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StepTemplateListBuilder toBuilder() =>
      StepTemplateListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StepTemplateList &&
        id == other.id &&
        name == other.name &&
        icon == other.icon &&
        color == other.color &&
        bgColor == other.bgColor &&
        description == other.description &&
        defaultTime == other.defaultTime &&
        isImmutable == other.isImmutable &&
        requiresActiveTime == other.requiresActiveTime &&
        hasCategories == other.hasCategories &&
        preparationWorkStation == other.preparationWorkStation &&
        cleanWorkStation == other.cleanWorkStation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, bgColor.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, defaultTime.hashCode);
    _$hash = $jc(_$hash, isImmutable.hashCode);
    _$hash = $jc(_$hash, requiresActiveTime.hashCode);
    _$hash = $jc(_$hash, hasCategories.hashCode);
    _$hash = $jc(_$hash, preparationWorkStation.hashCode);
    _$hash = $jc(_$hash, cleanWorkStation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StepTemplateList')
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon)
          ..add('color', color)
          ..add('bgColor', bgColor)
          ..add('description', description)
          ..add('defaultTime', defaultTime)
          ..add('isImmutable', isImmutable)
          ..add('requiresActiveTime', requiresActiveTime)
          ..add('hasCategories', hasCategories)
          ..add('preparationWorkStation', preparationWorkStation)
          ..add('cleanWorkStation', cleanWorkStation))
        .toString();
  }
}

class StepTemplateListBuilder
    implements Builder<StepTemplateList, StepTemplateListBuilder> {
  _$StepTemplateList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _bgColor;
  String? get bgColor => _$this._bgColor;
  set bgColor(String? bgColor) => _$this._bgColor = bgColor;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _defaultTime;
  int? get defaultTime => _$this._defaultTime;
  set defaultTime(int? defaultTime) => _$this._defaultTime = defaultTime;

  bool? _isImmutable;
  bool? get isImmutable => _$this._isImmutable;
  set isImmutable(bool? isImmutable) => _$this._isImmutable = isImmutable;

  bool? _requiresActiveTime;
  bool? get requiresActiveTime => _$this._requiresActiveTime;
  set requiresActiveTime(bool? requiresActiveTime) =>
      _$this._requiresActiveTime = requiresActiveTime;

  bool? _hasCategories;
  bool? get hasCategories => _$this._hasCategories;
  set hasCategories(bool? hasCategories) =>
      _$this._hasCategories = hasCategories;

  bool? _preparationWorkStation;
  bool? get preparationWorkStation => _$this._preparationWorkStation;
  set preparationWorkStation(bool? preparationWorkStation) =>
      _$this._preparationWorkStation = preparationWorkStation;

  bool? _cleanWorkStation;
  bool? get cleanWorkStation => _$this._cleanWorkStation;
  set cleanWorkStation(bool? cleanWorkStation) =>
      _$this._cleanWorkStation = cleanWorkStation;

  StepTemplateListBuilder() {
    StepTemplateList._defaults(this);
  }

  StepTemplateListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _color = $v.color;
      _bgColor = $v.bgColor;
      _description = $v.description;
      _defaultTime = $v.defaultTime;
      _isImmutable = $v.isImmutable;
      _requiresActiveTime = $v.requiresActiveTime;
      _hasCategories = $v.hasCategories;
      _preparationWorkStation = $v.preparationWorkStation;
      _cleanWorkStation = $v.cleanWorkStation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StepTemplateList other) {
    _$v = other as _$StepTemplateList;
  }

  @override
  void update(void Function(StepTemplateListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StepTemplateList build() => _build();

  _$StepTemplateList _build() {
    final _$result = _$v ??
        _$StepTemplateList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'StepTemplateList', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'StepTemplateList', 'name'),
          icon: BuiltValueNullFieldError.checkNotNull(
              icon, r'StepTemplateList', 'icon'),
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'StepTemplateList', 'color'),
          bgColor: BuiltValueNullFieldError.checkNotNull(
              bgColor, r'StepTemplateList', 'bgColor'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'StepTemplateList', 'description'),
          defaultTime: BuiltValueNullFieldError.checkNotNull(
              defaultTime, r'StepTemplateList', 'defaultTime'),
          isImmutable: BuiltValueNullFieldError.checkNotNull(
              isImmutable, r'StepTemplateList', 'isImmutable'),
          requiresActiveTime: BuiltValueNullFieldError.checkNotNull(
              requiresActiveTime, r'StepTemplateList', 'requiresActiveTime'),
          hasCategories: BuiltValueNullFieldError.checkNotNull(
              hasCategories, r'StepTemplateList', 'hasCategories'),
          preparationWorkStation: BuiltValueNullFieldError.checkNotNull(
              preparationWorkStation,
              r'StepTemplateList',
              'preparationWorkStation'),
          cleanWorkStation: BuiltValueNullFieldError.checkNotNull(
              cleanWorkStation, r'StepTemplateList', 'cleanWorkStation'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
