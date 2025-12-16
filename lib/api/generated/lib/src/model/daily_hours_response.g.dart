// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_hours_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyHoursResponse extends DailyHoursResponse {
  @override
  final Date date;
  @override
  final String dayOfWeek;
  @override
  final BuiltList<AreaHours> areas;

  factory _$DailyHoursResponse(
          [void Function(DailyHoursResponseBuilder)? updates]) =>
      (DailyHoursResponseBuilder()..update(updates))._build();

  _$DailyHoursResponse._(
      {required this.date, required this.dayOfWeek, required this.areas})
      : super._();
  @override
  DailyHoursResponse rebuild(
          void Function(DailyHoursResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyHoursResponseBuilder toBuilder() =>
      DailyHoursResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyHoursResponse &&
        date == other.date &&
        dayOfWeek == other.dayOfWeek &&
        areas == other.areas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyHoursResponse')
          ..add('date', date)
          ..add('dayOfWeek', dayOfWeek)
          ..add('areas', areas))
        .toString();
  }
}

class DailyHoursResponseBuilder
    implements Builder<DailyHoursResponse, DailyHoursResponseBuilder> {
  _$DailyHoursResponse? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _dayOfWeek;
  String? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(String? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  ListBuilder<AreaHours>? _areas;
  ListBuilder<AreaHours> get areas =>
      _$this._areas ??= ListBuilder<AreaHours>();
  set areas(ListBuilder<AreaHours>? areas) => _$this._areas = areas;

  DailyHoursResponseBuilder() {
    DailyHoursResponse._defaults(this);
  }

  DailyHoursResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _dayOfWeek = $v.dayOfWeek;
      _areas = $v.areas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyHoursResponse other) {
    _$v = other as _$DailyHoursResponse;
  }

  @override
  void update(void Function(DailyHoursResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyHoursResponse build() => _build();

  _$DailyHoursResponse _build() {
    _$DailyHoursResponse _$result;
    try {
      _$result = _$v ??
          _$DailyHoursResponse._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'DailyHoursResponse', 'date'),
            dayOfWeek: BuiltValueNullFieldError.checkNotNull(
                dayOfWeek, r'DailyHoursResponse', 'dayOfWeek'),
            areas: areas.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyHoursResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
