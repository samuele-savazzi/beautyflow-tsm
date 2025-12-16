// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_day_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarDayResponse extends CalendarDayResponse {
  @override
  final bool success;
  @override
  final String date;
  @override
  final BuiltList<CalendarOperator> operators;
  @override
  final BuiltList<CalendarWorkstation> workstations;

  factory _$CalendarDayResponse(
          [void Function(CalendarDayResponseBuilder)? updates]) =>
      (CalendarDayResponseBuilder()..update(updates))._build();

  _$CalendarDayResponse._(
      {required this.success,
      required this.date,
      required this.operators,
      required this.workstations})
      : super._();
  @override
  CalendarDayResponse rebuild(
          void Function(CalendarDayResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarDayResponseBuilder toBuilder() =>
      CalendarDayResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarDayResponse &&
        success == other.success &&
        date == other.date &&
        operators == other.operators &&
        workstations == other.workstations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jc(_$hash, workstations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarDayResponse')
          ..add('success', success)
          ..add('date', date)
          ..add('operators', operators)
          ..add('workstations', workstations))
        .toString();
  }
}

class CalendarDayResponseBuilder
    implements Builder<CalendarDayResponse, CalendarDayResponseBuilder> {
  _$CalendarDayResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  ListBuilder<CalendarOperator>? _operators;
  ListBuilder<CalendarOperator> get operators =>
      _$this._operators ??= ListBuilder<CalendarOperator>();
  set operators(ListBuilder<CalendarOperator>? operators) =>
      _$this._operators = operators;

  ListBuilder<CalendarWorkstation>? _workstations;
  ListBuilder<CalendarWorkstation> get workstations =>
      _$this._workstations ??= ListBuilder<CalendarWorkstation>();
  set workstations(ListBuilder<CalendarWorkstation>? workstations) =>
      _$this._workstations = workstations;

  CalendarDayResponseBuilder() {
    CalendarDayResponse._defaults(this);
  }

  CalendarDayResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _date = $v.date;
      _operators = $v.operators.toBuilder();
      _workstations = $v.workstations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarDayResponse other) {
    _$v = other as _$CalendarDayResponse;
  }

  @override
  void update(void Function(CalendarDayResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarDayResponse build() => _build();

  _$CalendarDayResponse _build() {
    _$CalendarDayResponse _$result;
    try {
      _$result = _$v ??
          _$CalendarDayResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CalendarDayResponse', 'success'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CalendarDayResponse', 'date'),
            operators: operators.build(),
            workstations: workstations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
        _$failedField = 'workstations';
        workstations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CalendarDayResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
