// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_area_working_day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorAreaWorkingDay extends OperatorAreaWorkingDay {
  @override
  final int areaId;
  @override
  final BuiltList<WorkingDayCreate> days;

  factory _$OperatorAreaWorkingDay(
          [void Function(OperatorAreaWorkingDayBuilder)? updates]) =>
      (OperatorAreaWorkingDayBuilder()..update(updates))._build();

  _$OperatorAreaWorkingDay._({required this.areaId, required this.days})
      : super._();
  @override
  OperatorAreaWorkingDay rebuild(
          void Function(OperatorAreaWorkingDayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorAreaWorkingDayBuilder toBuilder() =>
      OperatorAreaWorkingDayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorAreaWorkingDay &&
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
    return (newBuiltValueToStringHelper(r'OperatorAreaWorkingDay')
          ..add('areaId', areaId)
          ..add('days', days))
        .toString();
  }
}

class OperatorAreaWorkingDayBuilder
    implements Builder<OperatorAreaWorkingDay, OperatorAreaWorkingDayBuilder> {
  _$OperatorAreaWorkingDay? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<WorkingDayCreate>? _days;
  ListBuilder<WorkingDayCreate> get days =>
      _$this._days ??= ListBuilder<WorkingDayCreate>();
  set days(ListBuilder<WorkingDayCreate>? days) => _$this._days = days;

  OperatorAreaWorkingDayBuilder() {
    OperatorAreaWorkingDay._defaults(this);
  }

  OperatorAreaWorkingDayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _days = $v.days.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorAreaWorkingDay other) {
    _$v = other as _$OperatorAreaWorkingDay;
  }

  @override
  void update(void Function(OperatorAreaWorkingDayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorAreaWorkingDay build() => _build();

  _$OperatorAreaWorkingDay _build() {
    _$OperatorAreaWorkingDay _$result;
    try {
      _$result = _$v ??
          _$OperatorAreaWorkingDay._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'OperatorAreaWorkingDay', 'areaId'),
            days: days.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'days';
        days.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorAreaWorkingDay', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
