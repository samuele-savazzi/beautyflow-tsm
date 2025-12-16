// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_correction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorCorrection extends OperatorCorrection {
  @override
  final int id;
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final Date effectiveFrom;
  @override
  final bool isActive;
  @override
  final String? notes;
  @override
  final BuiltList<OperatorTimeSlotCorrection> timeSlots;

  factory _$OperatorCorrection(
          [void Function(OperatorCorrectionBuilder)? updates]) =>
      (OperatorCorrectionBuilder()..update(updates))._build();

  _$OperatorCorrection._(
      {required this.id,
      required this.operatorId,
      required this.operatorName,
      required this.effectiveFrom,
      required this.isActive,
      this.notes,
      required this.timeSlots})
      : super._();
  @override
  OperatorCorrection rebuild(
          void Function(OperatorCorrectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorCorrectionBuilder toBuilder() =>
      OperatorCorrectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorCorrection &&
        id == other.id &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        effectiveFrom == other.effectiveFrom &&
        isActive == other.isActive &&
        notes == other.notes &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, effectiveFrom.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorCorrection')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('effectiveFrom', effectiveFrom)
          ..add('isActive', isActive)
          ..add('notes', notes)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class OperatorCorrectionBuilder
    implements Builder<OperatorCorrection, OperatorCorrectionBuilder> {
  _$OperatorCorrection? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  Date? _effectiveFrom;
  Date? get effectiveFrom => _$this._effectiveFrom;
  set effectiveFrom(Date? effectiveFrom) =>
      _$this._effectiveFrom = effectiveFrom;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ListBuilder<OperatorTimeSlotCorrection>? _timeSlots;
  ListBuilder<OperatorTimeSlotCorrection> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<OperatorTimeSlotCorrection>();
  set timeSlots(ListBuilder<OperatorTimeSlotCorrection>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  OperatorCorrectionBuilder() {
    OperatorCorrection._defaults(this);
  }

  OperatorCorrectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _effectiveFrom = $v.effectiveFrom;
      _isActive = $v.isActive;
      _notes = $v.notes;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorCorrection other) {
    _$v = other as _$OperatorCorrection;
  }

  @override
  void update(void Function(OperatorCorrectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorCorrection build() => _build();

  _$OperatorCorrection _build() {
    _$OperatorCorrection _$result;
    try {
      _$result = _$v ??
          _$OperatorCorrection._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorCorrection', 'id'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'OperatorCorrection', 'operatorId'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'OperatorCorrection', 'operatorName'),
            effectiveFrom: BuiltValueNullFieldError.checkNotNull(
                effectiveFrom, r'OperatorCorrection', 'effectiveFrom'),
            isActive: BuiltValueNullFieldError.checkNotNull(
                isActive, r'OperatorCorrection', 'isActive'),
            notes: notes,
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorCorrection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
