// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerStats extends CustomerStats {
  @override
  final int total;
  @override
  final int active;
  @override
  final int inactive;
  @override
  final int blocked;
  @override
  final int premium;

  factory _$CustomerStats([void Function(CustomerStatsBuilder)? updates]) =>
      (CustomerStatsBuilder()..update(updates))._build();

  _$CustomerStats._(
      {required this.total,
      required this.active,
      required this.inactive,
      required this.blocked,
      required this.premium})
      : super._();
  @override
  CustomerStats rebuild(void Function(CustomerStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerStatsBuilder toBuilder() => CustomerStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerStats &&
        total == other.total &&
        active == other.active &&
        inactive == other.inactive &&
        blocked == other.blocked &&
        premium == other.premium;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, inactive.hashCode);
    _$hash = $jc(_$hash, blocked.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerStats')
          ..add('total', total)
          ..add('active', active)
          ..add('inactive', inactive)
          ..add('blocked', blocked)
          ..add('premium', premium))
        .toString();
  }
}

class CustomerStatsBuilder
    implements Builder<CustomerStats, CustomerStatsBuilder> {
  _$CustomerStats? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _active;
  int? get active => _$this._active;
  set active(int? active) => _$this._active = active;

  int? _inactive;
  int? get inactive => _$this._inactive;
  set inactive(int? inactive) => _$this._inactive = inactive;

  int? _blocked;
  int? get blocked => _$this._blocked;
  set blocked(int? blocked) => _$this._blocked = blocked;

  int? _premium;
  int? get premium => _$this._premium;
  set premium(int? premium) => _$this._premium = premium;

  CustomerStatsBuilder() {
    CustomerStats._defaults(this);
  }

  CustomerStatsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _active = $v.active;
      _inactive = $v.inactive;
      _blocked = $v.blocked;
      _premium = $v.premium;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerStats other) {
    _$v = other as _$CustomerStats;
  }

  @override
  void update(void Function(CustomerStatsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerStats build() => _build();

  _$CustomerStats _build() {
    final _$result = _$v ??
        _$CustomerStats._(
          total: BuiltValueNullFieldError.checkNotNull(
              total, r'CustomerStats', 'total'),
          active: BuiltValueNullFieldError.checkNotNull(
              active, r'CustomerStats', 'active'),
          inactive: BuiltValueNullFieldError.checkNotNull(
              inactive, r'CustomerStats', 'inactive'),
          blocked: BuiltValueNullFieldError.checkNotNull(
              blocked, r'CustomerStats', 'blocked'),
          premium: BuiltValueNullFieldError.checkNotNull(
              premium, r'CustomerStats', 'premium'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
