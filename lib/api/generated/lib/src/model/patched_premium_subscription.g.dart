// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_premium_subscription.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedPremiumSubscription extends PatchedPremiumSubscription {
  @override
  final int? id;
  @override
  final CustomerBasic? customer;
  @override
  final int? customerId;
  @override
  final PremiumTypeNested? premiumType;
  @override
  final int? premiumTypeId;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final double? paidPrice;
  @override
  final bool? active;
  @override
  final int? daysRemaining;
  @override
  final String? createdAt;
  @override
  final String? notes;

  factory _$PatchedPremiumSubscription(
          [void Function(PatchedPremiumSubscriptionBuilder)? updates]) =>
      (PatchedPremiumSubscriptionBuilder()..update(updates))._build();

  _$PatchedPremiumSubscription._(
      {this.id,
      this.customer,
      this.customerId,
      this.premiumType,
      this.premiumTypeId,
      this.startDate,
      this.endDate,
      this.paidPrice,
      this.active,
      this.daysRemaining,
      this.createdAt,
      this.notes})
      : super._();
  @override
  PatchedPremiumSubscription rebuild(
          void Function(PatchedPremiumSubscriptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedPremiumSubscriptionBuilder toBuilder() =>
      PatchedPremiumSubscriptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedPremiumSubscription &&
        id == other.id &&
        customer == other.customer &&
        customerId == other.customerId &&
        premiumType == other.premiumType &&
        premiumTypeId == other.premiumTypeId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        paidPrice == other.paidPrice &&
        active == other.active &&
        daysRemaining == other.daysRemaining &&
        createdAt == other.createdAt &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, premiumType.hashCode);
    _$hash = $jc(_$hash, premiumTypeId.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, paidPrice.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, daysRemaining.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatchedPremiumSubscription')
          ..add('id', id)
          ..add('customer', customer)
          ..add('customerId', customerId)
          ..add('premiumType', premiumType)
          ..add('premiumTypeId', premiumTypeId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('paidPrice', paidPrice)
          ..add('active', active)
          ..add('daysRemaining', daysRemaining)
          ..add('createdAt', createdAt)
          ..add('notes', notes))
        .toString();
  }
}

class PatchedPremiumSubscriptionBuilder
    implements
        Builder<PatchedPremiumSubscription, PatchedPremiumSubscriptionBuilder> {
  _$PatchedPremiumSubscription? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CustomerBasicBuilder? _customer;
  CustomerBasicBuilder get customer =>
      _$this._customer ??= CustomerBasicBuilder();
  set customer(CustomerBasicBuilder? customer) => _$this._customer = customer;

  int? _customerId;
  int? get customerId => _$this._customerId;
  set customerId(int? customerId) => _$this._customerId = customerId;

  PremiumTypeNestedBuilder? _premiumType;
  PremiumTypeNestedBuilder get premiumType =>
      _$this._premiumType ??= PremiumTypeNestedBuilder();
  set premiumType(PremiumTypeNestedBuilder? premiumType) =>
      _$this._premiumType = premiumType;

  int? _premiumTypeId;
  int? get premiumTypeId => _$this._premiumTypeId;
  set premiumTypeId(int? premiumTypeId) =>
      _$this._premiumTypeId = premiumTypeId;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  double? _paidPrice;
  double? get paidPrice => _$this._paidPrice;
  set paidPrice(double? paidPrice) => _$this._paidPrice = paidPrice;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  int? _daysRemaining;
  int? get daysRemaining => _$this._daysRemaining;
  set daysRemaining(int? daysRemaining) =>
      _$this._daysRemaining = daysRemaining;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  PatchedPremiumSubscriptionBuilder() {
    PatchedPremiumSubscription._defaults(this);
  }

  PatchedPremiumSubscriptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customer = $v.customer?.toBuilder();
      _customerId = $v.customerId;
      _premiumType = $v.premiumType?.toBuilder();
      _premiumTypeId = $v.premiumTypeId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _paidPrice = $v.paidPrice;
      _active = $v.active;
      _daysRemaining = $v.daysRemaining;
      _createdAt = $v.createdAt;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedPremiumSubscription other) {
    _$v = other as _$PatchedPremiumSubscription;
  }

  @override
  void update(void Function(PatchedPremiumSubscriptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedPremiumSubscription build() => _build();

  _$PatchedPremiumSubscription _build() {
    _$PatchedPremiumSubscription _$result;
    try {
      _$result = _$v ??
          _$PatchedPremiumSubscription._(
            id: id,
            customer: _customer?.build(),
            customerId: customerId,
            premiumType: _premiumType?.build(),
            premiumTypeId: premiumTypeId,
            startDate: startDate,
            endDate: endDate,
            paidPrice: paidPrice,
            active: active,
            daysRemaining: daysRemaining,
            createdAt: createdAt,
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        _customer?.build();

        _$failedField = 'premiumType';
        _premiumType?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedPremiumSubscription', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
