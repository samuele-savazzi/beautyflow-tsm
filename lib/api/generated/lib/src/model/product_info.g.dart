// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductInfo extends ProductInfo {
  @override
  final int id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String? imageUrl;

  factory _$ProductInfo([void Function(ProductInfoBuilder)? updates]) =>
      (ProductInfoBuilder()..update(updates))._build();

  _$ProductInfo._(
      {required this.id,
      required this.name,
      required this.brand,
      this.imageUrl})
      : super._();
  @override
  ProductInfo rebuild(void Function(ProductInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductInfoBuilder toBuilder() => ProductInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductInfo &&
        id == other.id &&
        name == other.name &&
        brand == other.brand &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('brand', brand)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ProductInfoBuilder implements Builder<ProductInfo, ProductInfoBuilder> {
  _$ProductInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ProductInfoBuilder() {
    ProductInfo._defaults(this);
  }

  ProductInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _brand = $v.brand;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductInfo other) {
    _$v = other as _$ProductInfo;
  }

  @override
  void update(void Function(ProductInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductInfo build() => _build();

  _$ProductInfo _build() {
    final _$result = _$v ??
        _$ProductInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ProductInfo', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ProductInfo', 'name'),
          brand: BuiltValueNullFieldError.checkNotNull(
              brand, r'ProductInfo', 'brand'),
          imageUrl: imageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
