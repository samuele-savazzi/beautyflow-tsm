// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TierListItem extends TierListItem {
  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String description;
  @override
  final String icon;
  @override
  final CategoryD08Enum category;
  @override
  final bool isActive;
  @override
  final bool isPublic;
  @override
  final bool isFeatured;
  @override
  final BillingTypeEfcEnum billingType;
  @override
  final double monthlyPrice;
  @override
  final double yearlyPrice;
  @override
  final int sortOrder;
  @override
  final DateTime createdAt;

  factory _$TierListItem([void Function(TierListItemBuilder)? updates]) =>
      (TierListItemBuilder()..update(updates))._build();

  _$TierListItem._(
      {required this.id,
      required this.name,
      required this.code,
      required this.description,
      required this.icon,
      required this.category,
      required this.isActive,
      required this.isPublic,
      required this.isFeatured,
      required this.billingType,
      required this.monthlyPrice,
      required this.yearlyPrice,
      required this.sortOrder,
      required this.createdAt})
      : super._();
  @override
  TierListItem rebuild(void Function(TierListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TierListItemBuilder toBuilder() => TierListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TierListItem &&
        id == other.id &&
        name == other.name &&
        code == other.code &&
        description == other.description &&
        icon == other.icon &&
        category == other.category &&
        isActive == other.isActive &&
        isPublic == other.isPublic &&
        isFeatured == other.isFeatured &&
        billingType == other.billingType &&
        monthlyPrice == other.monthlyPrice &&
        yearlyPrice == other.yearlyPrice &&
        sortOrder == other.sortOrder &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, isFeatured.hashCode);
    _$hash = $jc(_$hash, billingType.hashCode);
    _$hash = $jc(_$hash, monthlyPrice.hashCode);
    _$hash = $jc(_$hash, yearlyPrice.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TierListItem')
          ..add('id', id)
          ..add('name', name)
          ..add('code', code)
          ..add('description', description)
          ..add('icon', icon)
          ..add('category', category)
          ..add('isActive', isActive)
          ..add('isPublic', isPublic)
          ..add('isFeatured', isFeatured)
          ..add('billingType', billingType)
          ..add('monthlyPrice', monthlyPrice)
          ..add('yearlyPrice', yearlyPrice)
          ..add('sortOrder', sortOrder)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TierListItemBuilder
    implements Builder<TierListItem, TierListItemBuilder> {
  _$TierListItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  CategoryD08Enum? _category;
  CategoryD08Enum? get category => _$this._category;
  set category(CategoryD08Enum? category) => _$this._category = category;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  bool? _isFeatured;
  bool? get isFeatured => _$this._isFeatured;
  set isFeatured(bool? isFeatured) => _$this._isFeatured = isFeatured;

  BillingTypeEfcEnum? _billingType;
  BillingTypeEfcEnum? get billingType => _$this._billingType;
  set billingType(BillingTypeEfcEnum? billingType) =>
      _$this._billingType = billingType;

  double? _monthlyPrice;
  double? get monthlyPrice => _$this._monthlyPrice;
  set monthlyPrice(double? monthlyPrice) => _$this._monthlyPrice = monthlyPrice;

  double? _yearlyPrice;
  double? get yearlyPrice => _$this._yearlyPrice;
  set yearlyPrice(double? yearlyPrice) => _$this._yearlyPrice = yearlyPrice;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  TierListItemBuilder() {
    TierListItem._defaults(this);
  }

  TierListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _code = $v.code;
      _description = $v.description;
      _icon = $v.icon;
      _category = $v.category;
      _isActive = $v.isActive;
      _isPublic = $v.isPublic;
      _isFeatured = $v.isFeatured;
      _billingType = $v.billingType;
      _monthlyPrice = $v.monthlyPrice;
      _yearlyPrice = $v.yearlyPrice;
      _sortOrder = $v.sortOrder;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TierListItem other) {
    _$v = other as _$TierListItem;
  }

  @override
  void update(void Function(TierListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TierListItem build() => _build();

  _$TierListItem _build() {
    final _$result = _$v ??
        _$TierListItem._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TierListItem', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'TierListItem', 'name'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'TierListItem', 'code'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'TierListItem', 'description'),
          icon: BuiltValueNullFieldError.checkNotNull(
              icon, r'TierListItem', 'icon'),
          category: BuiltValueNullFieldError.checkNotNull(
              category, r'TierListItem', 'category'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'TierListItem', 'isActive'),
          isPublic: BuiltValueNullFieldError.checkNotNull(
              isPublic, r'TierListItem', 'isPublic'),
          isFeatured: BuiltValueNullFieldError.checkNotNull(
              isFeatured, r'TierListItem', 'isFeatured'),
          billingType: BuiltValueNullFieldError.checkNotNull(
              billingType, r'TierListItem', 'billingType'),
          monthlyPrice: BuiltValueNullFieldError.checkNotNull(
              monthlyPrice, r'TierListItem', 'monthlyPrice'),
          yearlyPrice: BuiltValueNullFieldError.checkNotNull(
              yearlyPrice, r'TierListItem', 'yearlyPrice'),
          sortOrder: BuiltValueNullFieldError.checkNotNull(
              sortOrder, r'TierListItem', 'sortOrder'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'TierListItem', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
