// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductUpdate extends ProductUpdate {
  @override
  final String? name;
  @override
  final String? brand;
  @override
  final String? sku;
  @override
  final String? barcode;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? promotionalVideo;
  @override
  final UnitOfMeasureEnum? unitOfMeasure;
  @override
  final double? minimumStock;
  @override
  final double? maximumStock;
  @override
  final double? costPrice;
  @override
  final double? sellingPrice;
  @override
  final double? bulkPurchaseCost;
  @override
  final double? bulkPurchaseQuantity;
  @override
  final int? expirationMonths;
  @override
  final bool? isProfessionalUse;
  @override
  final bool? containsChemicals;
  @override
  final String? allergens;
  @override
  final int? primarySupplierId;
  @override
  final BuiltList<int>? alternativeSupplierIds;
  @override
  final String? supplierCode;
  @override
  final double? reorderPoint;

  factory _$ProductUpdate([void Function(ProductUpdateBuilder)? updates]) =>
      (ProductUpdateBuilder()..update(updates))._build();

  _$ProductUpdate._(
      {this.name,
      this.brand,
      this.sku,
      this.barcode,
      this.description,
      this.image,
      this.promotionalVideo,
      this.unitOfMeasure,
      this.minimumStock,
      this.maximumStock,
      this.costPrice,
      this.sellingPrice,
      this.bulkPurchaseCost,
      this.bulkPurchaseQuantity,
      this.expirationMonths,
      this.isProfessionalUse,
      this.containsChemicals,
      this.allergens,
      this.primarySupplierId,
      this.alternativeSupplierIds,
      this.supplierCode,
      this.reorderPoint})
      : super._();
  @override
  ProductUpdate rebuild(void Function(ProductUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductUpdateBuilder toBuilder() => ProductUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductUpdate &&
        name == other.name &&
        brand == other.brand &&
        sku == other.sku &&
        barcode == other.barcode &&
        description == other.description &&
        image == other.image &&
        promotionalVideo == other.promotionalVideo &&
        unitOfMeasure == other.unitOfMeasure &&
        minimumStock == other.minimumStock &&
        maximumStock == other.maximumStock &&
        costPrice == other.costPrice &&
        sellingPrice == other.sellingPrice &&
        bulkPurchaseCost == other.bulkPurchaseCost &&
        bulkPurchaseQuantity == other.bulkPurchaseQuantity &&
        expirationMonths == other.expirationMonths &&
        isProfessionalUse == other.isProfessionalUse &&
        containsChemicals == other.containsChemicals &&
        allergens == other.allergens &&
        primarySupplierId == other.primarySupplierId &&
        alternativeSupplierIds == other.alternativeSupplierIds &&
        supplierCode == other.supplierCode &&
        reorderPoint == other.reorderPoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, promotionalVideo.hashCode);
    _$hash = $jc(_$hash, unitOfMeasure.hashCode);
    _$hash = $jc(_$hash, minimumStock.hashCode);
    _$hash = $jc(_$hash, maximumStock.hashCode);
    _$hash = $jc(_$hash, costPrice.hashCode);
    _$hash = $jc(_$hash, sellingPrice.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseCost.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseQuantity.hashCode);
    _$hash = $jc(_$hash, expirationMonths.hashCode);
    _$hash = $jc(_$hash, isProfessionalUse.hashCode);
    _$hash = $jc(_$hash, containsChemicals.hashCode);
    _$hash = $jc(_$hash, allergens.hashCode);
    _$hash = $jc(_$hash, primarySupplierId.hashCode);
    _$hash = $jc(_$hash, alternativeSupplierIds.hashCode);
    _$hash = $jc(_$hash, supplierCode.hashCode);
    _$hash = $jc(_$hash, reorderPoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductUpdate')
          ..add('name', name)
          ..add('brand', brand)
          ..add('sku', sku)
          ..add('barcode', barcode)
          ..add('description', description)
          ..add('image', image)
          ..add('promotionalVideo', promotionalVideo)
          ..add('unitOfMeasure', unitOfMeasure)
          ..add('minimumStock', minimumStock)
          ..add('maximumStock', maximumStock)
          ..add('costPrice', costPrice)
          ..add('sellingPrice', sellingPrice)
          ..add('bulkPurchaseCost', bulkPurchaseCost)
          ..add('bulkPurchaseQuantity', bulkPurchaseQuantity)
          ..add('expirationMonths', expirationMonths)
          ..add('isProfessionalUse', isProfessionalUse)
          ..add('containsChemicals', containsChemicals)
          ..add('allergens', allergens)
          ..add('primarySupplierId', primarySupplierId)
          ..add('alternativeSupplierIds', alternativeSupplierIds)
          ..add('supplierCode', supplierCode)
          ..add('reorderPoint', reorderPoint))
        .toString();
  }
}

class ProductUpdateBuilder
    implements Builder<ProductUpdate, ProductUpdateBuilder> {
  _$ProductUpdate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _barcode;
  String? get barcode => _$this._barcode;
  set barcode(String? barcode) => _$this._barcode = barcode;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _promotionalVideo;
  String? get promotionalVideo => _$this._promotionalVideo;
  set promotionalVideo(String? promotionalVideo) =>
      _$this._promotionalVideo = promotionalVideo;

  UnitOfMeasureEnum? _unitOfMeasure;
  UnitOfMeasureEnum? get unitOfMeasure => _$this._unitOfMeasure;
  set unitOfMeasure(UnitOfMeasureEnum? unitOfMeasure) =>
      _$this._unitOfMeasure = unitOfMeasure;

  double? _minimumStock;
  double? get minimumStock => _$this._minimumStock;
  set minimumStock(double? minimumStock) => _$this._minimumStock = minimumStock;

  double? _maximumStock;
  double? get maximumStock => _$this._maximumStock;
  set maximumStock(double? maximumStock) => _$this._maximumStock = maximumStock;

  double? _costPrice;
  double? get costPrice => _$this._costPrice;
  set costPrice(double? costPrice) => _$this._costPrice = costPrice;

  double? _sellingPrice;
  double? get sellingPrice => _$this._sellingPrice;
  set sellingPrice(double? sellingPrice) => _$this._sellingPrice = sellingPrice;

  double? _bulkPurchaseCost;
  double? get bulkPurchaseCost => _$this._bulkPurchaseCost;
  set bulkPurchaseCost(double? bulkPurchaseCost) =>
      _$this._bulkPurchaseCost = bulkPurchaseCost;

  double? _bulkPurchaseQuantity;
  double? get bulkPurchaseQuantity => _$this._bulkPurchaseQuantity;
  set bulkPurchaseQuantity(double? bulkPurchaseQuantity) =>
      _$this._bulkPurchaseQuantity = bulkPurchaseQuantity;

  int? _expirationMonths;
  int? get expirationMonths => _$this._expirationMonths;
  set expirationMonths(int? expirationMonths) =>
      _$this._expirationMonths = expirationMonths;

  bool? _isProfessionalUse;
  bool? get isProfessionalUse => _$this._isProfessionalUse;
  set isProfessionalUse(bool? isProfessionalUse) =>
      _$this._isProfessionalUse = isProfessionalUse;

  bool? _containsChemicals;
  bool? get containsChemicals => _$this._containsChemicals;
  set containsChemicals(bool? containsChemicals) =>
      _$this._containsChemicals = containsChemicals;

  String? _allergens;
  String? get allergens => _$this._allergens;
  set allergens(String? allergens) => _$this._allergens = allergens;

  int? _primarySupplierId;
  int? get primarySupplierId => _$this._primarySupplierId;
  set primarySupplierId(int? primarySupplierId) =>
      _$this._primarySupplierId = primarySupplierId;

  ListBuilder<int>? _alternativeSupplierIds;
  ListBuilder<int> get alternativeSupplierIds =>
      _$this._alternativeSupplierIds ??= ListBuilder<int>();
  set alternativeSupplierIds(ListBuilder<int>? alternativeSupplierIds) =>
      _$this._alternativeSupplierIds = alternativeSupplierIds;

  String? _supplierCode;
  String? get supplierCode => _$this._supplierCode;
  set supplierCode(String? supplierCode) => _$this._supplierCode = supplierCode;

  double? _reorderPoint;
  double? get reorderPoint => _$this._reorderPoint;
  set reorderPoint(double? reorderPoint) => _$this._reorderPoint = reorderPoint;

  ProductUpdateBuilder() {
    ProductUpdate._defaults(this);
  }

  ProductUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _brand = $v.brand;
      _sku = $v.sku;
      _barcode = $v.barcode;
      _description = $v.description;
      _image = $v.image;
      _promotionalVideo = $v.promotionalVideo;
      _unitOfMeasure = $v.unitOfMeasure;
      _minimumStock = $v.minimumStock;
      _maximumStock = $v.maximumStock;
      _costPrice = $v.costPrice;
      _sellingPrice = $v.sellingPrice;
      _bulkPurchaseCost = $v.bulkPurchaseCost;
      _bulkPurchaseQuantity = $v.bulkPurchaseQuantity;
      _expirationMonths = $v.expirationMonths;
      _isProfessionalUse = $v.isProfessionalUse;
      _containsChemicals = $v.containsChemicals;
      _allergens = $v.allergens;
      _primarySupplierId = $v.primarySupplierId;
      _alternativeSupplierIds = $v.alternativeSupplierIds?.toBuilder();
      _supplierCode = $v.supplierCode;
      _reorderPoint = $v.reorderPoint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductUpdate other) {
    _$v = other as _$ProductUpdate;
  }

  @override
  void update(void Function(ProductUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductUpdate build() => _build();

  _$ProductUpdate _build() {
    _$ProductUpdate _$result;
    try {
      _$result = _$v ??
          _$ProductUpdate._(
            name: name,
            brand: brand,
            sku: sku,
            barcode: barcode,
            description: description,
            image: image,
            promotionalVideo: promotionalVideo,
            unitOfMeasure: unitOfMeasure,
            minimumStock: minimumStock,
            maximumStock: maximumStock,
            costPrice: costPrice,
            sellingPrice: sellingPrice,
            bulkPurchaseCost: bulkPurchaseCost,
            bulkPurchaseQuantity: bulkPurchaseQuantity,
            expirationMonths: expirationMonths,
            isProfessionalUse: isProfessionalUse,
            containsChemicals: containsChemicals,
            allergens: allergens,
            primarySupplierId: primarySupplierId,
            alternativeSupplierIds: _alternativeSupplierIds?.build(),
            supplierCode: supplierCode,
            reorderPoint: reorderPoint,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alternativeSupplierIds';
        _alternativeSupplierIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
