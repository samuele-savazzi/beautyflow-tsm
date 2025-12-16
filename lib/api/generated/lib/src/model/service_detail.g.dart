// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceDetail extends ServiceDetail {
  @override
  final int id;
  @override
  final String name;
  @override
  final String descption;
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
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>? phases;
  @override
  final Map<String, dynamic>? questions;
  @override
  final Map<String, dynamic>? regularCustomerQuestions;

  factory _$ServiceDetail([void Function(ServiceDetailBuilder)? updates]) =>
      (ServiceDetailBuilder()..update(updates))._build();

  _$ServiceDetail._(
      {required this.id,
      required this.name,
      required this.descption,
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
      this.phases,
      this.questions,
      this.regularCustomerQuestions})
      : super._();
  @override
  ServiceDetail rebuild(void Function(ServiceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceDetailBuilder toBuilder() => ServiceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceDetail &&
        id == other.id &&
        name == other.name &&
        descption == other.descption &&
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
        phases == other.phases &&
        questions == other.questions &&
        regularCustomerQuestions == other.regularCustomerQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, descption.hashCode);
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
    _$hash = $jc(_$hash, phases.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, regularCustomerQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceDetail')
          ..add('id', id)
          ..add('name', name)
          ..add('descption', descption)
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
          ..add('phases', phases)
          ..add('questions', questions)
          ..add('regularCustomerQuestions', regularCustomerQuestions))
        .toString();
  }
}

class ServiceDetailBuilder
    implements Builder<ServiceDetail, ServiceDetailBuilder> {
  _$ServiceDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _descption;
  String? get descption => _$this._descption;
  set descption(String? descption) => _$this._descption = descption;

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

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _phases;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get phases =>
      _$this._phases ??= ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set phases(ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? phases) =>
      _$this._phases = phases;

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

  ServiceDetailBuilder() {
    ServiceDetail._defaults(this);
  }

  ServiceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _descption = $v.descption;
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
      _phases = $v.phases?.toBuilder();
      _questions = $v.questions;
      _regularCustomerQuestions = $v.regularCustomerQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceDetail other) {
    _$v = other as _$ServiceDetail;
  }

  @override
  void update(void Function(ServiceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceDetail build() => _build();

  _$ServiceDetail _build() {
    _$ServiceDetail _$result;
    try {
      _$result = _$v ??
          _$ServiceDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceDetail', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ServiceDetail', 'name'),
            descption: BuiltValueNullFieldError.checkNotNull(
                descption, r'ServiceDetail', 'descption'),
            minPrice: BuiltValueNullFieldError.checkNotNull(
                minPrice, r'ServiceDetail', 'minPrice'),
            chemical: BuiltValueNullFieldError.checkNotNull(
                chemical, r'ServiceDetail', 'chemical'),
            bookable: BuiltValueNullFieldError.checkNotNull(
                bookable, r'ServiceDetail', 'bookable'),
            gender: gender,
            genderDisplay: genderDisplay,
            composite: BuiltValueNullFieldError.checkNotNull(
                composite, r'ServiceDetail', 'composite'),
            icon: icon,
            macroArea: macroArea,
            macroAreaDisplay: macroAreaDisplay,
            times: times.build(),
            phases: _phases?.build(),
            questions: questions,
            regularCustomerQuestions: regularCustomerQuestions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'times';
        times.build();
        _$failedField = 'phases';
        _phases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
