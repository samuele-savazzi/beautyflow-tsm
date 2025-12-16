// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementList extends MovementList {
  @override
  final int id;
  @override
  final BuiltMap<String, Map<String, dynamic>?> product;
  @override
  final String movementType;
  @override
  final String movementTypeDisplay;
  @override
  final String reason;
  @override
  final String reasonDisplay;
  @override
  final double quantity;
  @override
  final double unitCost;
  @override
  final double totalValue;
  @override
  final double stockBefore;
  @override
  final double stockAfter;
  @override
  final String status;
  @override
  final String statusDisplay;
  @override
  final DateTime movementDate;
  @override
  final String? referenceNumber;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? createdBy;
  @override
  final bool isCorrection;
  @override
  final int correctionId;
  @override
  final int? movementCorrectedId;

  factory _$MovementList([void Function(MovementListBuilder)? updates]) =>
      (MovementListBuilder()..update(updates))._build();

  _$MovementList._(
      {required this.id,
      required this.product,
      required this.movementType,
      required this.movementTypeDisplay,
      required this.reason,
      required this.reasonDisplay,
      required this.quantity,
      required this.unitCost,
      required this.totalValue,
      required this.stockBefore,
      required this.stockAfter,
      required this.status,
      required this.statusDisplay,
      required this.movementDate,
      this.referenceNumber,
      this.createdBy,
      required this.isCorrection,
      required this.correctionId,
      this.movementCorrectedId})
      : super._();
  @override
  MovementList rebuild(void Function(MovementListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementListBuilder toBuilder() => MovementListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementList &&
        id == other.id &&
        product == other.product &&
        movementType == other.movementType &&
        movementTypeDisplay == other.movementTypeDisplay &&
        reason == other.reason &&
        reasonDisplay == other.reasonDisplay &&
        quantity == other.quantity &&
        unitCost == other.unitCost &&
        totalValue == other.totalValue &&
        stockBefore == other.stockBefore &&
        stockAfter == other.stockAfter &&
        status == other.status &&
        statusDisplay == other.statusDisplay &&
        movementDate == other.movementDate &&
        referenceNumber == other.referenceNumber &&
        createdBy == other.createdBy &&
        isCorrection == other.isCorrection &&
        correctionId == other.correctionId &&
        movementCorrectedId == other.movementCorrectedId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, movementType.hashCode);
    _$hash = $jc(_$hash, movementTypeDisplay.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, reasonDisplay.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitCost.hashCode);
    _$hash = $jc(_$hash, totalValue.hashCode);
    _$hash = $jc(_$hash, stockBefore.hashCode);
    _$hash = $jc(_$hash, stockAfter.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jc(_$hash, movementDate.hashCode);
    _$hash = $jc(_$hash, referenceNumber.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, isCorrection.hashCode);
    _$hash = $jc(_$hash, correctionId.hashCode);
    _$hash = $jc(_$hash, movementCorrectedId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovementList')
          ..add('id', id)
          ..add('product', product)
          ..add('movementType', movementType)
          ..add('movementTypeDisplay', movementTypeDisplay)
          ..add('reason', reason)
          ..add('reasonDisplay', reasonDisplay)
          ..add('quantity', quantity)
          ..add('unitCost', unitCost)
          ..add('totalValue', totalValue)
          ..add('stockBefore', stockBefore)
          ..add('stockAfter', stockAfter)
          ..add('status', status)
          ..add('statusDisplay', statusDisplay)
          ..add('movementDate', movementDate)
          ..add('referenceNumber', referenceNumber)
          ..add('createdBy', createdBy)
          ..add('isCorrection', isCorrection)
          ..add('correctionId', correctionId)
          ..add('movementCorrectedId', movementCorrectedId))
        .toString();
  }
}

class MovementListBuilder
    implements Builder<MovementList, MovementListBuilder> {
  _$MovementList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  MapBuilder<String, Map<String, dynamic>?>? _product;
  MapBuilder<String, Map<String, dynamic>?> get product =>
      _$this._product ??= MapBuilder<String, Map<String, dynamic>?>();
  set product(MapBuilder<String, Map<String, dynamic>?>? product) =>
      _$this._product = product;

  String? _movementType;
  String? get movementType => _$this._movementType;
  set movementType(String? movementType) => _$this._movementType = movementType;

  String? _movementTypeDisplay;
  String? get movementTypeDisplay => _$this._movementTypeDisplay;
  set movementTypeDisplay(String? movementTypeDisplay) =>
      _$this._movementTypeDisplay = movementTypeDisplay;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _reasonDisplay;
  String? get reasonDisplay => _$this._reasonDisplay;
  set reasonDisplay(String? reasonDisplay) =>
      _$this._reasonDisplay = reasonDisplay;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  double? _unitCost;
  double? get unitCost => _$this._unitCost;
  set unitCost(double? unitCost) => _$this._unitCost = unitCost;

  double? _totalValue;
  double? get totalValue => _$this._totalValue;
  set totalValue(double? totalValue) => _$this._totalValue = totalValue;

  double? _stockBefore;
  double? get stockBefore => _$this._stockBefore;
  set stockBefore(double? stockBefore) => _$this._stockBefore = stockBefore;

  double? _stockAfter;
  double? get stockAfter => _$this._stockAfter;
  set stockAfter(double? stockAfter) => _$this._stockAfter = stockAfter;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusDisplay;
  String? get statusDisplay => _$this._statusDisplay;
  set statusDisplay(String? statusDisplay) =>
      _$this._statusDisplay = statusDisplay;

  DateTime? _movementDate;
  DateTime? get movementDate => _$this._movementDate;
  set movementDate(DateTime? movementDate) =>
      _$this._movementDate = movementDate;

  String? _referenceNumber;
  String? get referenceNumber => _$this._referenceNumber;
  set referenceNumber(String? referenceNumber) =>
      _$this._referenceNumber = referenceNumber;

  MapBuilder<String, Map<String, dynamic>?>? _createdBy;
  MapBuilder<String, Map<String, dynamic>?> get createdBy =>
      _$this._createdBy ??= MapBuilder<String, Map<String, dynamic>?>();
  set createdBy(MapBuilder<String, Map<String, dynamic>?>? createdBy) =>
      _$this._createdBy = createdBy;

  bool? _isCorrection;
  bool? get isCorrection => _$this._isCorrection;
  set isCorrection(bool? isCorrection) => _$this._isCorrection = isCorrection;

  int? _correctionId;
  int? get correctionId => _$this._correctionId;
  set correctionId(int? correctionId) => _$this._correctionId = correctionId;

  int? _movementCorrectedId;
  int? get movementCorrectedId => _$this._movementCorrectedId;
  set movementCorrectedId(int? movementCorrectedId) =>
      _$this._movementCorrectedId = movementCorrectedId;

  MovementListBuilder() {
    MovementList._defaults(this);
  }

  MovementListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _product = $v.product.toBuilder();
      _movementType = $v.movementType;
      _movementTypeDisplay = $v.movementTypeDisplay;
      _reason = $v.reason;
      _reasonDisplay = $v.reasonDisplay;
      _quantity = $v.quantity;
      _unitCost = $v.unitCost;
      _totalValue = $v.totalValue;
      _stockBefore = $v.stockBefore;
      _stockAfter = $v.stockAfter;
      _status = $v.status;
      _statusDisplay = $v.statusDisplay;
      _movementDate = $v.movementDate;
      _referenceNumber = $v.referenceNumber;
      _createdBy = $v.createdBy?.toBuilder();
      _isCorrection = $v.isCorrection;
      _correctionId = $v.correctionId;
      _movementCorrectedId = $v.movementCorrectedId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovementList other) {
    _$v = other as _$MovementList;
  }

  @override
  void update(void Function(MovementListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementList build() => _build();

  _$MovementList _build() {
    _$MovementList _$result;
    try {
      _$result = _$v ??
          _$MovementList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'MovementList', 'id'),
            product: product.build(),
            movementType: BuiltValueNullFieldError.checkNotNull(
                movementType, r'MovementList', 'movementType'),
            movementTypeDisplay: BuiltValueNullFieldError.checkNotNull(
                movementTypeDisplay, r'MovementList', 'movementTypeDisplay'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'MovementList', 'reason'),
            reasonDisplay: BuiltValueNullFieldError.checkNotNull(
                reasonDisplay, r'MovementList', 'reasonDisplay'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'MovementList', 'quantity'),
            unitCost: BuiltValueNullFieldError.checkNotNull(
                unitCost, r'MovementList', 'unitCost'),
            totalValue: BuiltValueNullFieldError.checkNotNull(
                totalValue, r'MovementList', 'totalValue'),
            stockBefore: BuiltValueNullFieldError.checkNotNull(
                stockBefore, r'MovementList', 'stockBefore'),
            stockAfter: BuiltValueNullFieldError.checkNotNull(
                stockAfter, r'MovementList', 'stockAfter'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'MovementList', 'status'),
            statusDisplay: BuiltValueNullFieldError.checkNotNull(
                statusDisplay, r'MovementList', 'statusDisplay'),
            movementDate: BuiltValueNullFieldError.checkNotNull(
                movementDate, r'MovementList', 'movementDate'),
            referenceNumber: referenceNumber,
            createdBy: _createdBy?.build(),
            isCorrection: BuiltValueNullFieldError.checkNotNull(
                isCorrection, r'MovementList', 'isCorrection'),
            correctionId: BuiltValueNullFieldError.checkNotNull(
                correctionId, r'MovementList', 'correctionId'),
            movementCorrectedId: movementCorrectedId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        product.build();

        _$failedField = 'createdBy';
        _createdBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MovementList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
