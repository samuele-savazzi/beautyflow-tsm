// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_subscription_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumSubscriptionHistory extends PremiumSubscriptionHistory {
  @override
  final int id;
  @override
  final int subscription;
  @override
  final int customer;
  @override
  final String customerName;
  @override
  final int premiumType;
  @override
  final String premiumTypeName;
  @override
  final PremiumSubscriptionHistoryMovementTypeEnum movementType;
  @override
  final String movementTypeDisplay;
  @override
  final String periodStartDate;
  @override
  final String periodEndDate;
  @override
  final int periodDays;
  @override
  final double paidPrice;
  @override
  final double originalPrice;
  @override
  final double? discountApplied;
  @override
  final String discountAmount;
  @override
  final String totalSavings;
  @override
  final String? notes;
  @override
  final int? createdBy;
  @override
  final String createdByName;
  @override
  final String createdAt;
  @override
  final Map<String, dynamic>? snapshotData;

  factory _$PremiumSubscriptionHistory(
          [void Function(PremiumSubscriptionHistoryBuilder)? updates]) =>
      (PremiumSubscriptionHistoryBuilder()..update(updates))._build();

  _$PremiumSubscriptionHistory._(
      {required this.id,
      required this.subscription,
      required this.customer,
      required this.customerName,
      required this.premiumType,
      required this.premiumTypeName,
      required this.movementType,
      required this.movementTypeDisplay,
      required this.periodStartDate,
      required this.periodEndDate,
      required this.periodDays,
      required this.paidPrice,
      required this.originalPrice,
      this.discountApplied,
      required this.discountAmount,
      required this.totalSavings,
      this.notes,
      this.createdBy,
      required this.createdByName,
      required this.createdAt,
      this.snapshotData})
      : super._();
  @override
  PremiumSubscriptionHistory rebuild(
          void Function(PremiumSubscriptionHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumSubscriptionHistoryBuilder toBuilder() =>
      PremiumSubscriptionHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumSubscriptionHistory &&
        id == other.id &&
        subscription == other.subscription &&
        customer == other.customer &&
        customerName == other.customerName &&
        premiumType == other.premiumType &&
        premiumTypeName == other.premiumTypeName &&
        movementType == other.movementType &&
        movementTypeDisplay == other.movementTypeDisplay &&
        periodStartDate == other.periodStartDate &&
        periodEndDate == other.periodEndDate &&
        periodDays == other.periodDays &&
        paidPrice == other.paidPrice &&
        originalPrice == other.originalPrice &&
        discountApplied == other.discountApplied &&
        discountAmount == other.discountAmount &&
        totalSavings == other.totalSavings &&
        notes == other.notes &&
        createdBy == other.createdBy &&
        createdByName == other.createdByName &&
        createdAt == other.createdAt &&
        snapshotData == other.snapshotData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subscription.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, premiumType.hashCode);
    _$hash = $jc(_$hash, premiumTypeName.hashCode);
    _$hash = $jc(_$hash, movementType.hashCode);
    _$hash = $jc(_$hash, movementTypeDisplay.hashCode);
    _$hash = $jc(_$hash, periodStartDate.hashCode);
    _$hash = $jc(_$hash, periodEndDate.hashCode);
    _$hash = $jc(_$hash, periodDays.hashCode);
    _$hash = $jc(_$hash, paidPrice.hashCode);
    _$hash = $jc(_$hash, originalPrice.hashCode);
    _$hash = $jc(_$hash, discountApplied.hashCode);
    _$hash = $jc(_$hash, discountAmount.hashCode);
    _$hash = $jc(_$hash, totalSavings.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, snapshotData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumSubscriptionHistory')
          ..add('id', id)
          ..add('subscription', subscription)
          ..add('customer', customer)
          ..add('customerName', customerName)
          ..add('premiumType', premiumType)
          ..add('premiumTypeName', premiumTypeName)
          ..add('movementType', movementType)
          ..add('movementTypeDisplay', movementTypeDisplay)
          ..add('periodStartDate', periodStartDate)
          ..add('periodEndDate', periodEndDate)
          ..add('periodDays', periodDays)
          ..add('paidPrice', paidPrice)
          ..add('originalPrice', originalPrice)
          ..add('discountApplied', discountApplied)
          ..add('discountAmount', discountAmount)
          ..add('totalSavings', totalSavings)
          ..add('notes', notes)
          ..add('createdBy', createdBy)
          ..add('createdByName', createdByName)
          ..add('createdAt', createdAt)
          ..add('snapshotData', snapshotData))
        .toString();
  }
}

class PremiumSubscriptionHistoryBuilder
    implements
        Builder<PremiumSubscriptionHistory, PremiumSubscriptionHistoryBuilder> {
  _$PremiumSubscriptionHistory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _subscription;
  int? get subscription => _$this._subscription;
  set subscription(int? subscription) => _$this._subscription = subscription;

  int? _customer;
  int? get customer => _$this._customer;
  set customer(int? customer) => _$this._customer = customer;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  int? _premiumType;
  int? get premiumType => _$this._premiumType;
  set premiumType(int? premiumType) => _$this._premiumType = premiumType;

  String? _premiumTypeName;
  String? get premiumTypeName => _$this._premiumTypeName;
  set premiumTypeName(String? premiumTypeName) =>
      _$this._premiumTypeName = premiumTypeName;

  PremiumSubscriptionHistoryMovementTypeEnum? _movementType;
  PremiumSubscriptionHistoryMovementTypeEnum? get movementType =>
      _$this._movementType;
  set movementType(PremiumSubscriptionHistoryMovementTypeEnum? movementType) =>
      _$this._movementType = movementType;

  String? _movementTypeDisplay;
  String? get movementTypeDisplay => _$this._movementTypeDisplay;
  set movementTypeDisplay(String? movementTypeDisplay) =>
      _$this._movementTypeDisplay = movementTypeDisplay;

  String? _periodStartDate;
  String? get periodStartDate => _$this._periodStartDate;
  set periodStartDate(String? periodStartDate) =>
      _$this._periodStartDate = periodStartDate;

  String? _periodEndDate;
  String? get periodEndDate => _$this._periodEndDate;
  set periodEndDate(String? periodEndDate) =>
      _$this._periodEndDate = periodEndDate;

  int? _periodDays;
  int? get periodDays => _$this._periodDays;
  set periodDays(int? periodDays) => _$this._periodDays = periodDays;

  double? _paidPrice;
  double? get paidPrice => _$this._paidPrice;
  set paidPrice(double? paidPrice) => _$this._paidPrice = paidPrice;

  double? _originalPrice;
  double? get originalPrice => _$this._originalPrice;
  set originalPrice(double? originalPrice) =>
      _$this._originalPrice = originalPrice;

  double? _discountApplied;
  double? get discountApplied => _$this._discountApplied;
  set discountApplied(double? discountApplied) =>
      _$this._discountApplied = discountApplied;

  String? _discountAmount;
  String? get discountAmount => _$this._discountAmount;
  set discountAmount(String? discountAmount) =>
      _$this._discountAmount = discountAmount;

  String? _totalSavings;
  String? get totalSavings => _$this._totalSavings;
  set totalSavings(String? totalSavings) => _$this._totalSavings = totalSavings;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  int? _createdBy;
  int? get createdBy => _$this._createdBy;
  set createdBy(int? createdBy) => _$this._createdBy = createdBy;

  String? _createdByName;
  String? get createdByName => _$this._createdByName;
  set createdByName(String? createdByName) =>
      _$this._createdByName = createdByName;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  Map<String, dynamic>? _snapshotData;
  Map<String, dynamic>? get snapshotData => _$this._snapshotData;
  set snapshotData(Map<String, dynamic>? snapshotData) =>
      _$this._snapshotData = snapshotData;

  PremiumSubscriptionHistoryBuilder() {
    PremiumSubscriptionHistory._defaults(this);
  }

  PremiumSubscriptionHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subscription = $v.subscription;
      _customer = $v.customer;
      _customerName = $v.customerName;
      _premiumType = $v.premiumType;
      _premiumTypeName = $v.premiumTypeName;
      _movementType = $v.movementType;
      _movementTypeDisplay = $v.movementTypeDisplay;
      _periodStartDate = $v.periodStartDate;
      _periodEndDate = $v.periodEndDate;
      _periodDays = $v.periodDays;
      _paidPrice = $v.paidPrice;
      _originalPrice = $v.originalPrice;
      _discountApplied = $v.discountApplied;
      _discountAmount = $v.discountAmount;
      _totalSavings = $v.totalSavings;
      _notes = $v.notes;
      _createdBy = $v.createdBy;
      _createdByName = $v.createdByName;
      _createdAt = $v.createdAt;
      _snapshotData = $v.snapshotData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumSubscriptionHistory other) {
    _$v = other as _$PremiumSubscriptionHistory;
  }

  @override
  void update(void Function(PremiumSubscriptionHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumSubscriptionHistory build() => _build();

  _$PremiumSubscriptionHistory _build() {
    final _$result = _$v ??
        _$PremiumSubscriptionHistory._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PremiumSubscriptionHistory', 'id'),
          subscription: BuiltValueNullFieldError.checkNotNull(
              subscription, r'PremiumSubscriptionHistory', 'subscription'),
          customer: BuiltValueNullFieldError.checkNotNull(
              customer, r'PremiumSubscriptionHistory', 'customer'),
          customerName: BuiltValueNullFieldError.checkNotNull(
              customerName, r'PremiumSubscriptionHistory', 'customerName'),
          premiumType: BuiltValueNullFieldError.checkNotNull(
              premiumType, r'PremiumSubscriptionHistory', 'premiumType'),
          premiumTypeName: BuiltValueNullFieldError.checkNotNull(
              premiumTypeName,
              r'PremiumSubscriptionHistory',
              'premiumTypeName'),
          movementType: BuiltValueNullFieldError.checkNotNull(
              movementType, r'PremiumSubscriptionHistory', 'movementType'),
          movementTypeDisplay: BuiltValueNullFieldError.checkNotNull(
              movementTypeDisplay,
              r'PremiumSubscriptionHistory',
              'movementTypeDisplay'),
          periodStartDate: BuiltValueNullFieldError.checkNotNull(
              periodStartDate,
              r'PremiumSubscriptionHistory',
              'periodStartDate'),
          periodEndDate: BuiltValueNullFieldError.checkNotNull(
              periodEndDate, r'PremiumSubscriptionHistory', 'periodEndDate'),
          periodDays: BuiltValueNullFieldError.checkNotNull(
              periodDays, r'PremiumSubscriptionHistory', 'periodDays'),
          paidPrice: BuiltValueNullFieldError.checkNotNull(
              paidPrice, r'PremiumSubscriptionHistory', 'paidPrice'),
          originalPrice: BuiltValueNullFieldError.checkNotNull(
              originalPrice, r'PremiumSubscriptionHistory', 'originalPrice'),
          discountApplied: discountApplied,
          discountAmount: BuiltValueNullFieldError.checkNotNull(
              discountAmount, r'PremiumSubscriptionHistory', 'discountAmount'),
          totalSavings: BuiltValueNullFieldError.checkNotNull(
              totalSavings, r'PremiumSubscriptionHistory', 'totalSavings'),
          notes: notes,
          createdBy: createdBy,
          createdByName: BuiltValueNullFieldError.checkNotNull(
              createdByName, r'PremiumSubscriptionHistory', 'createdByName'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'PremiumSubscriptionHistory', 'createdAt'),
          snapshotData: snapshotData,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
