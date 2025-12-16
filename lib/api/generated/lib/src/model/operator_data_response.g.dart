// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_data_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDataResponse extends OperatorDataResponse {
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
  @override
  final FirstAvailabilityResponse firstAvailability;

  factory _$OperatorDataResponse(
          [void Function(OperatorDataResponseBuilder)? updates]) =>
      (OperatorDataResponseBuilder()..update(updates))._build();

  _$OperatorDataResponse._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.mansion,
      required this.photo,
      required this.firstAvailability})
      : super._();
  @override
  OperatorDataResponse rebuild(
          void Function(OperatorDataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDataResponseBuilder toBuilder() =>
      OperatorDataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDataResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        mansion == other.mansion &&
        photo == other.photo &&
        firstAvailability == other.firstAvailability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, mansion.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, firstAvailability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDataResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('mansion', mansion)
          ..add('photo', photo)
          ..add('firstAvailability', firstAvailability))
        .toString();
  }
}

class OperatorDataResponseBuilder
    implements Builder<OperatorDataResponse, OperatorDataResponseBuilder> {
  _$OperatorDataResponse? _$v;

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

  FirstAvailabilityResponseBuilder? _firstAvailability;
  FirstAvailabilityResponseBuilder get firstAvailability =>
      _$this._firstAvailability ??= FirstAvailabilityResponseBuilder();
  set firstAvailability(FirstAvailabilityResponseBuilder? firstAvailability) =>
      _$this._firstAvailability = firstAvailability;

  OperatorDataResponseBuilder() {
    OperatorDataResponse._defaults(this);
  }

  OperatorDataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _mansion = $v.mansion;
      _photo = $v.photo;
      _firstAvailability = $v.firstAvailability.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDataResponse other) {
    _$v = other as _$OperatorDataResponse;
  }

  @override
  void update(void Function(OperatorDataResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDataResponse build() => _build();

  _$OperatorDataResponse _build() {
    _$OperatorDataResponse _$result;
    try {
      _$result = _$v ??
          _$OperatorDataResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorDataResponse', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'OperatorDataResponse', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'OperatorDataResponse', 'lastName'),
            mansion: BuiltValueNullFieldError.checkNotNull(
                mansion, r'OperatorDataResponse', 'mansion'),
            photo: BuiltValueNullFieldError.checkNotNull(
                photo, r'OperatorDataResponse', 'photo'),
            firstAvailability: firstAvailability.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'firstAvailability';
        firstAvailability.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDataResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
