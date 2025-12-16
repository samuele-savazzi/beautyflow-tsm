// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MovementCreate extends MovementCreate {
  @override
  final int productId;
  @override
  final MovementCreateMovementTypeEnum movementType;
  @override
  final MovementCreateReasonEnum reason;
  @override
  final double quantity;
  @override
  final MovementUnitEnum? movementUnit;
  @override
  final double? unitCost;
  @override
  final String? referenceNumber;
  @override
  final int? supplierId;
  @override
  final String? supplierName;
  @override
  final String? notes;

  factory _$MovementCreate([void Function(MovementCreateBuilder)? updates]) =>
      (MovementCreateBuilder()..update(updates))._build();

  _$MovementCreate._(
      {required this.productId,
      required this.movementType,
      required this.reason,
      required this.quantity,
      this.movementUnit,
      this.unitCost,
      this.referenceNumber,
      this.supplierId,
      this.supplierName,
      this.notes})
      : super._();
  @override
  MovementCreate rebuild(void Function(MovementCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovementCreateBuilder toBuilder() => MovementCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovementCreate &&
        productId == other.productId &&
        movementType == other.movementType &&
        reason == other.reason &&
        quantity == other.quantity &&
        movementUnit == other.movementUnit &&
        unitCost == other.unitCost &&
        referenceNumber == other.referenceNumber &&
        supplierId == other.supplierId &&
        supplierName == other.supplierName &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, movementType.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, movementUnit.hashCode);
    _$hash = $jc(_$hash, unitCost.hashCode);
    _$hash = $jc(_$hash, referenceNumber.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, supplierName.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovementCreate')
          ..add('productId', productId)
          ..add('movementType', movementType)
          ..add('reason', reason)
          ..add('quantity', quantity)
          ..add('movementUnit', movementUnit)
          ..add('unitCost', unitCost)
          ..add('referenceNumber', referenceNumber)
          ..add('supplierId', supplierId)
          ..add('supplierName', supplierName)
          ..add('notes', notes))
        .toString();
  }
}

class MovementCreateBuilder
    implements Builder<MovementCreate, MovementCreateBuilder> {
  _$MovementCreate? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  MovementCreateMovementTypeEnum? _movementType;
  MovementCreateMovementTypeEnum? get movementType => _$this._movementType;
  set movementType(MovementCreateMovementTypeEnum? movementType) =>
      _$this._movementType = movementType;

  MovementCreateReasonEnum? _reason;
  MovementCreateReasonEnum? get reason => _$this._reason;
  set reason(MovementCreateReasonEnum? reason) => _$this._reason = reason;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  MovementUnitEnum? _movementUnit;
  MovementUnitEnum? get movementUnit => _$this._movementUnit;
  set movementUnit(MovementUnitEnum? movementUnit) =>
      _$this._movementUnit = movementUnit;

  double? _unitCost;
  double? get unitCost => _$this._unitCost;
  set unitCost(double? unitCost) => _$this._unitCost = unitCost;

  String? _referenceNumber;
  String? get referenceNumber => _$this._referenceNumber;
  set referenceNumber(String? referenceNumber) =>
      _$this._referenceNumber = referenceNumber;

  int? _supplierId;
  int? get supplierId => _$this._supplierId;
  set supplierId(int? supplierId) => _$this._supplierId = supplierId;

  String? _supplierName;
  String? get supplierName => _$this._supplierName;
  set supplierName(String? supplierName) => _$this._supplierName = supplierName;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  MovementCreateBuilder() {
    MovementCreate._defaults(this);
  }

  MovementCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _movementType = $v.movementType;
      _reason = $v.reason;
      _quantity = $v.quantity;
      _movementUnit = $v.movementUnit;
      _unitCost = $v.unitCost;
      _referenceNumber = $v.referenceNumber;
      _supplierId = $v.supplierId;
      _supplierName = $v.supplierName;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovementCreate other) {
    _$v = other as _$MovementCreate;
  }

  @override
  void update(void Function(MovementCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovementCreate build() => _build();

  _$MovementCreate _build() {
    final _$result = _$v ??
        _$MovementCreate._(
          productId: BuiltValueNullFieldError.checkNotNull(
              productId, r'MovementCreate', 'productId'),
          movementType: BuiltValueNullFieldError.checkNotNull(
              movementType, r'MovementCreate', 'movementType'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'MovementCreate', 'reason'),
          quantity: BuiltValueNullFieldError.checkNotNull(
              quantity, r'MovementCreate', 'quantity'),
          movementUnit: movementUnit,
          unitCost: unitCost,
          referenceNumber: referenceNumber,
          supplierId: supplierId,
          supplierName: supplierName,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
