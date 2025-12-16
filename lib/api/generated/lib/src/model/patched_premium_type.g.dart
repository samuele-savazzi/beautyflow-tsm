// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_premium_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedPremiumType extends PatchedPremiumType {
  @override
  final int? id;
  @override
  final int? area;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final bool? active;
  @override
  final int? operatorsCount;
  @override
  final BuiltList<OperatorAccessNested>? operatorAccesses;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>? availableOperators;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$PatchedPremiumType(
          [void Function(PatchedPremiumTypeBuilder)? updates]) =>
      (PatchedPremiumTypeBuilder()..update(updates))._build();

  _$PatchedPremiumType._(
      {this.id,
      this.area,
      this.name,
      this.price,
      this.active,
      this.operatorsCount,
      this.operatorAccesses,
      this.availableOperators,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  PatchedPremiumType rebuild(
          void Function(PatchedPremiumTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedPremiumTypeBuilder toBuilder() =>
      PatchedPremiumTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedPremiumType &&
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
    return (newBuiltValueToStringHelper(r'PatchedPremiumType')
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

class PatchedPremiumTypeBuilder
    implements Builder<PatchedPremiumType, PatchedPremiumTypeBuilder> {
  _$PatchedPremiumType? _$v;

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

  PatchedPremiumTypeBuilder() {
    PatchedPremiumType._defaults(this);
  }

  PatchedPremiumTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _area = $v.area;
      _name = $v.name;
      _price = $v.price;
      _active = $v.active;
      _operatorsCount = $v.operatorsCount;
      _operatorAccesses = $v.operatorAccesses?.toBuilder();
      _availableOperators = $v.availableOperators?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchedPremiumType other) {
    _$v = other as _$PatchedPremiumType;
  }

  @override
  void update(void Function(PatchedPremiumTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedPremiumType build() => _build();

  _$PatchedPremiumType _build() {
    _$PatchedPremiumType _$result;
    try {
      _$result = _$v ??
          _$PatchedPremiumType._(
            id: id,
            area: area,
            name: name,
            price: price,
            active: active,
            operatorsCount: operatorsCount,
            operatorAccesses: _operatorAccesses?.build(),
            availableOperators: _availableOperators?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatorAccesses';
        _operatorAccesses?.build();
        _$failedField = 'availableOperators';
        _availableOperators?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PatchedPremiumType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
