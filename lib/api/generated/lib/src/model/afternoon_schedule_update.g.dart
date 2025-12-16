// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'afternoon_schedule_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AfternoonScheduleUpdate extends AfternoonScheduleUpdate {
  @override
  final bool work;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$AfternoonScheduleUpdate(
          [void Function(AfternoonScheduleUpdateBuilder)? updates]) =>
      (AfternoonScheduleUpdateBuilder()..update(updates))._build();

  _$AfternoonScheduleUpdate._(
      {required this.work, this.startTime, this.endTime})
      : super._();
  @override
  AfternoonScheduleUpdate rebuild(
          void Function(AfternoonScheduleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AfternoonScheduleUpdateBuilder toBuilder() =>
      AfternoonScheduleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AfternoonScheduleUpdate &&
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
    return (newBuiltValueToStringHelper(r'AfternoonScheduleUpdate')
          ..add('work', work)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class AfternoonScheduleUpdateBuilder
    implements
        Builder<AfternoonScheduleUpdate, AfternoonScheduleUpdateBuilder> {
  _$AfternoonScheduleUpdate? _$v;

  bool? _work;
  bool? get work => _$this._work;
  set work(bool? work) => _$this._work = work;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  AfternoonScheduleUpdateBuilder() {
    AfternoonScheduleUpdate._defaults(this);
  }

  AfternoonScheduleUpdateBuilder get _$this {
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
  void replace(AfternoonScheduleUpdate other) {
    _$v = other as _$AfternoonScheduleUpdate;
  }

  @override
  void update(void Function(AfternoonScheduleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AfternoonScheduleUpdate build() => _build();

  _$AfternoonScheduleUpdate _build() {
    final _$result = _$v ??
        _$AfternoonScheduleUpdate._(
          work: BuiltValueNullFieldError.checkNotNull(
              work, r'AfternoonScheduleUpdate', 'work'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
