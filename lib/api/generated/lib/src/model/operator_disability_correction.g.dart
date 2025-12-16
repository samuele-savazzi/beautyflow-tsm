// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_disability_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorDisabilityCorrection extends OperatorDisabilityCorrection {
  @override
  final int id;
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final String reason;
  @override
  final Date startDate;
  @override
  final Date? endDate;
  @override
  final String disabilityType;
  @override
  final bool ignore;
  @override
  final bool ignoreMorning;
  @override
  final bool ignoreAfternoon;
  @override
  final bool? previousIgnore;
  @override
  final bool? previousIgnoreMorning;
  @override
  final bool? previousIgnoreAfternoon;
  @override
  final BuiltList<OperatorDisabilityTimeSlot> timeSlots;

  factory _$OperatorDisabilityCorrection(
          [void Function(OperatorDisabilityCorrectionBuilder)? updates]) =>
      (OperatorDisabilityCorrectionBuilder()..update(updates))._build();

  _$OperatorDisabilityCorrection._(
      {required this.id,
      required this.operatorId,
      required this.operatorName,
      required this.reason,
      required this.startDate,
      this.endDate,
      required this.disabilityType,
      required this.ignore,
      required this.ignoreMorning,
      required this.ignoreAfternoon,
      this.previousIgnore,
      this.previousIgnoreMorning,
      this.previousIgnoreAfternoon,
      required this.timeSlots})
      : super._();
  @override
  OperatorDisabilityCorrection rebuild(
          void Function(OperatorDisabilityCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorDisabilityCorrectionBuilder toBuilder() =>
      OperatorDisabilityCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorDisabilityCorrection &&
        id == other.id &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        reason == other.reason &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        disabilityType == other.disabilityType &&
        ignore == other.ignore &&
        ignoreMorning == other.ignoreMorning &&
        ignoreAfternoon == other.ignoreAfternoon &&
        previousIgnore == other.previousIgnore &&
        previousIgnoreMorning == other.previousIgnoreMorning &&
        previousIgnoreAfternoon == other.previousIgnoreAfternoon &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, disabilityType.hashCode);
    _$hash = $jc(_$hash, ignore.hashCode);
    _$hash = $jc(_$hash, ignoreMorning.hashCode);
    _$hash = $jc(_$hash, ignoreAfternoon.hashCode);
    _$hash = $jc(_$hash, previousIgnore.hashCode);
    _$hash = $jc(_$hash, previousIgnoreMorning.hashCode);
    _$hash = $jc(_$hash, previousIgnoreAfternoon.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorDisabilityCorrection')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('reason', reason)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('disabilityType', disabilityType)
          ..add('ignore', ignore)
          ..add('ignoreMorning', ignoreMorning)
          ..add('ignoreAfternoon', ignoreAfternoon)
          ..add('previousIgnore', previousIgnore)
          ..add('previousIgnoreMorning', previousIgnoreMorning)
          ..add('previousIgnoreAfternoon', previousIgnoreAfternoon)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class OperatorDisabilityCorrectionBuilder
    implements
        Builder<OperatorDisabilityCorrection,
            OperatorDisabilityCorrectionBuilder> {
  _$OperatorDisabilityCorrection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  Date? _startDate;
  Date? get startDate => _$this._startDate;
  set startDate(Date? startDate) => _$this._startDate = startDate;

  Date? _endDate;
  Date? get endDate => _$this._endDate;
  set endDate(Date? endDate) => _$this._endDate = endDate;

  String? _disabilityType;
  String? get disabilityType => _$this._disabilityType;
  set disabilityType(String? disabilityType) =>
      _$this._disabilityType = disabilityType;

  bool? _ignore;
  bool? get ignore => _$this._ignore;
  set ignore(bool? ignore) => _$this._ignore = ignore;

  bool? _ignoreMorning;
  bool? get ignoreMorning => _$this._ignoreMorning;
  set ignoreMorning(bool? ignoreMorning) =>
      _$this._ignoreMorning = ignoreMorning;

  bool? _ignoreAfternoon;
  bool? get ignoreAfternoon => _$this._ignoreAfternoon;
  set ignoreAfternoon(bool? ignoreAfternoon) =>
      _$this._ignoreAfternoon = ignoreAfternoon;

  bool? _previousIgnore;
  bool? get previousIgnore => _$this._previousIgnore;
  set previousIgnore(bool? previousIgnore) =>
      _$this._previousIgnore = previousIgnore;

  bool? _previousIgnoreMorning;
  bool? get previousIgnoreMorning => _$this._previousIgnoreMorning;
  set previousIgnoreMorning(bool? previousIgnoreMorning) =>
      _$this._previousIgnoreMorning = previousIgnoreMorning;

  bool? _previousIgnoreAfternoon;
  bool? get previousIgnoreAfternoon => _$this._previousIgnoreAfternoon;
  set previousIgnoreAfternoon(bool? previousIgnoreAfternoon) =>
      _$this._previousIgnoreAfternoon = previousIgnoreAfternoon;

  ListBuilder<OperatorDisabilityTimeSlot>? _timeSlots;
  ListBuilder<OperatorDisabilityTimeSlot> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<OperatorDisabilityTimeSlot>();
  set timeSlots(ListBuilder<OperatorDisabilityTimeSlot>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  OperatorDisabilityCorrectionBuilder() {
    OperatorDisabilityCorrection._defaults(this);
  }

  OperatorDisabilityCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _reason = $v.reason;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _disabilityType = $v.disabilityType;
      _ignore = $v.ignore;
      _ignoreMorning = $v.ignoreMorning;
      _ignoreAfternoon = $v.ignoreAfternoon;
      _previousIgnore = $v.previousIgnore;
      _previousIgnoreMorning = $v.previousIgnoreMorning;
      _previousIgnoreAfternoon = $v.previousIgnoreAfternoon;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorDisabilityCorrection other) {
    _$v = other as _$OperatorDisabilityCorrection;
  }

  @override
  void update(void Function(OperatorDisabilityCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorDisabilityCorrection build() => _build();

  _$OperatorDisabilityCorrection _build() {
    _$OperatorDisabilityCorrection _$result;
    try {
      _$result = _$v ??
          _$OperatorDisabilityCorrection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorDisabilityCorrection', 'id'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'OperatorDisabilityCorrection', 'operatorId'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'OperatorDisabilityCorrection', 'operatorName'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'OperatorDisabilityCorrection', 'reason'),
            startDate: BuiltValueNullFieldError.checkNotNull(
                startDate, r'OperatorDisabilityCorrection', 'startDate'),
            endDate: endDate,
            disabilityType: BuiltValueNullFieldError.checkNotNull(
                disabilityType,
                r'OperatorDisabilityCorrection',
                'disabilityType'),
            ignore: BuiltValueNullFieldError.checkNotNull(
                ignore, r'OperatorDisabilityCorrection', 'ignore'),
            ignoreMorning: BuiltValueNullFieldError.checkNotNull(ignoreMorning,
                r'OperatorDisabilityCorrection', 'ignoreMorning'),
            ignoreAfternoon: BuiltValueNullFieldError.checkNotNull(
                ignoreAfternoon,
                r'OperatorDisabilityCorrection',
                'ignoreAfternoon'),
            previousIgnore: previousIgnore,
            previousIgnoreMorning: previousIgnoreMorning,
            previousIgnoreAfternoon: previousIgnoreAfternoon,
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorDisabilityCorrection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
