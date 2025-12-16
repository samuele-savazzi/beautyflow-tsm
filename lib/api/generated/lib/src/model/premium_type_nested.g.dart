// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_type_nested.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumTypeNested extends PremiumTypeNested {
  @override
  final int id;
  @override
  final int? area;
  @override
  final String name;
  @override
  final double price;
  @override
  final bool active;
  @override
  final String operatorsCount;
  @override
  final BuiltList<OperatorAccessNested> operatorAccesses;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PremiumTypeNested(
          [void Function(PremiumTypeNestedBuilder)? updates]) =>
      (PremiumTypeNestedBuilder()..update(updates))._build();

  _$PremiumTypeNested._(
      {required this.id,
      this.area,
      required this.name,
      required this.price,
      required this.active,
      required this.operatorsCount,
      required this.operatorAccesses,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  PremiumTypeNested rebuild(void Function(PremiumTypeNestedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumTypeNestedBuilder toBuilder() =>
      PremiumTypeNestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumTypeNested &&
        id == other.id &&
        area == other.area &&
        name == other.name &&
        price == other.price &&
        active == other.active &&
        operatorsCount == other.operatorsCount &&
        operatorAccesses == other.operatorAccesses &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, operatorsCount.hashCode);
    _$hash = $jc(_$hash, operatorAccesses.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumTypeNested')
          ..add('id', id)
          ..add('area', area)
          ..add('name', name)
          ..add('price', price)
          ..add('active', active)
          ..add('operatorsCount', operatorsCount)
          ..add('operatorAccesses', operatorAccesses)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PremiumTypeNestedBuilder
    implements Builder<PremiumTypeNested, PremiumTypeNestedBuilder> {
  _$PremiumTypeNested? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _area;
  int? get area => _$this._area;
  set area(int? area) => _$this._area = area;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _operatorsCount;
  String? get operatorsCount => _$this._operatorsCount;
  set operatorsCount(String? operatorsCount) =>
      _$this._operatorsCount = operatorsCount;

  ListBuilder<OperatorAccessNested>? _operatorAccesses;
  ListBuilder<OperatorAccessNested> get operatorAccesses =>
      _$this._operatorAccesses ??= ListBuilder<OperatorAccessNested>();
  set operatorAccesses(ListBuilder<OperatorAccessNested>? operatorAccesses) =>
      _$this._operatorAccesses = operatorAccesses;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PremiumTypeNestedBuilder() {
    PremiumTypeNested._defaults(this);
  }

  PremiumTypeNestedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _area = $v.area;
      _name = $v.name;
      _price = $v.price;
      _active = $v.active;
      _operatorsCount = $v.operatorsCount;
      _operatorAccesses = $v.operatorAccesses.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumTypeNested other) {
    _$v = other as _$PremiumTypeNested;
  }

  @override
  void update(void Function(PremiumTypeNestedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumTypeNested build() => _build();

  _$PremiumTypeNested _build() {
    _$PremiumTypeNested _$result;
    try {
      _$result = _$v ??
          _$PremiumTypeNested._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PremiumTypeNested', 'id'),
            area: area,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PremiumTypeNested', 'name'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PremiumTypeNested', 'price'),
            active: BuiltValueNullFieldError.checkNotNull(
                active, r'PremiumTypeNested', 'active'),
            operatorsCount: BuiltValueNullFieldError.checkNotNull(
                operatorsCount, r'PremiumTypeNested', 'operatorsCount'),
            operatorAccesses: operatorAccesses.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PremiumTypeNested', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'PremiumTypeNested', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatorAccesses';
        operatorAccesses.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumTypeNested', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
