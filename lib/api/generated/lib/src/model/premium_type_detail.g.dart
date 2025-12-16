// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_type_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PremiumTypeDetail extends PremiumTypeDetail {
  @override
  final int id;
  @override
  final String name;
  @override
  final double price;
  @override
  final AreaBasic area;
  @override
  final BuiltList<OperatorPremiumAccess> operators;

  factory _$PremiumTypeDetail(
          [void Function(PremiumTypeDetailBuilder)? updates]) =>
      (PremiumTypeDetailBuilder()..update(updates))._build();

  _$PremiumTypeDetail._(
      {required this.id,
      required this.name,
      required this.price,
      required this.area,
      required this.operators})
      : super._();
  @override
  PremiumTypeDetail rebuild(void Function(PremiumTypeDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PremiumTypeDetailBuilder toBuilder() =>
      PremiumTypeDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumTypeDetail &&
        id == other.id &&
        name == other.name &&
        price == other.price &&
        area == other.area &&
        operators == other.operators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PremiumTypeDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('price', price)
          ..add('area', area)
          ..add('operators', operators))
        .toString();
  }
}

class PremiumTypeDetailBuilder
    implements Builder<PremiumTypeDetail, PremiumTypeDetailBuilder> {
  _$PremiumTypeDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  AreaBasicBuilder? _area;
  AreaBasicBuilder get area => _$this._area ??= AreaBasicBuilder();
  set area(AreaBasicBuilder? area) => _$this._area = area;

  ListBuilder<OperatorPremiumAccess>? _operators;
  ListBuilder<OperatorPremiumAccess> get operators =>
      _$this._operators ??= ListBuilder<OperatorPremiumAccess>();
  set operators(ListBuilder<OperatorPremiumAccess>? operators) =>
      _$this._operators = operators;

  PremiumTypeDetailBuilder() {
    PremiumTypeDetail._defaults(this);
  }

  PremiumTypeDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _price = $v.price;
      _area = $v.area.toBuilder();
      _operators = $v.operators.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PremiumTypeDetail other) {
    _$v = other as _$PremiumTypeDetail;
  }

  @override
  void update(void Function(PremiumTypeDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PremiumTypeDetail build() => _build();

  _$PremiumTypeDetail _build() {
    _$PremiumTypeDetail _$result;
    try {
      _$result = _$v ??
          _$PremiumTypeDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PremiumTypeDetail', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PremiumTypeDetail', 'name'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'PremiumTypeDetail', 'price'),
            area: area.build(),
            operators: operators.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        area.build();
        _$failedField = 'operators';
        operators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PremiumTypeDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
