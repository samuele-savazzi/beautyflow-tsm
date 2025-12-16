// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_availability_operator_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyAvailabilityOperatorResponse
    extends DailyAvailabilityOperatorResponse {
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
  final BuiltList<DailyAvailability> dailyAvailability;
  @override
  final int totalDaysChecked;
  @override
  final int availableDaysCount;
  @override
  final int morningAvailableDaysCount;
  @override
  final int afternoonAvailableDaysCount;

  factory _$DailyAvailabilityOperatorResponse(
          [void Function(DailyAvailabilityOperatorResponseBuilder)? updates]) =>
      (DailyAvailabilityOperatorResponseBuilder()..update(updates))._build();

  _$DailyAvailabilityOperatorResponse._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.mansion,
      required this.photo,
      required this.dailyAvailability,
      required this.totalDaysChecked,
      required this.availableDaysCount,
      required this.morningAvailableDaysCount,
      required this.afternoonAvailableDaysCount})
      : super._();
  @override
  DailyAvailabilityOperatorResponse rebuild(
          void Function(DailyAvailabilityOperatorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyAvailabilityOperatorResponseBuilder toBuilder() =>
      DailyAvailabilityOperatorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyAvailabilityOperatorResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        mansion == other.mansion &&
        photo == other.photo &&
        dailyAvailability == other.dailyAvailability &&
        totalDaysChecked == other.totalDaysChecked &&
        availableDaysCount == other.availableDaysCount &&
        morningAvailableDaysCount == other.morningAvailableDaysCount &&
        afternoonAvailableDaysCount == other.afternoonAvailableDaysCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, mansion.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, dailyAvailability.hashCode);
    _$hash = $jc(_$hash, totalDaysChecked.hashCode);
    _$hash = $jc(_$hash, availableDaysCount.hashCode);
    _$hash = $jc(_$hash, morningAvailableDaysCount.hashCode);
    _$hash = $jc(_$hash, afternoonAvailableDaysCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyAvailabilityOperatorResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('mansion', mansion)
          ..add('photo', photo)
          ..add('dailyAvailability', dailyAvailability)
          ..add('totalDaysChecked', totalDaysChecked)
          ..add('availableDaysCount', availableDaysCount)
          ..add('morningAvailableDaysCount', morningAvailableDaysCount)
          ..add('afternoonAvailableDaysCount', afternoonAvailableDaysCount))
        .toString();
  }
}

class DailyAvailabilityOperatorResponseBuilder
    implements
        Builder<DailyAvailabilityOperatorResponse,
            DailyAvailabilityOperatorResponseBuilder> {
  _$DailyAvailabilityOperatorResponse? _$v;

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

  ListBuilder<DailyAvailability>? _dailyAvailability;
  ListBuilder<DailyAvailability> get dailyAvailability =>
      _$this._dailyAvailability ??= ListBuilder<DailyAvailability>();
  set dailyAvailability(ListBuilder<DailyAvailability>? dailyAvailability) =>
      _$this._dailyAvailability = dailyAvailability;

  int? _totalDaysChecked;
  int? get totalDaysChecked => _$this._totalDaysChecked;
  set totalDaysChecked(int? totalDaysChecked) =>
      _$this._totalDaysChecked = totalDaysChecked;

  int? _availableDaysCount;
  int? get availableDaysCount => _$this._availableDaysCount;
  set availableDaysCount(int? availableDaysCount) =>
      _$this._availableDaysCount = availableDaysCount;

  int? _morningAvailableDaysCount;
  int? get morningAvailableDaysCount => _$this._morningAvailableDaysCount;
  set morningAvailableDaysCount(int? morningAvailableDaysCount) =>
      _$this._morningAvailableDaysCount = morningAvailableDaysCount;

  int? _afternoonAvailableDaysCount;
  int? get afternoonAvailableDaysCount => _$this._afternoonAvailableDaysCount;
  set afternoonAvailableDaysCount(int? afternoonAvailableDaysCount) =>
      _$this._afternoonAvailableDaysCount = afternoonAvailableDaysCount;

  DailyAvailabilityOperatorResponseBuilder() {
    DailyAvailabilityOperatorResponse._defaults(this);
  }

  DailyAvailabilityOperatorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _mansion = $v.mansion;
      _photo = $v.photo;
      _dailyAvailability = $v.dailyAvailability.toBuilder();
      _totalDaysChecked = $v.totalDaysChecked;
      _availableDaysCount = $v.availableDaysCount;
      _morningAvailableDaysCount = $v.morningAvailableDaysCount;
      _afternoonAvailableDaysCount = $v.afternoonAvailableDaysCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyAvailabilityOperatorResponse other) {
    _$v = other as _$DailyAvailabilityOperatorResponse;
  }

  @override
  void update(
      void Function(DailyAvailabilityOperatorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyAvailabilityOperatorResponse build() => _build();

  _$DailyAvailabilityOperatorResponse _build() {
    _$DailyAvailabilityOperatorResponse _$result;
    try {
      _$result = _$v ??
          _$DailyAvailabilityOperatorResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'DailyAvailabilityOperatorResponse', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'DailyAvailabilityOperatorResponse', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'DailyAvailabilityOperatorResponse', 'lastName'),
            mansion: BuiltValueNullFieldError.checkNotNull(
                mansion, r'DailyAvailabilityOperatorResponse', 'mansion'),
            photo: BuiltValueNullFieldError.checkNotNull(
                photo, r'DailyAvailabilityOperatorResponse', 'photo'),
            dailyAvailability: dailyAvailability.build(),
            totalDaysChecked: BuiltValueNullFieldError.checkNotNull(
                totalDaysChecked,
                r'DailyAvailabilityOperatorResponse',
                'totalDaysChecked'),
            availableDaysCount: BuiltValueNullFieldError.checkNotNull(
                availableDaysCount,
                r'DailyAvailabilityOperatorResponse',
                'availableDaysCount'),
            morningAvailableDaysCount: BuiltValueNullFieldError.checkNotNull(
                morningAvailableDaysCount,
                r'DailyAvailabilityOperatorResponse',
                'morningAvailableDaysCount'),
            afternoonAvailableDaysCount: BuiltValueNullFieldError.checkNotNull(
                afternoonAvailableDaysCount,
                r'DailyAvailabilityOperatorResponse',
                'afternoonAvailableDaysCount'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailyAvailability';
        dailyAvailability.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyAvailabilityOperatorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
