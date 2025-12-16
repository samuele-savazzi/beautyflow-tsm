// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_area_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkingAreaUpdate extends WorkingAreaUpdate {
  @override
  final int areaId;
  @override
  final BuiltList<WorkingDayUpdate> days;

  factory _$WorkingAreaUpdate(
          [void Function(WorkingAreaUpdateBuilder)? updates]) =>
      (WorkingAreaUpdateBuilder()..update(updates))._build();

  _$WorkingAreaUpdate._({required this.areaId, required this.days}) : super._();
  @override
  WorkingAreaUpdate rebuild(void Function(WorkingAreaUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkingAreaUpdateBuilder toBuilder() =>
      WorkingAreaUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkingAreaUpdate &&
        areaId == other.areaId &&
        days == other.days;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkingAreaUpdate')
          ..add('areaId', areaId)
          ..add('days', days))
        .toString();
  }
}

class WorkingAreaUpdateBuilder
    implements Builder<WorkingAreaUpdate, WorkingAreaUpdateBuilder> {
  _$WorkingAreaUpdate? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<WorkingDayUpdate>? _days;
  ListBuilder<WorkingDayUpdate> get days =>
      _$this._days ??= ListBuilder<WorkingDayUpdate>();
  set days(ListBuilder<WorkingDayUpdate>? days) => _$this._days = days;

  WorkingAreaUpdateBuilder() {
    WorkingAreaUpdate._defaults(this);
  }

  WorkingAreaUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _days = $v.days.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkingAreaUpdate other) {
    _$v = other as _$WorkingAreaUpdate;
  }

  @override
  void update(void Function(WorkingAreaUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkingAreaUpdate build() => _build();

  _$WorkingAreaUpdate _build() {
    _$WorkingAreaUpdate _$result;
    try {
      _$result = _$v ??
          _$WorkingAreaUpdate._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'WorkingAreaUpdate', 'areaId'),
            days: days.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'days';
        days.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkingAreaUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
