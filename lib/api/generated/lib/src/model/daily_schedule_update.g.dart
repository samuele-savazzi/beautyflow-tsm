// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyScheduleUpdate extends DailyScheduleUpdate {
  @override
  final int areaId;
  @override
  final BuiltList<ScheduleUpdate> schedules;

  factory _$DailyScheduleUpdate(
          [void Function(DailyScheduleUpdateBuilder)? updates]) =>
      (DailyScheduleUpdateBuilder()..update(updates))._build();

  _$DailyScheduleUpdate._({required this.areaId, required this.schedules})
      : super._();
  @override
  DailyScheduleUpdate rebuild(
          void Function(DailyScheduleUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyScheduleUpdateBuilder toBuilder() =>
      DailyScheduleUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyScheduleUpdate &&
        areaId == other.areaId &&
        schedules == other.schedules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, schedules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyScheduleUpdate')
          ..add('areaId', areaId)
          ..add('schedules', schedules))
        .toString();
  }
}

class DailyScheduleUpdateBuilder
    implements Builder<DailyScheduleUpdate, DailyScheduleUpdateBuilder> {
  _$DailyScheduleUpdate? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<ScheduleUpdate>? _schedules;
  ListBuilder<ScheduleUpdate> get schedules =>
      _$this._schedules ??= ListBuilder<ScheduleUpdate>();
  set schedules(ListBuilder<ScheduleUpdate>? schedules) =>
      _$this._schedules = schedules;

  DailyScheduleUpdateBuilder() {
    DailyScheduleUpdate._defaults(this);
  }

  DailyScheduleUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _schedules = $v.schedules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyScheduleUpdate other) {
    _$v = other as _$DailyScheduleUpdate;
  }

  @override
  void update(void Function(DailyScheduleUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyScheduleUpdate build() => _build();

  _$DailyScheduleUpdate _build() {
    _$DailyScheduleUpdate _$result;
    try {
      _$result = _$v ??
          _$DailyScheduleUpdate._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'DailyScheduleUpdate', 'areaId'),
            schedules: schedules.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedules';
        schedules.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyScheduleUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
