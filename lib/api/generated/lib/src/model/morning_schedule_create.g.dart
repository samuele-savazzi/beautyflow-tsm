// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morning_schedule_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MorningScheduleCreate extends MorningScheduleCreate {
  @override
  final bool work;
  @override
  final String? startTime;
  @override
  final String? endTime;

  factory _$MorningScheduleCreate(
          [void Function(MorningScheduleCreateBuilder)? updates]) =>
      (MorningScheduleCreateBuilder()..update(updates))._build();

  _$MorningScheduleCreate._({required this.work, this.startTime, this.endTime})
      : super._();
  @override
  MorningScheduleCreate rebuild(
          void Function(MorningScheduleCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MorningScheduleCreateBuilder toBuilder() =>
      MorningScheduleCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MorningScheduleCreate &&
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
    return (newBuiltValueToStringHelper(r'MorningScheduleCreate')
          ..add('work', work)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class MorningScheduleCreateBuilder
    implements Builder<MorningScheduleCreate, MorningScheduleCreateBuilder> {
  _$MorningScheduleCreate? _$v;

  bool? _work;
  bool? get work => _$this._work;
  set work(bool? work) => _$this._work = work;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  MorningScheduleCreateBuilder() {
    MorningScheduleCreate._defaults(this);
  }

  MorningScheduleCreateBuilder get _$this {
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
  void replace(MorningScheduleCreate other) {
    _$v = other as _$MorningScheduleCreate;
  }

  @override
  void update(void Function(MorningScheduleCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MorningScheduleCreate build() => _build();

  _$MorningScheduleCreate _build() {
    final _$result = _$v ??
        _$MorningScheduleCreate._(
          work: BuiltValueNullFieldError.checkNotNull(
              work, r'MorningScheduleCreate', 'work'),
          startTime: startTime,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
