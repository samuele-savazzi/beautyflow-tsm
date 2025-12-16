// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumType extends PremiumType {
  @override
  final int id;
  @override
  final int? area;
  @override
  final String name;
  @override
  final double price;
  @override
  final bool? active;
  @override
  final int operatorsCount;
  @override
  final BuiltList<OperatorAccessNested> operatorAccesses;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> availableOperators;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$PremiumType([void Function(PremiumTypeBuilder)? updates]) =>
      (PremiumTypeBuilder()..update(updates))._build();

  _$PremiumType._(
      {required this.id,
      this.area,
      required this.name,
      required this.price,
      this.active,
      required this.operatorsCount,
      required this.operatorAccesses,
      required this.availableOperators,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  PremiumType rebuild(void Function(PremiumTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumTypeBuilder toBuilder() => PremiumTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumType &&
        id == other.id &&
        area == other.area &&
        name == other.name &&
        price == other.price &&
        active == other.active &&
        operatorsCount == other.operatorsCount &&
        operatorAccesses == other.operatorAccesses &&
        availableOperators == other.availableOperators &&
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
    _$hash = $jc(_$hash, availableOperators.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumType')
          ..add('id', id)
          ..add('area', area)
          ..add('name', name)
          ..add('price', price)
          ..add('active', active)
          ..add('operatorsCount', operatorsCount)
          ..add('operatorAccesses', operatorAccesses)
          ..add('availableOperators', availableOperators)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class PremiumTypeBuilder implements Builder<PremiumType, PremiumTypeBuilder> {
  _$PremiumType? _$v;

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

  int? _operatorsCount;
  int? get operatorsCount => _$this._operatorsCount;
  set operatorsCount(int? operatorsCount) =>
      _$this._operatorsCount = operatorsCount;

  ListBuilder<OperatorAccessNested>? _operatorAccesses;
  ListBuilder<OperatorAccessNested> get operatorAccesses =>
      _$this._operatorAccesses ??= ListBuilder<OperatorAccessNested>();
  set operatorAccesses(ListBuilder<OperatorAccessNested>? operatorAccesses) =>
      _$this._operatorAccesses = operatorAccesses;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _availableOperators;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get availableOperators =>
      _$this._availableOperators ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set availableOperators(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>?
              availableOperators) =>
      _$this._availableOperators = availableOperators;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PremiumTypeBuilder() {
    PremiumType._defaults(this);
  }

  PremiumTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _area = $v.area;
      _name = $v.name;
      _price = $v.price;
      _active = $v.active;
      _operatorsCount = $v.operatorsCount;
      _operatorAccesses = $v.operatorAccesses.toBuilder();
      _availableOperators = $v.availableOperators.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumType other) {
    _$v = other as _$PremiumType;
  }

  @override
  void update(void Function(PremiumTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumType build() => _build();

  _$PremiumType _build() {
    _$PremiumType _$result;
    try {
      _$result = _$v ??
          _$PremiumType._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'PremiumType', 'id'),
            area: area,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PremiumType', 'name'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PremiumType', 'price'),
            active: active,
            operatorsCount: BuiltValueNullFieldError.checkNotNull(
                operatorsCount, r'PremiumType', 'operatorsCount'),
            operatorAccesses: operatorAccesses.build(),
            availableOperators: availableOperators.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'PremiumType', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'PremiumType', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatorAccesses';
        operatorAccesses.build();
        _$failedField = 'availableOperators';
        availableOperators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
