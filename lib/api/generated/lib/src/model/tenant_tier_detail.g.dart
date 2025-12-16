// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_tier_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantTierDetail extends TenantTierDetail {
  @override
  final int id;
  @override
  final int tenant;
  @override
  final String tenantName;
  @override
  final TierListItem tier;
  @override
  final bool isActive;
  @override
  final bool isTrial;
  @override
  final DateTime activatedAt;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? trialEndsAt;
  @override
  final DateTime? lastRenewedAt;
  @override
  final TenantTierDetailBillingCycleEnum billingCycle;
  @override
  final bool autoRenew;
  @override
  final Date? nextBillingDate;
  @override
  final int usageCount;
  @override
  final Date? usageResetDate;
  @override
  final double lastPaymentAmount;
  @override
  final DateTime? lastPaymentDate;
  @override
  final DateTime? cancelledAt;
  @override
  final String cancellationReason;
  @override
  final Map<String, dynamic>? activationMetadata;
  @override
  final String canUse;
  @override
  final String usageStatus;

  factory _$TenantTierDetail(
          [void Function(TenantTierDetailBuilder)? updates]) =>
      (TenantTierDetailBuilder()..update(updates))._build();

  _$TenantTierDetail._(
      {required this.id,
      required this.tenant,
      required this.tenantName,
      required this.tier,
      required this.isActive,
      required this.isTrial,
      required this.activatedAt,
      this.expiresAt,
      this.trialEndsAt,
      this.lastRenewedAt,
      required this.billingCycle,
      required this.autoRenew,
      this.nextBillingDate,
      required this.usageCount,
      this.usageResetDate,
      required this.lastPaymentAmount,
      this.lastPaymentDate,
      this.cancelledAt,
      required this.cancellationReason,
      this.activationMetadata,
      required this.canUse,
      required this.usageStatus})
      : super._();
  @override
  TenantTierDetail rebuild(void Function(TenantTierDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantTierDetailBuilder toBuilder() =>
      TenantTierDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantTierDetail &&
        id == other.id &&
        tenant == other.tenant &&
        tenantName == other.tenantName &&
        tier == other.tier &&
        isActive == other.isActive &&
        isTrial == other.isTrial &&
        activatedAt == other.activatedAt &&
        expiresAt == other.expiresAt &&
        trialEndsAt == other.trialEndsAt &&
        lastRenewedAt == other.lastRenewedAt &&
        billingCycle == other.billingCycle &&
        autoRenew == other.autoRenew &&
        nextBillingDate == other.nextBillingDate &&
        usageCount == other.usageCount &&
        usageResetDate == other.usageResetDate &&
        lastPaymentAmount == other.lastPaymentAmount &&
        lastPaymentDate == other.lastPaymentDate &&
        cancelledAt == other.cancelledAt &&
        cancellationReason == other.cancellationReason &&
        activationMetadata == other.activationMetadata &&
        canUse == other.canUse &&
        usageStatus == other.usageStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tenant.hashCode);
    _$hash = $jc(_$hash, tenantName.hashCode);
    _$hash = $jc(_$hash, tier.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isTrial.hashCode);
    _$hash = $jc(_$hash, activatedAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, trialEndsAt.hashCode);
    _$hash = $jc(_$hash, lastRenewedAt.hashCode);
    _$hash = $jc(_$hash, billingCycle.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, nextBillingDate.hashCode);
    _$hash = $jc(_$hash, usageCount.hashCode);
    _$hash = $jc(_$hash, usageResetDate.hashCode);
    _$hash = $jc(_$hash, lastPaymentAmount.hashCode);
    _$hash = $jc(_$hash, lastPaymentDate.hashCode);
    _$hash = $jc(_$hash, cancelledAt.hashCode);
    _$hash = $jc(_$hash, cancellationReason.hashCode);
    _$hash = $jc(_$hash, activationMetadata.hashCode);
    _$hash = $jc(_$hash, canUse.hashCode);
    _$hash = $jc(_$hash, usageStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TenantTierDetail')
          ..add('id', id)
          ..add('tenant', tenant)
          ..add('tenantName', tenantName)
          ..add('tier', tier)
          ..add('isActive', isActive)
          ..add('isTrial', isTrial)
          ..add('activatedAt', activatedAt)
          ..add('expiresAt', expiresAt)
          ..add('trialEndsAt', trialEndsAt)
          ..add('lastRenewedAt', lastRenewedAt)
          ..add('billingCycle', billingCycle)
          ..add('autoRenew', autoRenew)
          ..add('nextBillingDate', nextBillingDate)
          ..add('usageCount', usageCount)
          ..add('usageResetDate', usageResetDate)
          ..add('lastPaymentAmount', lastPaymentAmount)
          ..add('lastPaymentDate', lastPaymentDate)
          ..add('cancelledAt', cancelledAt)
          ..add('cancellationReason', cancellationReason)
          ..add('activationMetadata', activationMetadata)
          ..add('canUse', canUse)
          ..add('usageStatus', usageStatus))
        .toString();
  }
}

class TenantTierDetailBuilder
    implements Builder<TenantTierDetail, TenantTierDetailBuilder> {
  _$TenantTierDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _tenant;
  int? get tenant => _$this._tenant;
  set tenant(int? tenant) => _$this._tenant = tenant;

  String? _tenantName;
  String? get tenantName => _$this._tenantName;
  set tenantName(String? tenantName) => _$this._tenantName = tenantName;

  TierListItemBuilder? _tier;
  TierListItemBuilder get tier => _$this._tier ??= TierListItemBuilder();
  set tier(TierListItemBuilder? tier) => _$this._tier = tier;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isTrial;
  bool? get isTrial => _$this._isTrial;
  set isTrial(bool? isTrial) => _$this._isTrial = isTrial;

  DateTime? _activatedAt;
  DateTime? get activatedAt => _$this._activatedAt;
  set activatedAt(DateTime? activatedAt) => _$this._activatedAt = activatedAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _trialEndsAt;
  DateTime? get trialEndsAt => _$this._trialEndsAt;
  set trialEndsAt(DateTime? trialEndsAt) => _$this._trialEndsAt = trialEndsAt;

  DateTime? _lastRenewedAt;
  DateTime? get lastRenewedAt => _$this._lastRenewedAt;
  set lastRenewedAt(DateTime? lastRenewedAt) =>
      _$this._lastRenewedAt = lastRenewedAt;

  TenantTierDetailBillingCycleEnum? _billingCycle;
  TenantTierDetailBillingCycleEnum? get billingCycle => _$this._billingCycle;
  set billingCycle(TenantTierDetailBillingCycleEnum? billingCycle) =>
      _$this._billingCycle = billingCycle;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  Date? _nextBillingDate;
  Date? get nextBillingDate => _$this._nextBillingDate;
  set nextBillingDate(Date? nextBillingDate) =>
      _$this._nextBillingDate = nextBillingDate;

  int? _usageCount;
  int? get usageCount => _$this._usageCount;
  set usageCount(int? usageCount) => _$this._usageCount = usageCount;

  Date? _usageResetDate;
  Date? get usageResetDate => _$this._usageResetDate;
  set usageResetDate(Date? usageResetDate) =>
      _$this._usageResetDate = usageResetDate;

  double? _lastPaymentAmount;
  double? get lastPaymentAmount => _$this._lastPaymentAmount;
  set lastPaymentAmount(double? lastPaymentAmount) =>
      _$this._lastPaymentAmount = lastPaymentAmount;

  DateTime? _lastPaymentDate;
  DateTime? get lastPaymentDate => _$this._lastPaymentDate;
  set lastPaymentDate(DateTime? lastPaymentDate) =>
      _$this._lastPaymentDate = lastPaymentDate;

  DateTime? _cancelledAt;
  DateTime? get cancelledAt => _$this._cancelledAt;
  set cancelledAt(DateTime? cancelledAt) => _$this._cancelledAt = cancelledAt;

  String? _cancellationReason;
  String? get cancellationReason => _$this._cancellationReason;
  set cancellationReason(String? cancellationReason) =>
      _$this._cancellationReason = cancellationReason;

  Map<String, dynamic>? _activationMetadata;
  Map<String, dynamic>? get activationMetadata => _$this._activationMetadata;
  set activationMetadata(Map<String, dynamic>? activationMetadata) =>
      _$this._activationMetadata = activationMetadata;

  String? _canUse;
  String? get canUse => _$this._canUse;
  set canUse(String? canUse) => _$this._canUse = canUse;

  String? _usageStatus;
  String? get usageStatus => _$this._usageStatus;
  set usageStatus(String? usageStatus) => _$this._usageStatus = usageStatus;

  TenantTierDetailBuilder() {
    TenantTierDetail._defaults(this);
  }

  TenantTierDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tenant = $v.tenant;
      _tenantName = $v.tenantName;
      _tier = $v.tier.toBuilder();
      _isActive = $v.isActive;
      _isTrial = $v.isTrial;
      _activatedAt = $v.activatedAt;
      _expiresAt = $v.expiresAt;
      _trialEndsAt = $v.trialEndsAt;
      _lastRenewedAt = $v.lastRenewedAt;
      _billingCycle = $v.billingCycle;
      _autoRenew = $v.autoRenew;
      _nextBillingDate = $v.nextBillingDate;
      _usageCount = $v.usageCount;
      _usageResetDate = $v.usageResetDate;
      _lastPaymentAmount = $v.lastPaymentAmount;
      _lastPaymentDate = $v.lastPaymentDate;
      _cancelledAt = $v.cancelledAt;
      _cancellationReason = $v.cancellationReason;
      _activationMetadata = $v.activationMetadata;
      _canUse = $v.canUse;
      _usageStatus = $v.usageStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenantTierDetail other) {
    _$v = other as _$TenantTierDetail;
  }

  @override
  void update(void Function(TenantTierDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantTierDetail build() => _build();

  _$TenantTierDetail _build() {
    _$TenantTierDetail _$result;
    try {
      _$result = _$v ??
          _$TenantTierDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TenantTierDetail', 'id'),
            tenant: BuiltValueNullFieldError.checkNotNull(
                tenant, r'TenantTierDetail', 'tenant'),
            tenantName: BuiltValueNullFieldError.checkNotNull(
                tenantName, r'TenantTierDetail', 'tenantName'),
            tier: tier.build(),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'TenantTierDetail', 'isActive'),
            isTrial: BuiltValueNullFieldError.checkNotNull(
                isTrial, r'TenantTierDetail', 'isTrial'),
            activatedAt: BuiltValueNullFieldError.checkNotNull(
                activatedAt, r'TenantTierDetail', 'activatedAt'),
            expiresAt: expiresAt,
            trialEndsAt: trialEndsAt,
            lastRenewedAt: lastRenewedAt,
            billingCycle: BuiltValueNullFieldError.checkNotNull(
                billingCycle, r'TenantTierDetail', 'billingCycle'),
            autoRenew: BuiltValueNullFieldError.checkNotNull(
                autoRenew, r'TenantTierDetail', 'autoRenew'),
            nextBillingDate: nextBillingDate,
            usageCount: BuiltValueNullFieldError.checkNotNull(
                usageCount, r'TenantTierDetail', 'usageCount'),
            usageResetDate: usageResetDate,
            lastPaymentAmount: BuiltValueNullFieldError.checkNotNull(
                lastPaymentAmount, r'TenantTierDetail', 'lastPaymentAmount'),
            lastPaymentDate: lastPaymentDate,
            cancelledAt: cancelledAt,
            cancellationReason: BuiltValueNullFieldError.checkNotNull(
                cancellationReason, r'TenantTierDetail', 'cancellationReason'),
            activationMetadata: activationMetadata,
            canUse: BuiltValueNullFieldError.checkNotNull(
                canUse, r'TenantTierDetail', 'canUse'),
            usageStatus: BuiltValueNullFieldError.checkNotNull(
                usageStatus, r'TenantTierDetail', 'usageStatus'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tier';
        tier.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TenantTierDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
