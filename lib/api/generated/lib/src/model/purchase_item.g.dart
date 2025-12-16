// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PurchaseItem extends PurchaseItem {
  @override
  final int movementId;
  @override
  final DateTime date;
  @override
  final ProductInfo product;
  @override
  final double quantity;
  @override
  final String unitOfMeasure;
  @override
  final double salePricePerUnit;
  @override
  final double subtotal;
  @override
  final double discount;
  @override
  final double total;
  @override
  final OperatorInfo soldBy;
  @override
  final int? bookingId;
  @override
  final String? bookingName;
  @override
  final bool isBookingPurchase;

  factory _$PurchaseItem([void Function(PurchaseItemBuilder)? updates]) =>
      (PurchaseItemBuilder()..update(updates))._build();

  _$PurchaseItem._(
      {required this.movementId,
      required this.date,
      required this.product,
      required this.quantity,
      required this.unitOfMeasure,
      required this.salePricePerUnit,
      required this.subtotal,
      required this.discount,
      required this.total,
      required this.soldBy,
      this.bookingId,
      this.bookingName,
      required this.isBookingPurchase})
      : super._();
  @override
  PurchaseItem rebuild(void Function(PurchaseItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchaseItemBuilder toBuilder() => PurchaseItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseItem &&
        movementId == other.movementId &&
        date == other.date &&
        product == other.product &&
        quantity == other.quantity &&
        unitOfMeasure == other.unitOfMeasure &&
        salePricePerUnit == other.salePricePerUnit &&
        subtotal == other.subtotal &&
        discount == other.discount &&
        total == other.total &&
        soldBy == other.soldBy &&
        bookingId == other.bookingId &&
        bookingName == other.bookingName &&
        isBookingPurchase == other.isBookingPurchase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, movementId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitOfMeasure.hashCode);
    _$hash = $jc(_$hash, salePricePerUnit.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, soldBy.hashCode);
    _$hash = $jc(_$hash, bookingId.hashCode);
    _$hash = $jc(_$hash, bookingName.hashCode);
    _$hash = $jc(_$hash, isBookingPurchase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PurchaseItem')
          ..add('movementId', movementId)
          ..add('date', date)
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('unitOfMeasure', unitOfMeasure)
          ..add('salePricePerUnit', salePricePerUnit)
          ..add('subtotal', subtotal)
          ..add('discount', discount)
          ..add('total', total)
          ..add('soldBy', soldBy)
          ..add('bookingId', bookingId)
          ..add('bookingName', bookingName)
          ..add('isBookingPurchase', isBookingPurchase))
        .toString();
  }
}

class PurchaseItemBuilder
    implements Builder<PurchaseItem, PurchaseItemBuilder> {
  _$PurchaseItem? _$v;

  int? _movementId;
  int? get movementId => _$this._movementId;
  set movementId(int? movementId) => _$this._movementId = movementId;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ProductInfoBuilder? _product;
  ProductInfoBuilder get product => _$this._product ??= ProductInfoBuilder();
  set product(ProductInfoBuilder? product) => _$this._product = product;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  String? _unitOfMeasure;
  String? get unitOfMeasure => _$this._unitOfMeasure;
  set unitOfMeasure(String? unitOfMeasure) =>
      _$this._unitOfMeasure = unitOfMeasure;

  double? _salePricePerUnit;
  double? get salePricePerUnit => _$this._salePricePerUnit;
  set salePricePerUnit(double? salePricePerUnit) =>
      _$this._salePricePerUnit = salePricePerUnit;

  double? _subtotal;
  double? get subtotal => _$this._subtotal;
  set subtotal(double? subtotal) => _$this._subtotal = subtotal;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  OperatorInfoBuilder? _soldBy;
  OperatorInfoBuilder get soldBy => _$this._soldBy ??= OperatorInfoBuilder();
  set soldBy(OperatorInfoBuilder? soldBy) => _$this._soldBy = soldBy;

  int? _bookingId;
  int? get bookingId => _$this._bookingId;
  set bookingId(int? bookingId) => _$this._bookingId = bookingId;

  String? _bookingName;
  String? get bookingName => _$this._bookingName;
  set bookingName(String? bookingName) => _$this._bookingName = bookingName;

  bool? _isBookingPurchase;
  bool? get isBookingPurchase => _$this._isBookingPurchase;
  set isBookingPurchase(bool? isBookingPurchase) =>
      _$this._isBookingPurchase = isBookingPurchase;

  PurchaseItemBuilder() {
    PurchaseItem._defaults(this);
  }

  PurchaseItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movementId = $v.movementId;
      _date = $v.date;
      _product = $v.product.toBuilder();
      _quantity = $v.quantity;
      _unitOfMeasure = $v.unitOfMeasure;
      _salePricePerUnit = $v.salePricePerUnit;
      _subtotal = $v.subtotal;
      _discount = $v.discount;
      _total = $v.total;
      _soldBy = $v.soldBy.toBuilder();
      _bookingId = $v.bookingId;
      _bookingName = $v.bookingName;
      _isBookingPurchase = $v.isBookingPurchase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchaseItem other) {
    _$v = other as _$PurchaseItem;
  }

  @override
  void update(void Function(PurchaseItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchaseItem build() => _build();

  _$PurchaseItem _build() {
    _$PurchaseItem _$result;
    try {
      _$result = _$v ??
          _$PurchaseItem._(
            movementId: BuiltValueNullFieldError.checkNotNull(
                movementId, r'PurchaseItem', 'movementId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'PurchaseItem', 'date'),
            product: product.build(),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'PurchaseItem', 'quantity'),
            unitOfMeasure: BuiltValueNullFieldError.checkNotNull(
                unitOfMeasure, r'PurchaseItem', 'unitOfMeasure'),
            salePricePerUnit: BuiltValueNullFieldError.checkNotNull(
                salePricePerUnit, r'PurchaseItem', 'salePricePerUnit'),
            subtotal: BuiltValueNullFieldError.checkNotNull(
                subtotal, r'PurchaseItem', 'subtotal'),
            discount: BuiltValueNullFieldError.checkNotNull(
                discount, r'PurchaseItem', 'discount'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'PurchaseItem', 'total'),
            soldBy: soldBy.build(),
            bookingId: bookingId,
            bookingName: bookingName,
            isBookingPurchase: BuiltValueNullFieldError.checkNotNull(
                isBookingPurchase, r'PurchaseItem', 'isBookingPurchase'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        product.build();

        _$failedField = 'soldBy';
        soldBy.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PurchaseItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
