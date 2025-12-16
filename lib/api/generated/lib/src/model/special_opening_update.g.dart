// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningUpdate extends SpecialOpeningUpdate {
  @override
  final Date date;
  @override
  final String reason;
  @override
  final bool morningOpen;
  @override
  final String? morningOpeningTime;
  @override
  final String? morningClosingTime;
  @override
  final bool afternoonOpen;
  @override
  final String? afternoonOpeningTime;
  @override
  final String? afternoonClosingTime;
  @override
  final BuiltList<OperatorSchedule>? operatorSchedules;
  @override
  final bool? getOperatorsOnly;

  factory _$SpecialOpeningUpdate(
          [void Function(SpecialOpeningUpdateBuilder)? updates]) =>
      (SpecialOpeningUpdateBuilder()..update(updates))._build();

  _$SpecialOpeningUpdate._(
      {required this.date,
      required this.reason,
      required this.morningOpen,
      this.morningOpeningTime,
      this.morningClosingTime,
      required this.afternoonOpen,
      this.afternoonOpeningTime,
      this.afternoonClosingTime,
      this.operatorSchedules,
      this.getOperatorsOnly})
      : super._();
  @override
  SpecialOpeningUpdate rebuild(
          void Function(SpecialOpeningUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningUpdateBuilder toBuilder() =>
      SpecialOpeningUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningUpdate &&
        date == other.date &&
        reason == other.reason &&
        morningOpen == other.morningOpen &&
        morningOpeningTime == other.morningOpeningTime &&
        morningClosingTime == other.morningClosingTime &&
        afternoonOpen == other.afternoonOpen &&
        afternoonOpeningTime == other.afternoonOpeningTime &&
        afternoonClosingTime == other.afternoonClosingTime &&
        operatorSchedules == other.operatorSchedules &&
        getOperatorsOnly == other.getOperatorsOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, morningOpen.hashCode);
    _$hash = $jc(_$hash, morningOpeningTime.hashCode);
    _$hash = $jc(_$hash, morningClosingTime.hashCode);
    _$hash = $jc(_$hash, afternoonOpen.hashCode);
    _$hash = $jc(_$hash, afternoonOpeningTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosingTime.hashCode);
    _$hash = $jc(_$hash, operatorSchedules.hashCode);
    _$hash = $jc(_$hash, getOperatorsOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningUpdate')
          ..add('date', date)
          ..add('reason', reason)
          ..add('morningOpen', morningOpen)
          ..add('morningOpeningTime', morningOpeningTime)
          ..add('morningClosingTime', morningClosingTime)
          ..add('afternoonOpen', afternoonOpen)
          ..add('afternoonOpeningTime', afternoonOpeningTime)
          ..add('afternoonClosingTime', afternoonClosingTime)
          ..add('operatorSchedules', operatorSchedules)
          ..add('getOperatorsOnly', getOperatorsOnly))
        .toString();
  }
}

class SpecialOpeningUpdateBuilder
    implements Builder<SpecialOpeningUpdate, SpecialOpeningUpdateBuilder> {
  _$SpecialOpeningUpdate? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _morningOpen;
  bool? get morningOpen => _$this._morningOpen;
  set morningOpen(bool? morningOpen) => _$this._morningOpen = morningOpen;

  String? _morningOpeningTime;
  String? get morningOpeningTime => _$this._morningOpeningTime;
  set morningOpeningTime(String? morningOpeningTime) =>
      _$this._morningOpeningTime = morningOpeningTime;

  String? _morningClosingTime;
  String? get morningClosingTime => _$this._morningClosingTime;
  set morningClosingTime(String? morningClosingTime) =>
      _$this._morningClosingTime = morningClosingTime;

  bool? _afternoonOpen;
  bool? get afternoonOpen => _$this._afternoonOpen;
  set afternoonOpen(bool? afternoonOpen) =>
      _$this._afternoonOpen = afternoonOpen;

  String? _afternoonOpeningTime;
  String? get afternoonOpeningTime => _$this._afternoonOpeningTime;
  set afternoonOpeningTime(String? afternoonOpeningTime) =>
      _$this._afternoonOpeningTime = afternoonOpeningTime;

  String? _afternoonClosingTime;
  String? get afternoonClosingTime => _$this._afternoonClosingTime;
  set afternoonClosingTime(String? afternoonClosingTime) =>
      _$this._afternoonClosingTime = afternoonClosingTime;

  ListBuilder<OperatorSchedule>? _operatorSchedules;
  ListBuilder<OperatorSchedule> get operatorSchedules =>
      _$this._operatorSchedules ??= ListBuilder<OperatorSchedule>();
  set operatorSchedules(ListBuilder<OperatorSchedule>? operatorSchedules) =>
      _$this._operatorSchedules = operatorSchedules;

  bool? _getOperatorsOnly;
  bool? get getOperatorsOnly => _$this._getOperatorsOnly;
  set getOperatorsOnly(bool? getOperatorsOnly) =>
      _$this._getOperatorsOnly = getOperatorsOnly;

  SpecialOpeningUpdateBuilder() {
    SpecialOpeningUpdate._defaults(this);
  }

  SpecialOpeningUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _reason = $v.reason;
      _morningOpen = $v.morningOpen;
      _morningOpeningTime = $v.morningOpeningTime;
      _morningClosingTime = $v.morningClosingTime;
      _afternoonOpen = $v.afternoonOpen;
      _afternoonOpeningTime = $v.afternoonOpeningTime;
      _afternoonClosingTime = $v.afternoonClosingTime;
      _operatorSchedules = $v.operatorSchedules?.toBuilder();
      _getOperatorsOnly = $v.getOperatorsOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningUpdate other) {
    _$v = other as _$SpecialOpeningUpdate;
  }

  @override
  void update(void Function(SpecialOpeningUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningUpdate build() => _build();

  _$SpecialOpeningUpdate _build() {
    _$SpecialOpeningUpdate _$result;
    try {
      _$result = _$v ??
          _$SpecialOpeningUpdate._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'SpecialOpeningUpdate', 'date'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'SpecialOpeningUpdate', 'reason'),
            morningOpen: BuiltValueNullFieldError.checkNotNull(
                morningOpen, r'SpecialOpeningUpdate', 'morningOpen'),
            morningOpeningTime: morningOpeningTime,
            morningClosingTime: morningClosingTime,
            afternoonOpen: BuiltValueNullFieldError.checkNotNull(
                afternoonOpen, r'SpecialOpeningUpdate', 'afternoonOpen'),
            afternoonOpeningTime: afternoonOpeningTime,
            afternoonClosingTime: afternoonClosingTime,
            operatorSchedules: _operatorSchedules?.build(),
            getOperatorsOnly: getOperatorsOnly,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatorSchedules';
        _operatorSchedules?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SpecialOpeningUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
