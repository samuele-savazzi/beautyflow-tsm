// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_tier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivateTierRequest extends ActivateTierRequest {
  @override
  final int tierId;
  @override
  final bool? isTrial;
  @override
  final ActivateTierRequestBillingCycleEnum? billingCycle;
  @override
  final bool? autoRenew;
  @override
  final DateTime? expiresAt;
  @override
  final Map<String, dynamic>? activationMetadata;

  factory _$ActivateTierRequest(
          [void Function(ActivateTierRequestBuilder)? updates]) =>
      (ActivateTierRequestBuilder()..update(updates))._build();

  _$ActivateTierRequest._(
      {required this.tierId,
      this.isTrial,
      this.billingCycle,
      this.autoRenew,
      this.expiresAt,
      this.activationMetadata})
      : super._();
  @override
  ActivateTierRequest rebuild(
          void Function(ActivateTierRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivateTierRequestBuilder toBuilder() =>
      ActivateTierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivateTierRequest &&
        tierId == other.tierId &&
        isTrial == other.isTrial &&
        billingCycle == other.billingCycle &&
        autoRenew == other.autoRenew &&
        expiresAt == other.expiresAt &&
        activationMetadata == other.activationMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tierId.hashCode);
    _$hash = $jc(_$hash, isTrial.hashCode);
    _$hash = $jc(_$hash, billingCycle.hashCode);
    _$hash = $jc(_$hash, autoRenew.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, activationMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivateTierRequest')
          ..add('tierId', tierId)
          ..add('isTrial', isTrial)
          ..add('billingCycle', billingCycle)
          ..add('autoRenew', autoRenew)
          ..add('expiresAt', expiresAt)
          ..add('activationMetadata', activationMetadata))
        .toString();
  }
}

class ActivateTierRequestBuilder
    implements Builder<ActivateTierRequest, ActivateTierRequestBuilder> {
  _$ActivateTierRequest? _$v;

  int? _tierId;
  int? get tierId => _$this._tierId;
  set tierId(int? tierId) => _$this._tierId = tierId;

  bool? _isTrial;
  bool? get isTrial => _$this._isTrial;
  set isTrial(bool? isTrial) => _$this._isTrial = isTrial;

  ActivateTierRequestBillingCycleEnum? _billingCycle;
  ActivateTierRequestBillingCycleEnum? get billingCycle => _$this._billingCycle;
  set billingCycle(ActivateTierRequestBillingCycleEnum? billingCycle) =>
      _$this._billingCycle = billingCycle;

  bool? _autoRenew;
  bool? get autoRenew => _$this._autoRenew;
  set autoRenew(bool? autoRenew) => _$this._autoRenew = autoRenew;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  Map<String, dynamic>? _activationMetadata;
  Map<String, dynamic>? get activationMetadata => _$this._activationMetadata;
  set activationMetadata(Map<String, dynamic>? activationMetadata) =>
      _$this._activationMetadata = activationMetadata;

  ActivateTierRequestBuilder() {
    ActivateTierRequest._defaults(this);
  }

  ActivateTierRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tierId = $v.tierId;
      _isTrial = $v.isTrial;
      _billingCycle = $v.billingCycle;
      _autoRenew = $v.autoRenew;
      _expiresAt = $v.expiresAt;
      _activationMetadata = $v.activationMetadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivateTierRequest other) {
    _$v = other as _$ActivateTierRequest;
  }

  @override
  void update(void Function(ActivateTierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivateTierRequest build() => _build();

  _$ActivateTierRequest _build() {
    final _$result = _$v ??
        _$ActivateTierRequest._(
          tierId: BuiltValueNullFieldError.checkNotNull(
              tierId, r'ActivateTierRequest', 'tierId'),
          isTrial: isTrial,
          billingCycle: billingCycle,
          autoRenew: autoRenew,
          expiresAt: expiresAt,
          activationMetadata: activationMetadata,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
