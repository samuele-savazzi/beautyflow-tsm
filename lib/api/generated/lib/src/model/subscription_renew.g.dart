// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_renew.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionRenew extends SubscriptionRenew {
  @override
  final int? durationDays;
  @override
  final double? paidPrice;
  @override
  final String? notes;

  factory _$SubscriptionRenew(
          [void Function(SubscriptionRenewBuilder)? updates]) =>
      (SubscriptionRenewBuilder()..update(updates))._build();

  _$SubscriptionRenew._({this.durationDays, this.paidPrice, this.notes})
      : super._();
  @override
  SubscriptionRenew rebuild(void Function(SubscriptionRenewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionRenewBuilder toBuilder() =>
      SubscriptionRenewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionRenew &&
        durationDays == other.durationDays &&
        paidPrice == other.paidPrice &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, durationDays.hashCode);
    _$hash = $jc(_$hash, paidPrice.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubscriptionRenew')
          ..add('durationDays', durationDays)
          ..add('paidPrice', paidPrice)
          ..add('notes', notes))
        .toString();
  }
}

class SubscriptionRenewBuilder
    implements Builder<SubscriptionRenew, SubscriptionRenewBuilder> {
  _$SubscriptionRenew? _$v;

  int? _durationDays;
  int? get durationDays => _$this._durationDays;
  set durationDays(int? durationDays) => _$this._durationDays = durationDays;

  double? _paidPrice;
  double? get paidPrice => _$this._paidPrice;
  set paidPrice(double? paidPrice) => _$this._paidPrice = paidPrice;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SubscriptionRenewBuilder() {
    SubscriptionRenew._defaults(this);
  }

  SubscriptionRenewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _durationDays = $v.durationDays;
      _paidPrice = $v.paidPrice;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionRenew other) {
    _$v = other as _$SubscriptionRenew;
  }

  @override
  void update(void Function(SubscriptionRenewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionRenew build() => _build();

  _$SubscriptionRenew _build() {
    final _$result = _$v ??
        _$SubscriptionRenew._(
          durationDays: durationDays,
          paidPrice: paidPrice,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
