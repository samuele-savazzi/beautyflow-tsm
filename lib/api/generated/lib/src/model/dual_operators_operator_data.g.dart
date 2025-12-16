// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_operator_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsOperatorData extends DualOperatorsOperatorData {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String mansion;
  @override
  final String photo;

  factory _$DualOperatorsOperatorData(
          [void Function(DualOperatorsOperatorDataBuilder)? updates]) =>
      (DualOperatorsOperatorDataBuilder()..update(updates))._build();

  _$DualOperatorsOperatorData._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.mansion,
      required this.photo})
      : super._();
  @override
  DualOperatorsOperatorData rebuild(
          void Function(DualOperatorsOperatorDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsOperatorDataBuilder toBuilder() =>
      DualOperatorsOperatorDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsOperatorData &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        mansion == other.mansion &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, mansion.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DualOperatorsOperatorData')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('mansion', mansion)
          ..add('photo', photo))
        .toString();
  }
}

class DualOperatorsOperatorDataBuilder
    implements
        Builder<DualOperatorsOperatorData, DualOperatorsOperatorDataBuilder> {
  _$DualOperatorsOperatorData? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _mansion;
  String? get mansion => _$this._mansion;
  set mansion(String? mansion) => _$this._mansion = mansion;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DualOperatorsOperatorDataBuilder() {
    DualOperatorsOperatorData._defaults(this);
  }

  DualOperatorsOperatorDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _mansion = $v.mansion;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DualOperatorsOperatorData other) {
    _$v = other as _$DualOperatorsOperatorData;
  }

  @override
  void update(void Function(DualOperatorsOperatorDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsOperatorData build() => _build();

  _$DualOperatorsOperatorData _build() {
    final _$result = _$v ??
        _$DualOperatorsOperatorData._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DualOperatorsOperatorData', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'DualOperatorsOperatorData', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'DualOperatorsOperatorData', 'lastName'),
          mansion: BuiltValueNullFieldError.checkNotNull(
              mansion, r'DualOperatorsOperatorData', 'mansion'),
          photo: BuiltValueNullFieldError.checkNotNull(
              photo, r'DualOperatorsOperatorData', 'photo'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
