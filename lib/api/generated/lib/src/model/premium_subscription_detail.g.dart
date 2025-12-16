// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_subscription_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumSubscriptionDetail extends PremiumSubscriptionDetail {
  @override
  final int id;
  @override
  final bool active;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int daysRemaining;
  @override
  final double paidPrice;
  @override
  final PremiumTypeDetail premiumType;

  factory _$PremiumSubscriptionDetail(
          [void Function(PremiumSubscriptionDetailBuilder)? updates]) =>
      (PremiumSubscriptionDetailBuilder()..update(updates))._build();

  _$PremiumSubscriptionDetail._(
      {required this.id,
      required this.active,
      required this.startDate,
      required this.endDate,
      required this.daysRemaining,
      required this.paidPrice,
      required this.premiumType})
      : super._();
  @override
  PremiumSubscriptionDetail rebuild(
          void Function(PremiumSubscriptionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumSubscriptionDetailBuilder toBuilder() =>
      PremiumSubscriptionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumSubscriptionDetail &&
        id == other.id &&
        active == other.active &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        daysRemaining == other.daysRemaining &&
        paidPrice == other.paidPrice &&
        premiumType == other.premiumType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, daysRemaining.hashCode);
    _$hash = $jc(_$hash, paidPrice.hashCode);
    _$hash = $jc(_$hash, premiumType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumSubscriptionDetail')
          ..add('id', id)
          ..add('active', active)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('daysRemaining', daysRemaining)
          ..add('paidPrice', paidPrice)
          ..add('premiumType', premiumType))
        .toString();
  }
}

class PremiumSubscriptionDetailBuilder
    implements
        Builder<PremiumSubscriptionDetail, PremiumSubscriptionDetailBuilder> {
  _$PremiumSubscriptionDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  int? _daysRemaining;
  int? get daysRemaining => _$this._daysRemaining;
  set daysRemaining(int? daysRemaining) =>
      _$this._daysRemaining = daysRemaining;

  double? _paidPrice;
  double? get paidPrice => _$this._paidPrice;
  set paidPrice(double? paidPrice) => _$this._paidPrice = paidPrice;

  PremiumTypeDetailBuilder? _premiumType;
  PremiumTypeDetailBuilder get premiumType =>
      _$this._premiumType ??= PremiumTypeDetailBuilder();
  set premiumType(PremiumTypeDetailBuilder? premiumType) =>
      _$this._premiumType = premiumType;

  PremiumSubscriptionDetailBuilder() {
    PremiumSubscriptionDetail._defaults(this);
  }

  PremiumSubscriptionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _active = $v.active;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _daysRemaining = $v.daysRemaining;
      _paidPrice = $v.paidPrice;
      _premiumType = $v.premiumType.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumSubscriptionDetail other) {
    _$v = other as _$PremiumSubscriptionDetail;
  }

  @override
  void update(void Function(PremiumSubscriptionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumSubscriptionDetail build() => _build();

  _$PremiumSubscriptionDetail _build() {
    _$PremiumSubscriptionDetail _$result;
    try {
      _$result = _$v ??
          _$PremiumSubscriptionDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PremiumSubscriptionDetail', 'id'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'PremiumSubscriptionDetail', 'active'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'PremiumSubscriptionDetail', 'startDate'),
            endDate: BuiltValueNullFieldError.checkNotNull(
                endDate, r'PremiumSubscriptionDetail', 'endDate'),
            daysRemaining: BuiltValueNullFieldError.checkNotNull(
                daysRemaining, r'PremiumSubscriptionDetail', 'daysRemaining'),
            paidPrice: BuiltValueNullFieldError.checkNotNull(
                paidPrice, r'PremiumSubscriptionDetail', 'paidPrice'),
            premiumType: premiumType.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'premiumType';
        premiumType.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumSubscriptionDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
