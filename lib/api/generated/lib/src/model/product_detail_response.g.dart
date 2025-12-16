// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductDetailResponse extends ProductDetailResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String sku;
  @override
  final String barcode;
  @override
  final String description;
  @override
  final BuiltMap<String, Map<String, dynamic>?> category;
  @override
  final double currentStock;
  @override
  final double minimumStock;
  @override
  final double? maximumStock;
  @override
  final String unitOfMeasure;
  @override
  final double costPrice;
  @override
  final double effectiveCostPrice;
  @override
  final double? bulkPurchaseCost;
  @override
  final double? bulkPurchaseQuantity;
  @override
  final double? sellingPrice;
  @override
  final int? expirationMonths;
  @override
  final bool isProfessionalUse;
  @override
  final bool containsChemicals;
  @override
  final String allergens;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? primarySupplier;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> alternativeSuppliers;
  @override
  final String supplierCode;
  @override
  final double? reorderPoint;
  @override
  final String stockStatus;
  @override
  final double stockValue;
  @override
  final bool isActive;
  @override
  final String? imageUrl;
  @override
  final String? videoUrl;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  factory _$ProductDetailResponse(
          [void Function(ProductDetailResponseBuilder)? updates]) =>
      (ProductDetailResponseBuilder()..update(updates))._build();

  _$ProductDetailResponse._(
      {required this.id,
      required this.name,
      required this.brand,
      required this.sku,
      required this.barcode,
      required this.description,
      required this.category,
      required this.currentStock,
      required this.minimumStock,
      this.maximumStock,
      required this.unitOfMeasure,
      required this.costPrice,
      required this.effectiveCostPrice,
      this.bulkPurchaseCost,
      this.bulkPurchaseQuantity,
      this.sellingPrice,
      this.expirationMonths,
      required this.isProfessionalUse,
      required this.containsChemicals,
      required this.allergens,
      this.primarySupplier,
      required this.alternativeSuppliers,
      required this.supplierCode,
      this.reorderPoint,
      required this.stockStatus,
      required this.stockValue,
      required this.isActive,
      this.imageUrl,
      this.videoUrl,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  ProductDetailResponse rebuild(
          void Function(ProductDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailResponseBuilder toBuilder() =>
      ProductDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailResponse &&
        id == other.id &&
        name == other.name &&
        brand == other.brand &&
        sku == other.sku &&
        barcode == other.barcode &&
        description == other.description &&
        category == other.category &&
        currentStock == other.currentStock &&
        minimumStock == other.minimumStock &&
        maximumStock == other.maximumStock &&
        unitOfMeasure == other.unitOfMeasure &&
        costPrice == other.costPrice &&
        effectiveCostPrice == other.effectiveCostPrice &&
        bulkPurchaseCost == other.bulkPurchaseCost &&
        bulkPurchaseQuantity == other.bulkPurchaseQuantity &&
        sellingPrice == other.sellingPrice &&
        expirationMonths == other.expirationMonths &&
        isProfessionalUse == other.isProfessionalUse &&
        containsChemicals == other.containsChemicals &&
        allergens == other.allergens &&
        primarySupplier == other.primarySupplier &&
        alternativeSuppliers == other.alternativeSuppliers &&
        supplierCode == other.supplierCode &&
        reorderPoint == other.reorderPoint &&
        stockStatus == other.stockStatus &&
        stockValue == other.stockValue &&
        isActive == other.isActive &&
        imageUrl == other.imageUrl &&
        videoUrl == other.videoUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, currentStock.hashCode);
    _$hash = $jc(_$hash, minimumStock.hashCode);
    _$hash = $jc(_$hash, maximumStock.hashCode);
    _$hash = $jc(_$hash, unitOfMeasure.hashCode);
    _$hash = $jc(_$hash, costPrice.hashCode);
    _$hash = $jc(_$hash, effectiveCostPrice.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseCost.hashCode);
    _$hash = $jc(_$hash, bulkPurchaseQuantity.hashCode);
    _$hash = $jc(_$hash, sellingPrice.hashCode);
    _$hash = $jc(_$hash, expirationMonths.hashCode);
    _$hash = $jc(_$hash, isProfessionalUse.hashCode);
    _$hash = $jc(_$hash, containsChemicals.hashCode);
    _$hash = $jc(_$hash, allergens.hashCode);
    _$hash = $jc(_$hash, primarySupplier.hashCode);
    _$hash = $jc(_$hash, alternativeSuppliers.hashCode);
    _$hash = $jc(_$hash, supplierCode.hashCode);
    _$hash = $jc(_$hash, reorderPoint.hashCode);
    _$hash = $jc(_$hash, stockStatus.hashCode);
    _$hash = $jc(_$hash, stockValue.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, videoUrl.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductDetailResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('brand', brand)
          ..add('sku', sku)
          ..add('barcode', barcode)
          ..add('description', description)
          ..add('category', category)
          ..add('currentStock', currentStock)
          ..add('minimumStock', minimumStock)
          ..add('maximumStock', maximumStock)
          ..add('unitOfMeasure', unitOfMeasure)
          ..add('costPrice', costPrice)
          ..add('effectiveCostPrice', effectiveCostPrice)
          ..add('bulkPurchaseCost', bulkPurchaseCost)
          ..add('bulkPurchaseQuantity', bulkPurchaseQuantity)
          ..add('sellingPrice', sellingPrice)
          ..add('expirationMonths', expirationMonths)
          ..add('isProfessionalUse', isProfessionalUse)
          ..add('containsChemicals', containsChemicals)
          ..add('allergens', allergens)
          ..add('primarySupplier', primarySupplier)
          ..add('alternativeSuppliers', alternativeSuppliers)
          ..add('supplierCode', supplierCode)
          ..add('reorderPoint', reorderPoint)
          ..add('stockStatus', stockStatus)
          ..add('stockValue', stockValue)
          ..add('isActive', isActive)
          ..add('imageUrl', imageUrl)
          ..add('videoUrl', videoUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProductDetailResponseBuilder
    implements Builder<ProductDetailResponse, ProductDetailResponseBuilder> {
  _$ProductDetailResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  MapBuilder<String, Map<String, dynamic>?>? _category;
  MapBuilder<String, Map<String, dynamic>?> get category =>
      _$this._category ??= MapBuilder<String, Map<String, dynamic>?>();
  set category(MapBuilder<String, Map<String, dynamic>?>? category) =>
      _$this._category = category;

  double? _currentStock;
  double? get currentStock => _$this._currentStock;
  set currentStock(double? currentStock) => _$this._currentStock = currentStock;

  double? _minimumStock;
  double? get minimumStock => _$this._minimumStock;
  set minimumStock(double? minimumStock) => _$this._minimumStock = minimumStock;

  double? _maximumStock;
  double? get maximumStock => _$this._maximumStock;
  set maximumStock(double? maximumStock) => _$this._maximumStock = maximumStock;

  String? _unitOfMeasure;
  String? get unitOfMeasure => _$this._unitOfMeasure;
  set unitOfMeasure(String? unitOfMeasure) =>
      _$this._unitOfMeasure = unitOfMeasure;

  double? _costPrice;
  double? get costPrice => _$this._costPrice;
  set costPrice(double? costPrice) => _$this._costPrice = costPrice;

  double? _effectiveCostPrice;
  double? get effectiveCostPrice => _$this._effectiveCostPrice;
  set effectiveCostPrice(double? effectiveCostPrice) =>
      _$this._effectiveCostPrice = effectiveCostPrice;

  double? _bulkPurchaseCost;
  double? get bulkPurchaseCost => _$this._bulkPurchaseCost;
  set bulkPurchaseCost(double? bulkPurchaseCost) =>
      _$this._bulkPurchaseCost = bulkPurchaseCost;

  double? _bulkPurchaseQuantity;
  double? get bulkPurchaseQuantity => _$this._bulkPurchaseQuantity;
  set bulkPurchaseQuantity(double? bulkPurchaseQuantity) =>
      _$this._bulkPurchaseQuantity = bulkPurchaseQuantity;

  double? _sellingPrice;
  double? get sellingPrice => _$this._sellingPrice;
  set sellingPrice(double? sellingPrice) => _$this._sellingPrice = sellingPrice;

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

  MapBuilder<String, Map<String, dynamic>?>? _primarySupplier;
  MapBuilder<String, Map<String, dynamic>?> get primarySupplier =>
      _$this._primarySupplier ??= MapBuilder<String, Map<String, dynamic>?>();
  set primarySupplier(
          MapBuilder<String, Map<String, dynamic>?>? primarySupplier) =>
      _$this._primarySupplier = primarySupplier;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _alternativeSuppliers;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>
      get alternativeSuppliers => _$this._alternativeSuppliers ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set alternativeSuppliers(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              alternativeSuppliers) =>
      _$this._alternativeSuppliers = alternativeSuppliers;

  String? _supplierCode;
  String? get supplierCode => _$this._supplierCode;
  set supplierCode(String? supplierCode) => _$this._supplierCode = supplierCode;

  double? _reorderPoint;
  double? get reorderPoint => _$this._reorderPoint;
  set reorderPoint(double? reorderPoint) => _$this._reorderPoint = reorderPoint;

  String? _stockStatus;
  String? get stockStatus => _$this._stockStatus;
  set stockStatus(String? stockStatus) => _$this._stockStatus = stockStatus;

  double? _stockValue;
  double? get stockValue => _$this._stockValue;
  set stockValue(double? stockValue) => _$this._stockValue = stockValue;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  ProductDetailResponseBuilder() {
    ProductDetailResponse._defaults(this);
  }

  ProductDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _brand = $v.brand;
      _sku = $v.sku;
      _barcode = $v.barcode;
      _description = $v.description;
      _category = $v.category.toBuilder();
      _currentStock = $v.currentStock;
      _minimumStock = $v.minimumStock;
      _maximumStock = $v.maximumStock;
      _unitOfMeasure = $v.unitOfMeasure;
      _costPrice = $v.costPrice;
      _effectiveCostPrice = $v.effectiveCostPrice;
      _bulkPurchaseCost = $v.bulkPurchaseCost;
      _bulkPurchaseQuantity = $v.bulkPurchaseQuantity;
      _sellingPrice = $v.sellingPrice;
      _expirationMonths = $v.expirationMonths;
      _isProfessionalUse = $v.isProfessionalUse;
      _containsChemicals = $v.containsChemicals;
      _allergens = $v.allergens;
      _primarySupplier = $v.primarySupplier?.toBuilder();
      _alternativeSuppliers = $v.alternativeSuppliers.toBuilder();
      _supplierCode = $v.supplierCode;
      _reorderPoint = $v.reorderPoint;
      _stockStatus = $v.stockStatus;
      _stockValue = $v.stockValue;
      _isActive = $v.isActive;
      _imageUrl = $v.imageUrl;
      _videoUrl = $v.videoUrl;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailResponse other) {
    _$v = other as _$ProductDetailResponse;
  }

  @override
  void update(void Function(ProductDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductDetailResponse build() => _build();

  _$ProductDetailResponse _build() {
    _$ProductDetailResponse _$result;
    try {
      _$result = _$v ??
          _$ProductDetailResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ProductDetailResponse', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ProductDetailResponse', 'name'),
            brand: BuiltValueNullFieldError.checkNotNull(
                brand, r'ProductDetailResponse', 'brand'),
            sku: BuiltValueNullFieldError.checkNotNull(
                sku, r'ProductDetailResponse', 'sku'),
            barcode: BuiltValueNullFieldError.checkNotNull(
                barcode, r'ProductDetailResponse', 'barcode'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ProductDetailResponse', 'description'),
            category: category.build(),
            currentStock: BuiltValueNullFieldError.checkNotNull(
                currentStock, r'ProductDetailResponse', 'currentStock'),
            minimumStock: BuiltValueNullFieldError.checkNotNull(
                minimumStock, r'ProductDetailResponse', 'minimumStock'),
            maximumStock: maximumStock,
            unitOfMeasure: BuiltValueNullFieldError.checkNotNull(
                unitOfMeasure, r'ProductDetailResponse', 'unitOfMeasure'),
            costPrice: BuiltValueNullFieldError.checkNotNull(
                costPrice, r'ProductDetailResponse', 'costPrice'),
            effectiveCostPrice: BuiltValueNullFieldError.checkNotNull(
                effectiveCostPrice,
                r'ProductDetailResponse',
                'effectiveCostPrice'),
            bulkPurchaseCost: bulkPurchaseCost,
            bulkPurchaseQuantity: bulkPurchaseQuantity,
            sellingPrice: sellingPrice,
            expirationMonths: expirationMonths,
            isProfessionalUse: BuiltValueNullFieldError.checkNotNull(
                isProfessionalUse,
                r'ProductDetailResponse',
                'isProfessionalUse'),
            containsChemicals: BuiltValueNullFieldError.checkNotNull(
                containsChemicals,
                r'ProductDetailResponse',
                'containsChemicals'),
            allergens: BuiltValueNullFieldError.checkNotNull(
                allergens, r'ProductDetailResponse', 'allergens'),
            primarySupplier: _primarySupplier?.build(),
            alternativeSuppliers: alternativeSuppliers.build(),
            supplierCode: BuiltValueNullFieldError.checkNotNull(
                supplierCode, r'ProductDetailResponse', 'supplierCode'),
            reorderPoint: reorderPoint,
            stockStatus: BuiltValueNullFieldError.checkNotNull(
                stockStatus, r'ProductDetailResponse', 'stockStatus'),
            stockValue: BuiltValueNullFieldError.checkNotNull(
                stockValue, r'ProductDetailResponse', 'stockValue'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'ProductDetailResponse', 'isActive'),
            imageUrl: imageUrl,
            videoUrl: videoUrl,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'ProductDetailResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'ProductDetailResponse', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        category.build();

        _$failedField = 'primarySupplier';
        _primarySupplier?.build();
        _$failedField = 'alternativeSuppliers';
        alternativeSuppliers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProductDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
