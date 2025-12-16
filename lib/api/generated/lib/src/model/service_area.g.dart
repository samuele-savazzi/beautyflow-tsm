// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceArea extends ServiceArea {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double? minPrice;
  @override
  final bool chemical;
  @override
  final Map<String, dynamic>? questions;
  @override
  final String icon;
  @override
  final BuiltList<Workstation> workstations;
  @override
  final BuiltList<OperatorTime>? operatorTimes;
  @override
  final BuiltList<OperatorPricing>? operatorPricing;
  @override
  final String macroArea;
  @override
  final String price;

  factory _$ServiceArea([void Function(ServiceAreaBuilder)? updates]) =>
      (ServiceAreaBuilder()..update(updates))._build();

  _$ServiceArea._(
      {required this.id,
      required this.name,
      required this.description,
      this.minPrice,
      required this.chemical,
      this.questions,
      required this.icon,
      required this.workstations,
      this.operatorTimes,
      this.operatorPricing,
      required this.macroArea,
      required this.price})
      : super._();
  @override
  ServiceArea rebuild(void Function(ServiceAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceAreaBuilder toBuilder() => ServiceAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceArea &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        minPrice == other.minPrice &&
        chemical == other.chemical &&
        questions == other.questions &&
        icon == other.icon &&
        workstations == other.workstations &&
        operatorTimes == other.operatorTimes &&
        operatorPricing == other.operatorPricing &&
        macroArea == other.macroArea &&
        price == other.price;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, chemical.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, workstations.hashCode);
    _$hash = $jc(_$hash, operatorTimes.hashCode);
    _$hash = $jc(_$hash, operatorPricing.hashCode);
    _$hash = $jc(_$hash, macroArea.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceArea')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('minPrice', minPrice)
          ..add('chemical', chemical)
          ..add('questions', questions)
          ..add('icon', icon)
          ..add('workstations', workstations)
          ..add('operatorTimes', operatorTimes)
          ..add('operatorPricing', operatorPricing)
          ..add('macroArea', macroArea)
          ..add('price', price))
        .toString();
  }
}

class ServiceAreaBuilder implements Builder<ServiceArea, ServiceAreaBuilder> {
  _$ServiceArea? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _minPrice;
  double? get minPrice => _$this._minPrice;
  set minPrice(double? minPrice) => _$this._minPrice = minPrice;

  bool? _chemical;
  bool? get chemical => _$this._chemical;
  set chemical(bool? chemical) => _$this._chemical = chemical;

  Map<String, dynamic>? _questions;
  Map<String, dynamic>? get questions => _$this._questions;
  set questions(Map<String, dynamic>? questions) =>
      _$this._questions = questions;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  ListBuilder<Workstation>? _workstations;
  ListBuilder<Workstation> get workstations =>
      _$this._workstations ??= ListBuilder<Workstation>();
  set workstations(ListBuilder<Workstation>? workstations) =>
      _$this._workstations = workstations;

  ListBuilder<OperatorTime>? _operatorTimes;
  ListBuilder<OperatorTime> get operatorTimes =>
      _$this._operatorTimes ??= ListBuilder<OperatorTime>();
  set operatorTimes(ListBuilder<OperatorTime>? operatorTimes) =>
      _$this._operatorTimes = operatorTimes;

  ListBuilder<OperatorPricing>? _operatorPricing;
  ListBuilder<OperatorPricing> get operatorPricing =>
      _$this._operatorPricing ??= ListBuilder<OperatorPricing>();
  set operatorPricing(ListBuilder<OperatorPricing>? operatorPricing) =>
      _$this._operatorPricing = operatorPricing;

  String? _macroArea;
  String? get macroArea => _$this._macroArea;
  set macroArea(String? macroArea) => _$this._macroArea = macroArea;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  ServiceAreaBuilder() {
    ServiceArea._defaults(this);
  }

  ServiceAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _minPrice = $v.minPrice;
      _chemical = $v.chemical;
      _questions = $v.questions;
      _icon = $v.icon;
      _workstations = $v.workstations.toBuilder();
      _operatorTimes = $v.operatorTimes?.toBuilder();
      _operatorPricing = $v.operatorPricing?.toBuilder();
      _macroArea = $v.macroArea;
      _price = $v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceArea other) {
    _$v = other as _$ServiceArea;
  }

  @override
  void update(void Function(ServiceAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceArea build() => _build();

  _$ServiceArea _build() {
    _$ServiceArea _$result;
    try {
      _$result = _$v ??
          _$ServiceArea._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ServiceArea', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ServiceArea', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ServiceArea', 'description'),
            minPrice: minPrice,
            chemical: BuiltValueNullFieldError.checkNotNull(
                chemical, r'ServiceArea', 'chemical'),
            questions: questions,
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'ServiceArea', 'icon'),
            workstations: workstations.build(),
            operatorTimes: _operatorTimes?.build(),
            operatorPricing: _operatorPricing?.build(),
            macroArea: BuiltValueNullFieldError.checkNotNull(
                macroArea, r'ServiceArea', 'macroArea'),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'ServiceArea', 'price'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstations';
        workstations.build();
        _$failedField = 'operatorTimes';
        _operatorTimes?.build();
        _$failedField = 'operatorPricing';
        _operatorPricing?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceArea', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
