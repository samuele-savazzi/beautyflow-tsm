// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeneralInfo extends GeneralInfo {
  @override
  final String name;
  @override
  final String description;
  @override
  final String minPrice;
  @override
  final bool isChemical;
  @override
  final bool? isBookable;
  @override
  final Gender63eEnum? gender;
  @override
  final MacroAreaEnum? macroArea;

  factory _$GeneralInfo([void Function(GeneralInfoBuilder)? updates]) =>
      (GeneralInfoBuilder()..update(updates))._build();

  _$GeneralInfo._(
      {required this.name,
      required this.description,
      required this.minPrice,
      required this.isChemical,
      this.isBookable,
      this.gender,
      this.macroArea})
      : super._();
  @override
  GeneralInfo rebuild(void Function(GeneralInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralInfoBuilder toBuilder() => GeneralInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralInfo &&
        name == other.name &&
        description == other.description &&
        minPrice == other.minPrice &&
        isChemical == other.isChemical &&
        isBookable == other.isBookable &&
        gender == other.gender &&
        macroArea == other.macroArea;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, minPrice.hashCode);
    _$hash = $jc(_$hash, isChemical.hashCode);
    _$hash = $jc(_$hash, isBookable.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, macroArea.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneralInfo')
          ..add('name', name)
          ..add('description', description)
          ..add('minPrice', minPrice)
          ..add('isChemical', isChemical)
          ..add('isBookable', isBookable)
          ..add('gender', gender)
          ..add('macroArea', macroArea))
        .toString();
  }
}

class GeneralInfoBuilder implements Builder<GeneralInfo, GeneralInfoBuilder> {
  _$GeneralInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _minPrice;
  String? get minPrice => _$this._minPrice;
  set minPrice(String? minPrice) => _$this._minPrice = minPrice;

  bool? _isChemical;
  bool? get isChemical => _$this._isChemical;
  set isChemical(bool? isChemical) => _$this._isChemical = isChemical;

  bool? _isBookable;
  bool? get isBookable => _$this._isBookable;
  set isBookable(bool? isBookable) => _$this._isBookable = isBookable;

  Gender63eEnum? _gender;
  Gender63eEnum? get gender => _$this._gender;
  set gender(Gender63eEnum? gender) => _$this._gender = gender;

  MacroAreaEnum? _macroArea;
  MacroAreaEnum? get macroArea => _$this._macroArea;
  set macroArea(MacroAreaEnum? macroArea) => _$this._macroArea = macroArea;

  GeneralInfoBuilder() {
    GeneralInfo._defaults(this);
  }

  GeneralInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _minPrice = $v.minPrice;
      _isChemical = $v.isChemical;
      _isBookable = $v.isBookable;
      _gender = $v.gender;
      _macroArea = $v.macroArea;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralInfo other) {
    _$v = other as _$GeneralInfo;
  }

  @override
  void update(void Function(GeneralInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneralInfo build() => _build();

  _$GeneralInfo _build() {
    final _$result = _$v ??
        _$GeneralInfo._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GeneralInfo', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'GeneralInfo', 'description'),
          minPrice: BuiltValueNullFieldError.checkNotNull(
              minPrice, r'GeneralInfo', 'minPrice'),
          isChemical: BuiltValueNullFieldError.checkNotNull(
              isChemical, r'GeneralInfo', 'isChemical'),
          isBookable: isBookable,
          gender: gender,
          macroArea: macroArea,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
