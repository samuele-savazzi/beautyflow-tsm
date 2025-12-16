// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningDetail extends SpecialOpeningDetail {
  @override
  final int id;
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
  final BuiltList<OperatorAssignmentDetail> operators;

  factory _$SpecialOpeningDetail(
          [void Function(SpecialOpeningDetailBuilder)? updates]) =>
      (SpecialOpeningDetailBuilder()..update(updates))._build();

  _$SpecialOpeningDetail._(
      {required this.id,
      required this.date,
      required this.reason,
      required this.morningOpen,
      this.morningOpeningTime,
      this.morningClosingTime,
      required this.afternoonOpen,
      this.afternoonOpeningTime,
      this.afternoonClosingTime,
      required this.operators})
      : super._();
  @override
  SpecialOpeningDetail rebuild(
          void Function(SpecialOpeningDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningDetailBuilder toBuilder() =>
      SpecialOpeningDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningDetail &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        morningOpen == other.morningOpen &&
        morningOpeningTime == other.morningOpeningTime &&
        morningClosingTime == other.morningClosingTime &&
        afternoonOpen == other.afternoonOpen &&
        afternoonOpeningTime == other.afternoonOpeningTime &&
        afternoonClosingTime == other.afternoonClosingTime &&
        operators == other.operators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, morningOpen.hashCode);
    _$hash = $jc(_$hash, morningOpeningTime.hashCode);
    _$hash = $jc(_$hash, morningClosingTime.hashCode);
    _$hash = $jc(_$hash, afternoonOpen.hashCode);
    _$hash = $jc(_$hash, afternoonOpeningTime.hashCode);
    _$hash = $jc(_$hash, afternoonClosingTime.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningDetail')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('morningOpen', morningOpen)
          ..add('morningOpeningTime', morningOpeningTime)
          ..add('morningClosingTime', morningClosingTime)
          ..add('afternoonOpen', afternoonOpen)
          ..add('afternoonOpeningTime', afternoonOpeningTime)
          ..add('afternoonClosingTime', afternoonClosingTime)
          ..add('operators', operators))
        .toString();
  }
}

class SpecialOpeningDetailBuilder
    implements Builder<SpecialOpeningDetail, SpecialOpeningDetailBuilder> {
  _$SpecialOpeningDetail? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  ListBuilder<OperatorAssignmentDetail>? _operators;
  ListBuilder<OperatorAssignmentDetail> get operators =>
      _$this._operators ??= ListBuilder<OperatorAssignmentDetail>();
  set operators(ListBuilder<OperatorAssignmentDetail>? operators) =>
      _$this._operators = operators;

  SpecialOpeningDetailBuilder() {
    SpecialOpeningDetail._defaults(this);
  }

  SpecialOpeningDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _morningOpen = $v.morningOpen;
      _morningOpeningTime = $v.morningOpeningTime;
      _morningClosingTime = $v.morningClosingTime;
      _afternoonOpen = $v.afternoonOpen;
      _afternoonOpeningTime = $v.afternoonOpeningTime;
      _afternoonClosingTime = $v.afternoonClosingTime;
      _operators = $v.operators.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningDetail other) {
    _$v = other as _$SpecialOpeningDetail;
  }

  @override
  void update(void Function(SpecialOpeningDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningDetail build() => _build();

  _$SpecialOpeningDetail _build() {
    _$SpecialOpeningDetail _$result;
    try {
      _$result = _$v ??
          _$SpecialOpeningDetail._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SpecialOpeningDetail', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'SpecialOpeningDetail', 'date'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'SpecialOpeningDetail', 'reason'),
            morningOpen: BuiltValueNullFieldError.checkNotNull(
                morningOpen, r'SpecialOpeningDetail', 'morningOpen'),
            morningOpeningTime: morningOpeningTime,
            morningClosingTime: morningClosingTime,
            afternoonOpen: BuiltValueNullFieldError.checkNotNull(
                afternoonOpen, r'SpecialOpeningDetail', 'afternoonOpen'),
            afternoonOpeningTime: afternoonOpeningTime,
            afternoonClosingTime: afternoonClosingTime,
            operators: operators.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SpecialOpeningDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
