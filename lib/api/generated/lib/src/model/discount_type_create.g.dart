// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_type_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscountTypeCreate extends DiscountTypeCreate {
  @override
  final String name;
  @override
  final ValueTypeEnum valueType;
  @override
  final DiscountTypeEnum discountType;
  @override
  final double? percentageValue;
  @override
  final double? fixedValue;
  @override
  final ExpirationTypeEnum expirationType;
  @override
  final int? expirationValue;
  @override
  final bool? stackable;
  @override
  final bool? combinable;
  @override
  final bool? active;

  factory _$DiscountTypeCreate(
          [void Function(DiscountTypeCreateBuilder)? updates]) =>
      (DiscountTypeCreateBuilder()..update(updates))._build();

  _$DiscountTypeCreate._(
      {required this.name,
      required this.valueType,
      required this.discountType,
      this.percentageValue,
      this.fixedValue,
      required this.expirationType,
      this.expirationValue,
      this.stackable,
      this.combinable,
      this.active})
      : super._();
  @override
  DiscountTypeCreate rebuild(
          void Function(DiscountTypeCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscountTypeCreateBuilder toBuilder() =>
      DiscountTypeCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscountTypeCreate &&
        name == other.name &&
        valueType == other.valueType &&
        discountType == other.discountType &&
        percentageValue == other.percentageValue &&
        fixedValue == other.fixedValue &&
        expirationType == other.expirationType &&
        expirationValue == other.expirationValue &&
        stackable == other.stackable &&
        combinable == other.combinable &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, percentageValue.hashCode);
    _$hash = $jc(_$hash, fixedValue.hashCode);
    _$hash = $jc(_$hash, expirationType.hashCode);
    _$hash = $jc(_$hash, expirationValue.hashCode);
    _$hash = $jc(_$hash, stackable.hashCode);
    _$hash = $jc(_$hash, combinable.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiscountTypeCreate')
          ..add('name', name)
          ..add('valueType', valueType)
          ..add('discountType', discountType)
          ..add('percentageValue', percentageValue)
          ..add('fixedValue', fixedValue)
          ..add('expirationType', expirationType)
          ..add('expirationValue', expirationValue)
          ..add('stackable', stackable)
          ..add('combinable', combinable)
          ..add('active', active))
        .toString();
  }
}

class DiscountTypeCreateBuilder
    implements Builder<DiscountTypeCreate, DiscountTypeCreateBuilder> {
  _$DiscountTypeCreate? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ValueTypeEnum? _valueType;
  ValueTypeEnum? get valueType => _$this._valueType;
  set valueType(ValueTypeEnum? valueType) => _$this._valueType = valueType;

  DiscountTypeEnum? _discountType;
  DiscountTypeEnum? get discountType => _$this._discountType;
  set discountType(DiscountTypeEnum? discountType) =>
      _$this._discountType = discountType;

  double? _percentageValue;
  double? get percentageValue => _$this._percentageValue;
  set percentageValue(double? percentageValue) =>
      _$this._percentageValue = percentageValue;

  double? _fixedValue;
  double? get fixedValue => _$this._fixedValue;
  set fixedValue(double? fixedValue) => _$this._fixedValue = fixedValue;

  ExpirationTypeEnum? _expirationType;
  ExpirationTypeEnum? get expirationType => _$this._expirationType;
  set expirationType(ExpirationTypeEnum? expirationType) =>
      _$this._expirationType = expirationType;

  int? _expirationValue;
  int? get expirationValue => _$this._expirationValue;
  set expirationValue(int? expirationValue) =>
      _$this._expirationValue = expirationValue;

  bool? _stackable;
  bool? get stackable => _$this._stackable;
  set stackable(bool? stackable) => _$this._stackable = stackable;

  bool? _combinable;
  bool? get combinable => _$this._combinable;
  set combinable(bool? combinable) => _$this._combinable = combinable;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  DiscountTypeCreateBuilder() {
    DiscountTypeCreate._defaults(this);
  }

  DiscountTypeCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _valueType = $v.valueType;
      _discountType = $v.discountType;
      _percentageValue = $v.percentageValue;
      _fixedValue = $v.fixedValue;
      _expirationType = $v.expirationType;
      _expirationValue = $v.expirationValue;
      _stackable = $v.stackable;
      _combinable = $v.combinable;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscountTypeCreate other) {
    _$v = other as _$DiscountTypeCreate;
  }

  @override
  void update(void Function(DiscountTypeCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscountTypeCreate build() => _build();

  _$DiscountTypeCreate _build() {
    final _$result = _$v ??
        _$DiscountTypeCreate._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DiscountTypeCreate', 'name'),
          valueType: BuiltValueNullFieldError.checkNotNull(
              valueType, r'DiscountTypeCreate', 'valueType'),
          discountType: BuiltValueNullFieldError.checkNotNull(
              discountType, r'DiscountTypeCreate', 'discountType'),
          percentageValue: percentageValue,
          fixedValue: fixedValue,
          expirationType: BuiltValueNullFieldError.checkNotNull(
              expirationType, r'DiscountTypeCreate', 'expirationType'),
          expirationValue: expirationValue,
          stackable: stackable,
          combinable: combinable,
          active: active,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
