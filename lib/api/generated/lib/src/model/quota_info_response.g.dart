// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quota_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuotaInfoResponse extends QuotaInfoResponse {
  @override
  final String? planName;
  @override
  final String? planExpiresAt;
  @override
  final String billingCycle;
  @override
  final bool autoRenew;
  @override
  final bool isActive;
  @override
  final int smsQuotaLimit;
  @override
  final int smsQuotaUsed;
  @override
  final int smsQuotaRemaining;
  @override
  final String smsLastResetDate;
  @override
  final int defaultMaxOperatorsPerArea;
  @override
  final int defaultMaxWorkstationsPerOperator;
  @override
  final DateTime? lastPaymentDate;
  @override
  final double lastPaymentAmount;

  factory _$QuotaInfoResponse(
          [void Function(QuotaInfoResponseBuilder)? updates]) =>
      (QuotaInfoResponseBuilder()..update(updates))._build();

  _$QuotaInfoResponse._(
      {this.planName,
      this.planExpiresAt,
      required this.billingCycle,
      required this.autoRenew,
      required this.isActive,
      required this.smsQuotaLimit,
      required this.smsQuotaUsed,
      required this.smsQuotaRemaining,
      required this.smsLastResetDate,
      required this.defaultMaxOperatorsPerArea,
      required this.defaultMaxWorkstationsPerOperator,
      this.lastPaymentDate,
      required this.lastPaymentAmount})
      : super._();
  @override
  QuotaInfoResponse rebuild(void Function(QuotaInfoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuotaInfoResponseBuilder toBuilder() =>
      QuotaInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuotaInfoResponse &&
        planName == other.planName &&
        planExpiresAt == other.planExpiresAt &&
        billingCycle == other.billingCycle &&
        autoRenew == other.autoRenew &&
        isActive == other.isActive &&
        smsQuotaLimit == other.smsQuotaLimit &&
        smsQuotaUsed == other.smsQuotaUsed &&
        smsQuotaRemaining == other.smsQuotaRemaining &&
        smsLastResetDate == other.smsLastResetDate &&
        defaultMaxOperatorsPerArea == other.defaultMaxOperatorsPerArea &&
        defaultMaxWorkstationsPerOperator ==
            other.defaultMaxWorkstationsPerOperator &&
        lastPaymentDate == other.lastPaymentDate &&
        lastPaymentAmount == other.lastPaymentAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, planName.hashCode);
    _$hash = $jc(_$hash, planExpiresAt.hashCode);
    _$hash = $jc(_$hash, billingCycle.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, smsQuotaLimit.hashCode);
    _$hash = $jc(_$hash, smsQuotaUsed.hashCode);
    _$hash = $jc(_$hash, smsQuotaRemaining.hashCode);
    _$hash = $jc(_$hash, smsLastResetDate.hashCode);
    _$hash = $jc(_$hash, defaultMaxOperatorsPerArea.hashCode);
    _$hash = $jc(_$hash, defaultMaxWorkstationsPerOperator.hashCode);
    _$hash = $jc(_$hash, lastPaymentDate.hashCode);
    _$hash = $jc(_$hash, lastPaymentAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuotaInfoResponse')
          ..add('planName', planName)
          ..add('planExpiresAt', planExpiresAt)
          ..add('billingCycle', billingCycle)
          ..add('autoRenew', autoRenew)
          ..add('isActive', isActive)
          ..add('smsQuotaLimit', smsQuotaLimit)
          ..add('smsQuotaUsed', smsQuotaUsed)
          ..add('smsQuotaRemaining', smsQuotaRemaining)
          ..add('smsLastResetDate', smsLastResetDate)
          ..add('defaultMaxOperatorsPerArea', defaultMaxOperatorsPerArea)
          ..add('defaultMaxWorkstationsPerOperator',
              defaultMaxWorkstationsPerOperator)
          ..add('lastPaymentDate', lastPaymentDate)
          ..add('lastPaymentAmount', lastPaymentAmount))
        .toString();
  }
}

class QuotaInfoResponseBuilder
    implements Builder<QuotaInfoResponse, QuotaInfoResponseBuilder> {
  _$QuotaInfoResponse? _$v;

  String? _planName;
  String? get planName => _$this._planName;
  set planName(String? planName) => _$this._planName = planName;

  String? _planExpiresAt;
  String? get planExpiresAt => _$this._planExpiresAt;
  set planExpiresAt(String? planExpiresAt) =>
      _$this._planExpiresAt = planExpiresAt;

  String? _billingCycle;
  String? get billingCycle => _$this._billingCycle;
  set billingCycle(String? billingCycle) => _$this._billingCycle = billingCycle;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  int? _smsQuotaLimit;
  int? get smsQuotaLimit => _$this._smsQuotaLimit;
  set smsQuotaLimit(int? smsQuotaLimit) =>
      _$this._smsQuotaLimit = smsQuotaLimit;

  int? _smsQuotaUsed;
  int? get smsQuotaUsed => _$this._smsQuotaUsed;
  set smsQuotaUsed(int? smsQuotaUsed) => _$this._smsQuotaUsed = smsQuotaUsed;

  int? _smsQuotaRemaining;
  int? get smsQuotaRemaining => _$this._smsQuotaRemaining;
  set smsQuotaRemaining(int? smsQuotaRemaining) =>
      _$this._smsQuotaRemaining = smsQuotaRemaining;

  String? _smsLastResetDate;
  String? get smsLastResetDate => _$this._smsLastResetDate;
  set smsLastResetDate(String? smsLastResetDate) =>
      _$this._smsLastResetDate = smsLastResetDate;

  int? _defaultMaxOperatorsPerArea;
  int? get defaultMaxOperatorsPerArea => _$this._defaultMaxOperatorsPerArea;
  set defaultMaxOperatorsPerArea(int? defaultMaxOperatorsPerArea) =>
      _$this._defaultMaxOperatorsPerArea = defaultMaxOperatorsPerArea;

  int? _defaultMaxWorkstationsPerOperator;
  int? get defaultMaxWorkstationsPerOperator =>
      _$this._defaultMaxWorkstationsPerOperator;
  set defaultMaxWorkstationsPerOperator(
          int? defaultMaxWorkstationsPerOperator) =>
      _$this._defaultMaxWorkstationsPerOperator =
          defaultMaxWorkstationsPerOperator;

  DateTime? _lastPaymentDate;
  DateTime? get lastPaymentDate => _$this._lastPaymentDate;
  set lastPaymentDate(DateTime? lastPaymentDate) =>
      _$this._lastPaymentDate = lastPaymentDate;

  double? _lastPaymentAmount;
  double? get lastPaymentAmount => _$this._lastPaymentAmount;
  set lastPaymentAmount(double? lastPaymentAmount) =>
      _$this._lastPaymentAmount = lastPaymentAmount;

  QuotaInfoResponseBuilder() {
    QuotaInfoResponse._defaults(this);
  }

  QuotaInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _planName = $v.planName;
      _planExpiresAt = $v.planExpiresAt;
      _billingCycle = $v.billingCycle;
      _autoRenew = $v.autoRenew;
      _isActive = $v.isActive;
      _smsQuotaLimit = $v.smsQuotaLimit;
      _smsQuotaUsed = $v.smsQuotaUsed;
      _smsQuotaRemaining = $v.smsQuotaRemaining;
      _smsLastResetDate = $v.smsLastResetDate;
      _defaultMaxOperatorsPerArea = $v.defaultMaxOperatorsPerArea;
      _defaultMaxWorkstationsPerOperator = $v.defaultMaxWorkstationsPerOperator;
      _lastPaymentDate = $v.lastPaymentDate;
      _lastPaymentAmount = $v.lastPaymentAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuotaInfoResponse other) {
    _$v = other as _$QuotaInfoResponse;
  }

  @override
  void update(void Function(QuotaInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuotaInfoResponse build() => _build();

  _$QuotaInfoResponse _build() {
    final _$result = _$v ??
        _$QuotaInfoResponse._(
          planName: planName,
          planExpiresAt: planExpiresAt,
          billingCycle: BuiltValueNullFieldError.checkNotNull(
              billingCycle, r'QuotaInfoResponse', 'billingCycle'),
          autoRenew: BuiltValueNullFieldError.checkNotNull(
              autoRenew, r'QuotaInfoResponse', 'autoRenew'),
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'QuotaInfoResponse', 'isActive'),
          smsQuotaLimit: BuiltValueNullFieldError.checkNotNull(
              smsQuotaLimit, r'QuotaInfoResponse', 'smsQuotaLimit'),
          smsQuotaUsed: BuiltValueNullFieldError.checkNotNull(
              smsQuotaUsed, r'QuotaInfoResponse', 'smsQuotaUsed'),
          smsQuotaRemaining: BuiltValueNullFieldError.checkNotNull(
              smsQuotaRemaining, r'QuotaInfoResponse', 'smsQuotaRemaining'),
          smsLastResetDate: BuiltValueNullFieldError.checkNotNull(
              smsLastResetDate, r'QuotaInfoResponse', 'smsLastResetDate'),
          defaultMaxOperatorsPerArea: BuiltValueNullFieldError.checkNotNull(
              defaultMaxOperatorsPerArea,
              r'QuotaInfoResponse',
              'defaultMaxOperatorsPerArea'),
          defaultMaxWorkstationsPerOperator:
              BuiltValueNullFieldError.checkNotNull(
                  defaultMaxWorkstationsPerOperator,
                  r'QuotaInfoResponse',
                  'defaultMaxWorkstationsPerOperator'),
          lastPaymentDate: lastPaymentDate,
          lastPaymentAmount: BuiltValueNullFieldError.checkNotNull(
              lastPaymentAmount, r'QuotaInfoResponse', 'lastPaymentAmount'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
