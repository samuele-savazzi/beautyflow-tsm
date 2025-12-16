// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inconsistency.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Inconsistency extends Inconsistency {
  @override
  final String type;
  @override
  final int? id;
  @override
  final int? operatorId;
  @override
  final String name;
  @override
  final PeriodEnum period;
  @override
  final bool ignore;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String date;
  @override
  final String? disabilityType;
  @override
  final String? startDate;
  @override
  final String? endDate;

  factory _$Inconsistency([void Function(InconsistencyBuilder)? updates]) =>
      (InconsistencyBuilder()..update(updates))._build();

  _$Inconsistency._(
      {required this.type,
      this.id,
      this.operatorId,
      required this.name,
      required this.period,
      required this.ignore,
      this.startTime,
      this.endTime,
      required this.date,
      this.disabilityType,
      this.startDate,
      this.endDate})
      : super._();
  @override
  Inconsistency rebuild(void Function(InconsistencyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InconsistencyBuilder toBuilder() => InconsistencyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Inconsistency &&
        type == other.type &&
        id == other.id &&
        operatorId == other.operatorId &&
        name == other.name &&
        period == other.period &&
        ignore == other.ignore &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        date == other.date &&
        disabilityType == other.disabilityType &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, period.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, disabilityType.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Inconsistency')
          ..add('type', type)
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('name', name)
          ..add('period', period)
          ..add('ignore', ignore)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('date', date)
          ..add('disabilityType', disabilityType)
          ..add('startDate', startDate)
          ..add('endDate', endDate))
        .toString();
  }
}

class InconsistencyBuilder
    implements Builder<Inconsistency, InconsistencyBuilder> {
  _$Inconsistency? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PeriodEnum? _period;
  PeriodEnum? get period => _$this._period;
  set period(PeriodEnum? period) => _$this._period = period;

  bool? _ignore;
  bool? get ignore => _$this._ignore;
  set ignore(bool? ignore) => _$this._ignore = ignore;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _disabilityType;
  String? get disabilityType => _$this._disabilityType;
  set disabilityType(String? disabilityType) =>
      _$this._disabilityType = disabilityType;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  InconsistencyBuilder() {
    Inconsistency._defaults(this);
  }

  InconsistencyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _operatorId = $v.operatorId;
      _name = $v.name;
      _period = $v.period;
      _ignore = $v.ignore;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _date = $v.date;
      _disabilityType = $v.disabilityType;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Inconsistency other) {
    _$v = other as _$Inconsistency;
  }

  @override
  void update(void Function(InconsistencyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Inconsistency build() => _build();

  _$Inconsistency _build() {
    final _$result = _$v ??
        _$Inconsistency._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'Inconsistency', 'type'),
          id: id,
          operatorId: operatorId,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'Inconsistency', 'name'),
          period: BuiltValueNullFieldError.checkNotNull(
              period, r'Inconsistency', 'period'),
          ignore: BuiltValueNullFieldError.checkNotNull(
              ignore, r'Inconsistency', 'ignore'),
          startTime: startTime,
          endTime: endTime,
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'Inconsistency', 'date'),
          disabilityType: disabilityType,
          startDate: startDate,
          endDate: endDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
