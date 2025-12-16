// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disabled_workstation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisabledWorkstation extends DisabledWorkstation {
  @override
  final int workstationId;
  @override
  final String workstationName;
  @override
  final String workstationType;
  @override
  final String reason;
  @override
  final bool morningDisabled;
  @override
  final bool afternoonDisabled;
  @override
  final String disabledMorningStart;
  @override
  final String disabledMorningEnd;
  @override
  final String disabledAfternoonStart;
  @override
  final String disabledAfternoonEnd;

  factory _$DisabledWorkstation(
          [void Function(DisabledWorkstationBuilder)? updates]) =>
      (DisabledWorkstationBuilder()..update(updates))._build();

  _$DisabledWorkstation._(
      {required this.workstationId,
      required this.workstationName,
      required this.workstationType,
      required this.reason,
      required this.morningDisabled,
      required this.afternoonDisabled,
      required this.disabledMorningStart,
      required this.disabledMorningEnd,
      required this.disabledAfternoonStart,
      required this.disabledAfternoonEnd})
      : super._();
  @override
  DisabledWorkstation rebuild(
          void Function(DisabledWorkstationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisabledWorkstationBuilder toBuilder() =>
      DisabledWorkstationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisabledWorkstation &&
        workstationId == other.workstationId &&
        workstationName == other.workstationName &&
        workstationType == other.workstationType &&
        reason == other.reason &&
        morningDisabled == other.morningDisabled &&
        afternoonDisabled == other.afternoonDisabled &&
        disabledMorningStart == other.disabledMorningStart &&
        disabledMorningEnd == other.disabledMorningEnd &&
        disabledAfternoonStart == other.disabledAfternoonStart &&
        disabledAfternoonEnd == other.disabledAfternoonEnd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workstationId.hashCode);
    _$hash = $jc(_$hash, workstationName.hashCode);
    _$hash = $jc(_$hash, workstationType.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, morningDisabled.hashCode);
    _$hash = $jc(_$hash, afternoonDisabled.hashCode);
    _$hash = $jc(_$hash, disabledMorningStart.hashCode);
    _$hash = $jc(_$hash, disabledMorningEnd.hashCode);
    _$hash = $jc(_$hash, disabledAfternoonStart.hashCode);
    _$hash = $jc(_$hash, disabledAfternoonEnd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DisabledWorkstation')
          ..add('workstationId', workstationId)
          ..add('workstationName', workstationName)
          ..add('workstationType', workstationType)
          ..add('reason', reason)
          ..add('morningDisabled', morningDisabled)
          ..add('afternoonDisabled', afternoonDisabled)
          ..add('disabledMorningStart', disabledMorningStart)
          ..add('disabledMorningEnd', disabledMorningEnd)
          ..add('disabledAfternoonStart', disabledAfternoonStart)
          ..add('disabledAfternoonEnd', disabledAfternoonEnd))
        .toString();
  }
}

class DisabledWorkstationBuilder
    implements Builder<DisabledWorkstation, DisabledWorkstationBuilder> {
  _$DisabledWorkstation? _$v;

  int? _workstationId;
  int? get workstationId => _$this._workstationId;
  set workstationId(int? workstationId) =>
      _$this._workstationId = workstationId;

  String? _workstationName;
  String? get workstationName => _$this._workstationName;
  set workstationName(String? workstationName) =>
      _$this._workstationName = workstationName;

  String? _workstationType;
  String? get workstationType => _$this._workstationType;
  set workstationType(String? workstationType) =>
      _$this._workstationType = workstationType;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  bool? _morningDisabled;
  bool? get morningDisabled => _$this._morningDisabled;
  set morningDisabled(bool? morningDisabled) =>
      _$this._morningDisabled = morningDisabled;

  bool? _afternoonDisabled;
  bool? get afternoonDisabled => _$this._afternoonDisabled;
  set afternoonDisabled(bool? afternoonDisabled) =>
      _$this._afternoonDisabled = afternoonDisabled;

  String? _disabledMorningStart;
  String? get disabledMorningStart => _$this._disabledMorningStart;
  set disabledMorningStart(String? disabledMorningStart) =>
      _$this._disabledMorningStart = disabledMorningStart;

  String? _disabledMorningEnd;
  String? get disabledMorningEnd => _$this._disabledMorningEnd;
  set disabledMorningEnd(String? disabledMorningEnd) =>
      _$this._disabledMorningEnd = disabledMorningEnd;

  String? _disabledAfternoonStart;
  String? get disabledAfternoonStart => _$this._disabledAfternoonStart;
  set disabledAfternoonStart(String? disabledAfternoonStart) =>
      _$this._disabledAfternoonStart = disabledAfternoonStart;

  String? _disabledAfternoonEnd;
  String? get disabledAfternoonEnd => _$this._disabledAfternoonEnd;
  set disabledAfternoonEnd(String? disabledAfternoonEnd) =>
      _$this._disabledAfternoonEnd = disabledAfternoonEnd;

  DisabledWorkstationBuilder() {
    DisabledWorkstation._defaults(this);
  }

  DisabledWorkstationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workstationId = $v.workstationId;
      _workstationName = $v.workstationName;
      _workstationType = $v.workstationType;
      _reason = $v.reason;
      _morningDisabled = $v.morningDisabled;
      _afternoonDisabled = $v.afternoonDisabled;
      _disabledMorningStart = $v.disabledMorningStart;
      _disabledMorningEnd = $v.disabledMorningEnd;
      _disabledAfternoonStart = $v.disabledAfternoonStart;
      _disabledAfternoonEnd = $v.disabledAfternoonEnd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisabledWorkstation other) {
    _$v = other as _$DisabledWorkstation;
  }

  @override
  void update(void Function(DisabledWorkstationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisabledWorkstation build() => _build();

  _$DisabledWorkstation _build() {
    final _$result = _$v ??
        _$DisabledWorkstation._(
          workstationId: BuiltValueNullFieldError.checkNotNull(
              workstationId, r'DisabledWorkstation', 'workstationId'),
          workstationName: BuiltValueNullFieldError.checkNotNull(
              workstationName, r'DisabledWorkstation', 'workstationName'),
          workstationType: BuiltValueNullFieldError.checkNotNull(
              workstationType, r'DisabledWorkstation', 'workstationType'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'DisabledWorkstation', 'reason'),
          morningDisabled: BuiltValueNullFieldError.checkNotNull(
              morningDisabled, r'DisabledWorkstation', 'morningDisabled'),
          afternoonDisabled: BuiltValueNullFieldError.checkNotNull(
              afternoonDisabled, r'DisabledWorkstation', 'afternoonDisabled'),
          disabledMorningStart: BuiltValueNullFieldError.checkNotNull(
              disabledMorningStart,
              r'DisabledWorkstation',
              'disabledMorningStart'),
          disabledMorningEnd: BuiltValueNullFieldError.checkNotNull(
              disabledMorningEnd, r'DisabledWorkstation', 'disabledMorningEnd'),
          disabledAfternoonStart: BuiltValueNullFieldError.checkNotNull(
              disabledAfternoonStart,
              r'DisabledWorkstation',
              'disabledAfternoonStart'),
          disabledAfternoonEnd: BuiltValueNullFieldError.checkNotNull(
              disabledAfternoonEnd,
              r'DisabledWorkstation',
              'disabledAfternoonEnd'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
