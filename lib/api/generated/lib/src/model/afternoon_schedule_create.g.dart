// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'afternoon_schedule_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AfternoonScheduleCreate extends AfternoonScheduleCreate {
  @override
  final bool work;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$AfternoonScheduleCreate(
          [void Function(AfternoonScheduleCreateBuilder)? updates]) =>
      (AfternoonScheduleCreateBuilder()..update(updates))._build();

  _$AfternoonScheduleCreate._(
      {required this.work, this.startTime, this.endTime})
      : super._();
  @override
  AfternoonScheduleCreate rebuild(
          void Function(AfternoonScheduleCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AfternoonScheduleCreateBuilder toBuilder() =>
      AfternoonScheduleCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AfternoonScheduleCreate &&
        work == other.work &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, work.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AfternoonScheduleCreate')
          ..add('work', work)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class AfternoonScheduleCreateBuilder
    implements
        Builder<AfternoonScheduleCreate, AfternoonScheduleCreateBuilder> {
  _$AfternoonScheduleCreate? _$v;

  bool? _work;
  bool? get work => _$this._work;
  set work(bool? work) => _$this._work = work;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  AfternoonScheduleCreateBuilder() {
    AfternoonScheduleCreate._defaults(this);
  }

  AfternoonScheduleCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _work = $v.work;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AfternoonScheduleCreate other) {
    _$v = other as _$AfternoonScheduleCreate;
  }

  @override
  void update(void Function(AfternoonScheduleCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AfternoonScheduleCreate build() => _build();

  _$AfternoonScheduleCreate _build() {
    final _$result = _$v ??
        _$AfternoonScheduleCreate._(
          work: BuiltValueNullFieldError.checkNotNull(
              work, r'AfternoonScheduleCreate', 'work'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
