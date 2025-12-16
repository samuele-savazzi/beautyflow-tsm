// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceList extends ServiceList {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final double minPrice;
  @override
  final bool chemical;
  @override
  final bool bookable;
  @override
  final Gender63eEnum? gender;
  @override
  final String? genderDisplay;
  @override
  final bool composite;
  @override
  final String? icon;
  @override
  final MacroAreaEnum? macroArea;
  @override
  final String? macroAreaDisplay;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> times;
  @override
  final Map<String, dynamic>? questions;
  @override
  final Map<String, dynamic>? regularCustomerQuestions;

  factory _$ServiceList([void Function(ServiceListBuilder)? updates]) =>
      (ServiceListBuilder()..update(updates))._build();

  _$ServiceList._(
      {required this.id,
      required this.name,
      required this.description,
      required this.minPrice,
      required this.chemical,
      required this.bookable,
      this.gender,
      this.genderDisplay,
      required this.composite,
      this.icon,
      this.macroArea,
      this.macroAreaDisplay,
      required this.times,
      this.questions,
      this.regularCustomerQuestions})
      : super._();
  @override
  ServiceList rebuild(void Function(ServiceListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceListBuilder toBuilder() => ServiceListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceList &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        minPrice == other.minPrice &&
        chemical == other.chemical &&
        bookable == other.bookable &&
        gender == other.gender &&
        genderDisplay == other.genderDisplay &&
        composite == other.composite &&
        icon == other.icon &&
        macroArea == other.macroArea &&
        macroAreaDisplay == other.macroAreaDisplay &&
        times == other.times &&
        questions == other.questions &&
        regularCustomerQuestions == other.regularCustomerQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, chemical.hashCode);
    _$hash = $jc(_$hash, bookable.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, genderDisplay.hashCode);
    _$hash = $jc(_$hash, composite.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, macroArea.hashCode);
    _$hash = $jc(_$hash, macroAreaDisplay.hashCode);
    _$hash = $jc(_$hash, times.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, regularCustomerQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceList')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('minPrice', minPrice)
          ..add('chemical', chemical)
          ..add('bookable', bookable)
          ..add('gender', gender)
          ..add('genderDisplay', genderDisplay)
          ..add('composite', composite)
          ..add('icon', icon)
          ..add('macroArea', macroArea)
          ..add('macroAreaDisplay', macroAreaDisplay)
          ..add('times', times)
          ..add('questions', questions)
          ..add('regularCustomerQuestions', regularCustomerQuestions))
        .toString();
  }
}

class ServiceListBuilder implements Builder<ServiceList, ServiceListBuilder> {
  _$ServiceList? _$v;

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

  bool? _bookable;
  bool? get bookable => _$this._bookable;
  set bookable(bool? bookable) => _$this._bookable = bookable;

  Gender63eEnum? _gender;
  Gender63eEnum? get gender => _$this._gender;
  set gender(Gender63eEnum? gender) => _$this._gender = gender;

  String? _genderDisplay;
  String? get genderDisplay => _$this._genderDisplay;
  set genderDisplay(String? genderDisplay) =>
      _$this._genderDisplay = genderDisplay;

  bool? _composite;
  bool? get composite => _$this._composite;
  set composite(bool? composite) => _$this._composite = composite;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  MacroAreaEnum? _macroArea;
  MacroAreaEnum? get macroArea => _$this._macroArea;
  set macroArea(MacroAreaEnum? macroArea) => _$this._macroArea = macroArea;

  String? _macroAreaDisplay;
  String? get macroAreaDisplay => _$this._macroAreaDisplay;
  set macroAreaDisplay(String? macroAreaDisplay) =>
      _$this._macroAreaDisplay = macroAreaDisplay;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _times;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get times =>
      _$this._times ??= ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set times(ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? times) =>
      _$this._times = times;

  Map<String, dynamic>? _questions;
  Map<String, dynamic>? get questions => _$this._questions;
  set questions(Map<String, dynamic>? questions) =>
      _$this._questions = questions;

  Map<String, dynamic>? _regularCustomerQuestions;
  Map<String, dynamic>? get regularCustomerQuestions =>
      _$this._regularCustomerQuestions;
  set regularCustomerQuestions(
          Map<String, dynamic>? regularCustomerQuestions) =>
      _$this._regularCustomerQuestions = regularCustomerQuestions;

  ServiceListBuilder() {
    ServiceList._defaults(this);
  }

  ServiceListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _minPrice = $v.minPrice;
      _chemical = $v.chemical;
      _bookable = $v.bookable;
      _gender = $v.gender;
      _genderDisplay = $v.genderDisplay;
      _composite = $v.composite;
      _icon = $v.icon;
      _macroArea = $v.macroArea;
      _macroAreaDisplay = $v.macroAreaDisplay;
      _times = $v.times.toBuilder();
      _questions = $v.questions;
      _regularCustomerQuestions = $v.regularCustomerQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceList other) {
    _$v = other as _$ServiceList;
  }

  @override
  void update(void Function(ServiceListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceList build() => _build();

  _$ServiceList _build() {
    _$ServiceList _$result;
    try {
      _$result = _$v ??
          _$ServiceList._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'ServiceList', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ServiceList', 'name'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ServiceList', 'description'),
            minPrice: BuiltValueNullFieldError.checkNotNull(
                minPrice, r'ServiceList', 'minPrice'),
            chemical: BuiltValueNullFieldError.checkNotNull(
                chemical, r'ServiceList', 'chemical'),
            bookable: BuiltValueNullFieldError.checkNotNull(
                bookable, r'ServiceList', 'bookable'),
            gender: gender,
            genderDisplay: genderDisplay,
            composite: BuiltValueNullFieldError.checkNotNull(
                composite, r'ServiceList', 'composite'),
            icon: icon,
            macroArea: macroArea,
            macroAreaDisplay: macroAreaDisplay,
            times: times.build(),
            questions: questions,
            regularCustomerQuestions: regularCustomerQuestions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'times';
        times.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
