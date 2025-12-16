// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyScheduleCreate extends DailyScheduleCreate {
  @override
  final int areaId;
  @override
  final BuiltList<ScheduleCreate> schedules;

  factory _$DailyScheduleCreate(
          [void Function(DailyScheduleCreateBuilder)? updates]) =>
      (DailyScheduleCreateBuilder()..update(updates))._build();

  _$DailyScheduleCreate._({required this.areaId, required this.schedules})
      : super._();
  @override
  DailyScheduleCreate rebuild(
          void Function(DailyScheduleCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyScheduleCreateBuilder toBuilder() =>
      DailyScheduleCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyScheduleCreate &&
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
    return (newBuiltValueToStringHelper(r'DailyScheduleCreate')
          ..add('areaId', areaId)
          ..add('schedules', schedules))
        .toString();
  }
}

class DailyScheduleCreateBuilder
    implements Builder<DailyScheduleCreate, DailyScheduleCreateBuilder> {
  _$DailyScheduleCreate? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<ScheduleCreate>? _schedules;
  ListBuilder<ScheduleCreate> get schedules =>
      _$this._schedules ??= ListBuilder<ScheduleCreate>();
  set schedules(ListBuilder<ScheduleCreate>? schedules) =>
      _$this._schedules = schedules;

  DailyScheduleCreateBuilder() {
    DailyScheduleCreate._defaults(this);
  }

  DailyScheduleCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _schedules = $v.schedules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyScheduleCreate other) {
    _$v = other as _$DailyScheduleCreate;
  }

  @override
  void update(void Function(DailyScheduleCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyScheduleCreate build() => _build();

  _$DailyScheduleCreate _build() {
    _$DailyScheduleCreate _$result;
    try {
      _$result = _$v ??
          _$DailyScheduleCreate._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'DailyScheduleCreate', 'areaId'),
            schedules: schedules.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedules';
        schedules.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyScheduleCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
