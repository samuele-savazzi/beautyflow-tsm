// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_availability_operator_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HourlyAvailabilityOperatorResponse
    extends HourlyAvailabilityOperatorResponse {
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
  final BuiltList<HourlySlot> availableSlots;
  @override
  final int totalSlotsAvailable;
  @override
  final int morningSlotsCount;
  @override
  final int afternoonSlotsCount;
  @override
  final Date searchDate;
  @override
  final String searchStrategy;

  factory _$HourlyAvailabilityOperatorResponse(
          [void Function(HourlyAvailabilityOperatorResponseBuilder)?
              updates]) =>
      (HourlyAvailabilityOperatorResponseBuilder()..update(updates))._build();

  _$HourlyAvailabilityOperatorResponse._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.mansion,
      required this.photo,
      required this.availableSlots,
      required this.totalSlotsAvailable,
      required this.morningSlotsCount,
      required this.afternoonSlotsCount,
      required this.searchDate,
      required this.searchStrategy})
      : super._();
  @override
  HourlyAvailabilityOperatorResponse rebuild(
          void Function(HourlyAvailabilityOperatorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyAvailabilityOperatorResponseBuilder toBuilder() =>
      HourlyAvailabilityOperatorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourlyAvailabilityOperatorResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        mansion == other.mansion &&
        photo == other.photo &&
        availableSlots == other.availableSlots &&
        totalSlotsAvailable == other.totalSlotsAvailable &&
        morningSlotsCount == other.morningSlotsCount &&
        afternoonSlotsCount == other.afternoonSlotsCount &&
        searchDate == other.searchDate &&
        searchStrategy == other.searchStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, mansion.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, availableSlots.hashCode);
    _$hash = $jc(_$hash, totalSlotsAvailable.hashCode);
    _$hash = $jc(_$hash, morningSlotsCount.hashCode);
    _$hash = $jc(_$hash, afternoonSlotsCount.hashCode);
    _$hash = $jc(_$hash, searchDate.hashCode);
    _$hash = $jc(_$hash, searchStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HourlyAvailabilityOperatorResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('mansion', mansion)
          ..add('photo', photo)
          ..add('availableSlots', availableSlots)
          ..add('totalSlotsAvailable', totalSlotsAvailable)
          ..add('morningSlotsCount', morningSlotsCount)
          ..add('afternoonSlotsCount', afternoonSlotsCount)
          ..add('searchDate', searchDate)
          ..add('searchStrategy', searchStrategy))
        .toString();
  }
}

class HourlyAvailabilityOperatorResponseBuilder
    implements
        Builder<HourlyAvailabilityOperatorResponse,
            HourlyAvailabilityOperatorResponseBuilder> {
  _$HourlyAvailabilityOperatorResponse? _$v;

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

  ListBuilder<HourlySlot>? _availableSlots;
  ListBuilder<HourlySlot> get availableSlots =>
      _$this._availableSlots ??= ListBuilder<HourlySlot>();
  set availableSlots(ListBuilder<HourlySlot>? availableSlots) =>
      _$this._availableSlots = availableSlots;

  int? _totalSlotsAvailable;
  int? get totalSlotsAvailable => _$this._totalSlotsAvailable;
  set totalSlotsAvailable(int? totalSlotsAvailable) =>
      _$this._totalSlotsAvailable = totalSlotsAvailable;

  int? _morningSlotsCount;
  int? get morningSlotsCount => _$this._morningSlotsCount;
  set morningSlotsCount(int? morningSlotsCount) =>
      _$this._morningSlotsCount = morningSlotsCount;

  int? _afternoonSlotsCount;
  int? get afternoonSlotsCount => _$this._afternoonSlotsCount;
  set afternoonSlotsCount(int? afternoonSlotsCount) =>
      _$this._afternoonSlotsCount = afternoonSlotsCount;

  Date? _searchDate;
  Date? get searchDate => _$this._searchDate;
  set searchDate(Date? searchDate) => _$this._searchDate = searchDate;

  String? _searchStrategy;
  String? get searchStrategy => _$this._searchStrategy;
  set searchStrategy(String? searchStrategy) =>
      _$this._searchStrategy = searchStrategy;

  HourlyAvailabilityOperatorResponseBuilder() {
    HourlyAvailabilityOperatorResponse._defaults(this);
  }

  HourlyAvailabilityOperatorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _mansion = $v.mansion;
      _photo = $v.photo;
      _availableSlots = $v.availableSlots.toBuilder();
      _totalSlotsAvailable = $v.totalSlotsAvailable;
      _morningSlotsCount = $v.morningSlotsCount;
      _afternoonSlotsCount = $v.afternoonSlotsCount;
      _searchDate = $v.searchDate;
      _searchStrategy = $v.searchStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourlyAvailabilityOperatorResponse other) {
    _$v = other as _$HourlyAvailabilityOperatorResponse;
  }

  @override
  void update(
      void Function(HourlyAvailabilityOperatorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HourlyAvailabilityOperatorResponse build() => _build();

  _$HourlyAvailabilityOperatorResponse _build() {
    _$HourlyAvailabilityOperatorResponse _$result;
    try {
      _$result = _$v ??
          _$HourlyAvailabilityOperatorResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'HourlyAvailabilityOperatorResponse', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'HourlyAvailabilityOperatorResponse', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'HourlyAvailabilityOperatorResponse', 'lastName'),
            mansion: BuiltValueNullFieldError.checkNotNull(
                mansion, r'HourlyAvailabilityOperatorResponse', 'mansion'),
            photo: BuiltValueNullFieldError.checkNotNull(
                photo, r'HourlyAvailabilityOperatorResponse', 'photo'),
            availableSlots: availableSlots.build(),
            totalSlotsAvailable: BuiltValueNullFieldError.checkNotNull(
                totalSlotsAvailable,
                r'HourlyAvailabilityOperatorResponse',
                'totalSlotsAvailable'),
            morningSlotsCount: BuiltValueNullFieldError.checkNotNull(
                morningSlotsCount,
                r'HourlyAvailabilityOperatorResponse',
                'morningSlotsCount'),
            afternoonSlotsCount: BuiltValueNullFieldError.checkNotNull(
                afternoonSlotsCount,
                r'HourlyAvailabilityOperatorResponse',
                'afternoonSlotsCount'),
            searchDate: BuiltValueNullFieldError.checkNotNull(searchDate,
                r'HourlyAvailabilityOperatorResponse', 'searchDate'),
            searchStrategy: BuiltValueNullFieldError.checkNotNull(
                searchStrategy,
                r'HourlyAvailabilityOperatorResponse',
                'searchStrategy'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableSlots';
        availableSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HourlyAvailabilityOperatorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
