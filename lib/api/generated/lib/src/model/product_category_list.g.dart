// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductCategoryList extends ProductCategoryList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String warehouseType;
  @override
  final String warehouseTypeDisplay;
  @override
  final String colorHex;
  @override
  final String icon;
  @override
  final bool isActive;
  @override
  final int productsCount;
  @override
  final String areaName;

  factory _$ProductCategoryList(
          [void Function(ProductCategoryListBuilder)? updates]) =>
      (ProductCategoryListBuilder()..update(updates))._build();

  _$ProductCategoryList._(
      {required this.id,
      required this.name,
      this.description,
      required this.warehouseType,
      required this.warehouseTypeDisplay,
      required this.colorHex,
      required this.icon,
      required this.isActive,
      required this.productsCount,
      required this.areaName})
      : super._();
  @override
  ProductCategoryList rebuild(
          void Function(ProductCategoryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductCategoryListBuilder toBuilder() =>
      ProductCategoryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductCategoryList &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        warehouseType == other.warehouseType &&
        warehouseTypeDisplay == other.warehouseTypeDisplay &&
        colorHex == other.colorHex &&
        icon == other.icon &&
        isActive == other.isActive &&
        productsCount == other.productsCount &&
        areaName == other.areaName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, warehouseType.hashCode);
    _$hash = $jc(_$hash, warehouseTypeDisplay.hashCode);
    _$hash = $jc(_$hash, colorHex.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, productsCount.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductCategoryList')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('warehouseType', warehouseType)
          ..add('warehouseTypeDisplay', warehouseTypeDisplay)
          ..add('colorHex', colorHex)
          ..add('icon', icon)
          ..add('isActive', isActive)
          ..add('productsCount', productsCount)
          ..add('areaName', areaName))
        .toString();
  }
}

class ProductCategoryListBuilder
    implements Builder<ProductCategoryList, ProductCategoryListBuilder> {
  _$ProductCategoryList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _warehouseType;
  String? get warehouseType => _$this._warehouseType;
  set warehouseType(String? warehouseType) =>
      _$this._warehouseType = warehouseType;

  String? _warehouseTypeDisplay;
  String? get warehouseTypeDisplay => _$this._warehouseTypeDisplay;
  set warehouseTypeDisplay(String? warehouseTypeDisplay) =>
      _$this._warehouseTypeDisplay = warehouseTypeDisplay;

  String? _colorHex;
  String? get colorHex => _$this._colorHex;
  set colorHex(String? colorHex) => _$this._colorHex = colorHex;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  int? _productsCount;
  int? get productsCount => _$this._productsCount;
  set productsCount(int? productsCount) =>
      _$this._productsCount = productsCount;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  ProductCategoryListBuilder() {
    ProductCategoryList._defaults(this);
  }

  ProductCategoryListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _warehouseType = $v.warehouseType;
      _warehouseTypeDisplay = $v.warehouseTypeDisplay;
      _colorHex = $v.colorHex;
      _icon = $v.icon;
      _isActive = $v.isActive;
      _productsCount = $v.productsCount;
      _areaName = $v.areaName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductCategoryList other) {
    _$v = other as _$ProductCategoryList;
  }

  @override
  void update(void Function(ProductCategoryListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductCategoryList build() => _build();

  _$ProductCategoryList _build() {
    final _$result = _$v ??
        _$ProductCategoryList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ProductCategoryList', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ProductCategoryList', 'name'),
          description: description,
          warehouseType: BuiltValueNullFieldError.checkNotNull(
              warehouseType, r'ProductCategoryList', 'warehouseType'),
          warehouseTypeDisplay: BuiltValueNullFieldError.checkNotNull(
              warehouseTypeDisplay,
              r'ProductCategoryList',
              'warehouseTypeDisplay'),
          colorHex: BuiltValueNullFieldError.checkNotNull(
              colorHex, r'ProductCategoryList', 'colorHex'),
          icon: BuiltValueNullFieldError.checkNotNull(
              icon, r'ProductCategoryList', 'icon'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'ProductCategoryList', 'isActive'),
          productsCount: BuiltValueNullFieldError.checkNotNull(
              productsCount, r'ProductCategoryList', 'productsCount'),
          areaName: BuiltValueNullFieldError.checkNotNull(
              areaName, r'ProductCategoryList', 'areaName'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
