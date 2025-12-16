// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morning_schedule_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MorningScheduleUpdate extends MorningScheduleUpdate {
  @override
  final bool work;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$MorningScheduleUpdate(
          [void Function(MorningScheduleUpdateBuilder)? updates]) =>
      (MorningScheduleUpdateBuilder()..update(updates))._build();

  _$MorningScheduleUpdate._({required this.work, this.startTime, this.endTime})
      : super._();
  @override
  MorningScheduleUpdate rebuild(
          void Function(MorningScheduleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MorningScheduleUpdateBuilder toBuilder() =>
      MorningScheduleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MorningScheduleUpdate &&
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
    return (newBuiltValueToStringHelper(r'MorningScheduleUpdate')
          ..add('work', work)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class MorningScheduleUpdateBuilder
    implements Builder<MorningScheduleUpdate, MorningScheduleUpdateBuilder> {
  _$MorningScheduleUpdate? _$v;

  bool? _work;
  bool? get work => _$this._work;
  set work(bool? work) => _$this._work = work;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  MorningScheduleUpdateBuilder() {
    MorningScheduleUpdate._defaults(this);
  }

  MorningScheduleUpdateBuilder get _$this {
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
  void replace(MorningScheduleUpdate other) {
    _$v = other as _$MorningScheduleUpdate;
  }

  @override
  void update(void Function(MorningScheduleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MorningScheduleUpdate build() => _build();

  _$MorningScheduleUpdate _build() {
    final _$result = _$v ??
        _$MorningScheduleUpdate._(
          work: BuiltValueNullFieldError.checkNotNull(
              work, r'MorningScheduleUpdate', 'work'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
