// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'corrections_applied.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CorrectionsApplied extends CorrectionsApplied {
  @override
  final BuiltList<SpecialOpeningCorrection> specialOpenings;
  @override
  final BuiltList<SpecialClosingCorrection> specialClosings;
  @override
  final BuiltList<OperatorCorrection> operators;
  @override
  final BuiltList<OperatorDisabilityCorrection> operatorDisabilities;
  @override
  final BuiltList<WorkStationDisabilityCorrection> workstationDisabilities;

  factory _$CorrectionsApplied(
          [void Function(CorrectionsAppliedBuilder)? updates]) =>
      (CorrectionsAppliedBuilder()..update(updates))._build();

  _$CorrectionsApplied._(
      {required this.specialOpenings,
      required this.specialClosings,
      required this.operators,
      required this.operatorDisabilities,
      required this.workstationDisabilities})
      : super._();
  @override
  CorrectionsApplied rebuild(
          void Function(CorrectionsAppliedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CorrectionsAppliedBuilder toBuilder() =>
      CorrectionsAppliedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CorrectionsApplied &&
        specialOpenings == other.specialOpenings &&
        specialClosings == other.specialClosings &&
        operators == other.operators &&
        operatorDisabilities == other.operatorDisabilities &&
        workstationDisabilities == other.workstationDisabilities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, specialOpenings.hashCode);
    _$hash = $jc(_$hash, specialClosings.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jc(_$hash, operatorDisabilities.hashCode);
    _$hash = $jc(_$hash, workstationDisabilities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CorrectionsApplied')
          ..add('specialOpenings', specialOpenings)
          ..add('specialClosings', specialClosings)
          ..add('operators', operators)
          ..add('operatorDisabilities', operatorDisabilities)
          ..add('workstationDisabilities', workstationDisabilities))
        .toString();
  }
}

class CorrectionsAppliedBuilder
    implements Builder<CorrectionsApplied, CorrectionsAppliedBuilder> {
  _$CorrectionsApplied? _$v;

  ListBuilder<SpecialOpeningCorrection>? _specialOpenings;
  ListBuilder<SpecialOpeningCorrection> get specialOpenings =>
      _$this._specialOpenings ??= ListBuilder<SpecialOpeningCorrection>();
  set specialOpenings(ListBuilder<SpecialOpeningCorrection>? specialOpenings) =>
      _$this._specialOpenings = specialOpenings;

  ListBuilder<SpecialClosingCorrection>? _specialClosings;
  ListBuilder<SpecialClosingCorrection> get specialClosings =>
      _$this._specialClosings ??= ListBuilder<SpecialClosingCorrection>();
  set specialClosings(ListBuilder<SpecialClosingCorrection>? specialClosings) =>
      _$this._specialClosings = specialClosings;

  ListBuilder<OperatorCorrection>? _operators;
  ListBuilder<OperatorCorrection> get operators =>
      _$this._operators ??= ListBuilder<OperatorCorrection>();
  set operators(ListBuilder<OperatorCorrection>? operators) =>
      _$this._operators = operators;

  ListBuilder<OperatorDisabilityCorrection>? _operatorDisabilities;
  ListBuilder<OperatorDisabilityCorrection> get operatorDisabilities =>
      _$this._operatorDisabilities ??=
          ListBuilder<OperatorDisabilityCorrection>();
  set operatorDisabilities(
          ListBuilder<OperatorDisabilityCorrection>? operatorDisabilities) =>
      _$this._operatorDisabilities = operatorDisabilities;

  ListBuilder<WorkStationDisabilityCorrection>? _workstationDisabilities;
  ListBuilder<WorkStationDisabilityCorrection> get workstationDisabilities =>
      _$this._workstationDisabilities ??=
          ListBuilder<WorkStationDisabilityCorrection>();
  set workstationDisabilities(
          ListBuilder<WorkStationDisabilityCorrection>?
              workstationDisabilities) =>
      _$this._workstationDisabilities = workstationDisabilities;

  CorrectionsAppliedBuilder() {
    CorrectionsApplied._defaults(this);
  }

  CorrectionsAppliedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _specialOpenings = $v.specialOpenings.toBuilder();
      _specialClosings = $v.specialClosings.toBuilder();
      _operators = $v.operators.toBuilder();
      _operatorDisabilities = $v.operatorDisabilities.toBuilder();
      _workstationDisabilities = $v.workstationDisabilities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CorrectionsApplied other) {
    _$v = other as _$CorrectionsApplied;
  }

  @override
  void update(void Function(CorrectionsAppliedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CorrectionsApplied build() => _build();

  _$CorrectionsApplied _build() {
    _$CorrectionsApplied _$result;
    try {
      _$result = _$v ??
          _$CorrectionsApplied._(
            specialOpenings: specialOpenings.build(),
            specialClosings: specialClosings.build(),
            operators: operators.build(),
            operatorDisabilities: operatorDisabilities.build(),
            workstationDisabilities: workstationDisabilities.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'specialOpenings';
        specialOpenings.build();
        _$failedField = 'specialClosings';
        specialClosings.build();
        _$failedField = 'operators';
        operators.build();
        _$failedField = 'operatorDisabilities';
        operatorDisabilities.build();
        _$failedField = 'workstationDisabilities';
        workstationDisabilities.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CorrectionsApplied', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
