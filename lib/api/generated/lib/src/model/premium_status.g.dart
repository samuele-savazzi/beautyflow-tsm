// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumStatus extends PremiumStatus {
  @override
  final bool isPremium;
  @override
  final Date? subscriptionEnd;

  factory _$PremiumStatus([void Function(PremiumStatusBuilder)? updates]) =>
      (PremiumStatusBuilder()..update(updates))._build();

  _$PremiumStatus._({required this.isPremium, this.subscriptionEnd})
      : super._();
  @override
  PremiumStatus rebuild(void Function(PremiumStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumStatusBuilder toBuilder() => PremiumStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumStatus &&
        isPremium == other.isPremium &&
        subscriptionEnd == other.subscriptionEnd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isPremium.hashCode);
    _$hash = $jc(_$hash, subscriptionEnd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumStatus')
          ..add('isPremium', isPremium)
          ..add('subscriptionEnd', subscriptionEnd))
        .toString();
  }
}

class PremiumStatusBuilder
    implements Builder<PremiumStatus, PremiumStatusBuilder> {
  _$PremiumStatus? _$v;

  bool? _isPremium;
  bool? get isPremium => _$this._isPremium;
  set isPremium(bool? isPremium) => _$this._isPremium = isPremium;

  Date? _subscriptionEnd;
  Date? get subscriptionEnd => _$this._subscriptionEnd;
  set subscriptionEnd(Date? subscriptionEnd) =>
      _$this._subscriptionEnd = subscriptionEnd;

  PremiumStatusBuilder() {
    PremiumStatus._defaults(this);
  }

  PremiumStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isPremium = $v.isPremium;
      _subscriptionEnd = $v.subscriptionEnd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumStatus other) {
    _$v = other as _$PremiumStatus;
  }

  @override
  void update(void Function(PremiumStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumStatus build() => _build();

  _$PremiumStatus _build() {
    final _$result = _$v ??
        _$PremiumStatus._(
          isPremium: BuiltValueNullFieldError.checkNotNull(
              isPremium, r'PremiumStatus', 'isPremium'),
          subscriptionEnd: subscriptionEnd,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
