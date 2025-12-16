// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_type_create_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DiscountTypeCreateResponse extends DiscountTypeCreateResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final String valueType;
  @override
  final String discountType;
  @override
  final double? percentageValue;
  @override
  final double? fixedValue;
  @override
  final String displayValue;
  @override
  final String expirationType;
  @override
  final int? expirationValue;
  @override
  final bool stackable;
  @override
  final bool combinable;
  @override
  final bool active;
  @override
  final DateTime createdAt;

  factory _$DiscountTypeCreateResponse(
          [void Function(DiscountTypeCreateResponseBuilder)? updates]) =>
      (DiscountTypeCreateResponseBuilder()..update(updates))._build();

  _$DiscountTypeCreateResponse._(
      {required this.id,
      required this.name,
      required this.valueType,
      required this.discountType,
      this.percentageValue,
      this.fixedValue,
      required this.displayValue,
      required this.expirationType,
      this.expirationValue,
      required this.stackable,
      required this.combinable,
      required this.active,
      required this.createdAt})
      : super._();
  @override
  DiscountTypeCreateResponse rebuild(
          void Function(DiscountTypeCreateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscountTypeCreateResponseBuilder toBuilder() =>
      DiscountTypeCreateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscountTypeCreateResponse &&
        id == other.id &&
        name == other.name &&
        valueType == other.valueType &&
        discountType == other.discountType &&
        percentageValue == other.percentageValue &&
        fixedValue == other.fixedValue &&
        displayValue == other.displayValue &&
        expirationType == other.expirationType &&
        expirationValue == other.expirationValue &&
        stackable == other.stackable &&
        combinable == other.combinable &&
        active == other.active &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, valueType.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, percentageValue.hashCode);
    _$hash = $jc(_$hash, fixedValue.hashCode);
    _$hash = $jc(_$hash, displayValue.hashCode);
    _$hash = $jc(_$hash, expirationType.hashCode);
    _$hash = $jc(_$hash, expirationValue.hashCode);
    _$hash = $jc(_$hash, stackable.hashCode);
    _$hash = $jc(_$hash, combinable.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DiscountTypeCreateResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('valueType', valueType)
          ..add('discountType', discountType)
          ..add('percentageValue', percentageValue)
          ..add('fixedValue', fixedValue)
          ..add('displayValue', displayValue)
          ..add('expirationType', expirationType)
          ..add('expirationValue', expirationValue)
          ..add('stackable', stackable)
          ..add('combinable', combinable)
          ..add('active', active)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class DiscountTypeCreateResponseBuilder
    implements
        Builder<DiscountTypeCreateResponse, DiscountTypeCreateResponseBuilder> {
  _$DiscountTypeCreateResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _valueType;
  String? get valueType => _$this._valueType;
  set valueType(String? valueType) => _$this._valueType = valueType;

  String? _discountType;
  String? get discountType => _$this._discountType;
  set discountType(String? discountType) => _$this._discountType = discountType;

  double? _percentageValue;
  double? get percentageValue => _$this._percentageValue;
  set percentageValue(double? percentageValue) =>
      _$this._percentageValue = percentageValue;

  double? _fixedValue;
  double? get fixedValue => _$this._fixedValue;
  set fixedValue(double? fixedValue) => _$this._fixedValue = fixedValue;

  String? _displayValue;
  String? get displayValue => _$this._displayValue;
  set displayValue(String? displayValue) => _$this._displayValue = displayValue;

  String? _expirationType;
  String? get expirationType => _$this._expirationType;
  set expirationType(String? expirationType) =>
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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DiscountTypeCreateResponseBuilder() {
    DiscountTypeCreateResponse._defaults(this);
  }

  DiscountTypeCreateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _valueType = $v.valueType;
      _discountType = $v.discountType;
      _percentageValue = $v.percentageValue;
      _fixedValue = $v.fixedValue;
      _displayValue = $v.displayValue;
      _expirationType = $v.expirationType;
      _expirationValue = $v.expirationValue;
      _stackable = $v.stackable;
      _combinable = $v.combinable;
      _active = $v.active;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscountTypeCreateResponse other) {
    _$v = other as _$DiscountTypeCreateResponse;
  }

  @override
  void update(void Function(DiscountTypeCreateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DiscountTypeCreateResponse build() => _build();

  _$DiscountTypeCreateResponse _build() {
    final _$result = _$v ??
        _$DiscountTypeCreateResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DiscountTypeCreateResponse', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DiscountTypeCreateResponse', 'name'),
          valueType: BuiltValueNullFieldError.checkNotNull(
              valueType, r'DiscountTypeCreateResponse', 'valueType'),
          discountType: BuiltValueNullFieldError.checkNotNull(
              discountType, r'DiscountTypeCreateResponse', 'discountType'),
          percentageValue: percentageValue,
          fixedValue: fixedValue,
          displayValue: BuiltValueNullFieldError.checkNotNull(
              displayValue, r'DiscountTypeCreateResponse', 'displayValue'),
          expirationType: BuiltValueNullFieldError.checkNotNull(
              expirationType, r'DiscountTypeCreateResponse', 'expirationType'),
          expirationValue: expirationValue,
          stackable: BuiltValueNullFieldError.checkNotNull(
              stackable, r'DiscountTypeCreateResponse', 'stackable'),
          combinable: BuiltValueNullFieldError.checkNotNull(
              combinable, r'DiscountTypeCreateResponse', 'combinable'),
          active: BuiltValueNullFieldError.checkNotNull(
              active, r'DiscountTypeCreateResponse', 'active'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'DiscountTypeCreateResponse', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
