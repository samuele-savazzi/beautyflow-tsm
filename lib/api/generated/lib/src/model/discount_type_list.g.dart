// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_type_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscountTypeList extends DiscountTypeList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String valueType;
  @override
  final String discountType;
  @override
  final double? percentageValue;
  @override
  final double? fixedValue;
  @override
  final String displayValue;
  @override
  final String expirationType;
  @override
  final int? expirationValue;
  @override
  final bool stackable;
  @override
  final bool combinable;
  @override
  final bool active;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int assignedCount;
  @override
  final int usedCount;

  factory _$DiscountTypeList(
          [void Function(DiscountTypeListBuilder)? updates]) =>
      (DiscountTypeListBuilder()..update(updates))._build();

  _$DiscountTypeList._(
      {required this.id,
      required this.name,
      required this.valueType,
      required this.discountType,
      this.percentageValue,
      this.fixedValue,
      required this.displayValue,
      required this.expirationType,
      this.expirationValue,
      required this.stackable,
      required this.combinable,
      required this.active,
      required this.createdAt,
      required this.updatedAt,
      required this.assignedCount,
      required this.usedCount})
      : super._();
  @override
  DiscountTypeList rebuild(void Function(DiscountTypeListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscountTypeListBuilder toBuilder() =>
      DiscountTypeListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscountTypeList &&
        id == other.id &&
        name == other.name &&
        valueType == other.valueType &&
        discountType == other.discountType &&
        percentageValue == other.percentageValue &&
        fixedValue == other.fixedValue &&
        displayValue == other.displayValue &&
        expirationType == other.expirationType &&
        expirationValue == other.expirationValue &&
        stackable == other.stackable &&
        combinable == other.combinable &&
        active == other.active &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        assignedCount == other.assignedCount &&
        usedCount == other.usedCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, percentageValue.hashCode);
    _$hash = $jc(_$hash, fixedValue.hashCode);
    _$hash = $jc(_$hash, displayValue.hashCode);
    _$hash = $jc(_$hash, expirationType.hashCode);
    _$hash = $jc(_$hash, expirationValue.hashCode);
    _$hash = $jc(_$hash, stackable.hashCode);
    _$hash = $jc(_$hash, combinable.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, assignedCount.hashCode);
    _$hash = $jc(_$hash, usedCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiscountTypeList')
          ..add('id', id)
          ..add('name', name)
          ..add('valueType', valueType)
          ..add('discountType', discountType)
          ..add('percentageValue', percentageValue)
          ..add('fixedValue', fixedValue)
          ..add('displayValue', displayValue)
          ..add('expirationType', expirationType)
          ..add('expirationValue', expirationValue)
          ..add('stackable', stackable)
          ..add('combinable', combinable)
          ..add('active', active)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('assignedCount', assignedCount)
          ..add('usedCount', usedCount))
        .toString();
  }
}

class DiscountTypeListBuilder
    implements Builder<DiscountTypeList, DiscountTypeListBuilder> {
  _$DiscountTypeList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _valueType;
  String? get valueType => _$this._valueType;
  set valueType(String? valueType) => _$this._valueType = valueType;

  String? _discountType;
  String? get discountType => _$this._discountType;
  set discountType(String? discountType) => _$this._discountType = discountType;

  double? _percentageValue;
  double? get percentageValue => _$this._percentageValue;
  set percentageValue(double? percentageValue) =>
      _$this._percentageValue = percentageValue;

  double? _fixedValue;
  double? get fixedValue => _$this._fixedValue;
  set fixedValue(double? fixedValue) => _$this._fixedValue = fixedValue;

  String? _displayValue;
  String? get displayValue => _$this._displayValue;
  set displayValue(String? displayValue) => _$this._displayValue = displayValue;

  String? _expirationType;
  String? get expirationType => _$this._expirationType;
  set expirationType(String? expirationType) =>
      _$this._expirationType = expirationType;

  int? _expirationValue;
  int? get expirationValue => _$this._expirationValue;
  set expirationValue(int? expirationValue) =>
      _$this._expirationValue = expirationValue;

  bool? _stackable;
  bool? get stackable => _$this._stackable;
  set stackable(bool? stackable) => _$this._stackable = stackable;

  bool? _combinable;
  bool? get combinable => _$this._combinable;
  set combinable(bool? combinable) => _$this._combinable = combinable;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _assignedCount;
  int? get assignedCount => _$this._assignedCount;
  set assignedCount(int? assignedCount) =>
      _$this._assignedCount = assignedCount;

  int? _usedCount;
  int? get usedCount => _$this._usedCount;
  set usedCount(int? usedCount) => _$this._usedCount = usedCount;

  DiscountTypeListBuilder() {
    DiscountTypeList._defaults(this);
  }

  DiscountTypeListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _valueType = $v.valueType;
      _discountType = $v.discountType;
      _percentageValue = $v.percentageValue;
      _fixedValue = $v.fixedValue;
      _displayValue = $v.displayValue;
      _expirationType = $v.expirationType;
      _expirationValue = $v.expirationValue;
      _stackable = $v.stackable;
      _combinable = $v.combinable;
      _active = $v.active;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _assignedCount = $v.assignedCount;
      _usedCount = $v.usedCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscountTypeList other) {
    _$v = other as _$DiscountTypeList;
  }

  @override
  void update(void Function(DiscountTypeListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscountTypeList build() => _build();

  _$DiscountTypeList _build() {
    final _$result = _$v ??
        _$DiscountTypeList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DiscountTypeList', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DiscountTypeList', 'name'),
          valueType: BuiltValueNullFieldError.checkNotNull(
              valueType, r'DiscountTypeList', 'valueType'),
          discountType: BuiltValueNullFieldError.checkNotNull(
              discountType, r'DiscountTypeList', 'discountType'),
          percentageValue: percentageValue,
          fixedValue: fixedValue,
          displayValue: BuiltValueNullFieldError.checkNotNull(
              displayValue, r'DiscountTypeList', 'displayValue'),
          expirationType: BuiltValueNullFieldError.checkNotNull(
              expirationType, r'DiscountTypeList', 'expirationType'),
          expirationValue: expirationValue,
          stackable: BuiltValueNullFieldError.checkNotNull(
              stackable, r'DiscountTypeList', 'stackable'),
          combinable: BuiltValueNullFieldError.checkNotNull(
              combinable, r'DiscountTypeList', 'combinable'),
          active: BuiltValueNullFieldError.checkNotNull(
              active, r'DiscountTypeList', 'active'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'DiscountTypeList', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'DiscountTypeList', 'updatedAt'),
          assignedCount: BuiltValueNullFieldError.checkNotNull(
              assignedCount, r'DiscountTypeList', 'assignedCount'),
          usedCount: BuiltValueNullFieldError.checkNotNull(
              usedCount, r'DiscountTypeList', 'usedCount'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
