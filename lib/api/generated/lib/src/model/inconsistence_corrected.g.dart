// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inconsistence_corrected.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InconsistenceCorrected extends InconsistenceCorrected {
  @override
  final String type;
  @override
  final int? id;
  @override
  final int? operatorId;
  @override
  final PeriodEnum? period;
  @override
  final String name;
  @override
  final bool ignore;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final Date date;

  factory _$InconsistenceCorrected(
          [void Function(InconsistenceCorrectedBuilder)? updates]) =>
      (InconsistenceCorrectedBuilder()..update(updates))._build();

  _$InconsistenceCorrected._(
      {required this.type,
      this.id,
      this.operatorId,
      this.period,
      required this.name,
      required this.ignore,
      this.startTime,
      this.endTime,
      required this.date})
      : super._();
  @override
  InconsistenceCorrected rebuild(
          void Function(InconsistenceCorrectedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InconsistenceCorrectedBuilder toBuilder() =>
      InconsistenceCorrectedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InconsistenceCorrected &&
        type == other.type &&
        id == other.id &&
        operatorId == other.operatorId &&
        period == other.period &&
        name == other.name &&
        ignore == other.ignore &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InconsistenceCorrected')
          ..add('type', type)
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('period', period)
          ..add('name', name)
          ..add('ignore', ignore)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('date', date))
        .toString();
  }
}

class InconsistenceCorrectedBuilder
    implements Builder<InconsistenceCorrected, InconsistenceCorrectedBuilder> {
  _$InconsistenceCorrected? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _ignore;
  bool? get ignore => _$this._ignore;
  set ignore(bool? ignore) => _$this._ignore = ignore;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  InconsistenceCorrectedBuilder() {
    InconsistenceCorrected._defaults(this);
  }

  InconsistenceCorrectedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _operatorId = $v.operatorId;
      _period = $v.period;
      _name = $v.name;
      _ignore = $v.ignore;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InconsistenceCorrected other) {
    _$v = other as _$InconsistenceCorrected;
  }

  @override
  void update(void Function(InconsistenceCorrectedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InconsistenceCorrected build() => _build();

  _$InconsistenceCorrected _build() {
    final _$result = _$v ??
        _$InconsistenceCorrected._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'InconsistenceCorrected', 'type'),
          id: id,
          operatorId: operatorId,
          period: period,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'InconsistenceCorrected', 'name'),
          ignore: BuiltValueNullFieldError.checkNotNull(
              ignore, r'InconsistenceCorrected', 'ignore'),
          startTime: startTime,
          endTime: endTime,
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'InconsistenceCorrected', 'date'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
