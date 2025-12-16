// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_request_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PermissionRequestCreate extends PermissionRequestCreate {
  @override
  final Date date;
  @override
  final String? reason;
  @override
  final BuiltList<TimeSlotCreate> timeSlots;

  factory _$PermissionRequestCreate(
          [void Function(PermissionRequestCreateBuilder)? updates]) =>
      (PermissionRequestCreateBuilder()..update(updates))._build();

  _$PermissionRequestCreate._(
      {required this.date, this.reason, required this.timeSlots})
      : super._();
  @override
  PermissionRequestCreate rebuild(
          void Function(PermissionRequestCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionRequestCreateBuilder toBuilder() =>
      PermissionRequestCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PermissionRequestCreate &&
        date == other.date &&
        reason == other.reason &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PermissionRequestCreate')
          ..add('date', date)
          ..add('reason', reason)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class PermissionRequestCreateBuilder
    implements
        Builder<PermissionRequestCreate, PermissionRequestCreateBuilder> {
  _$PermissionRequestCreate? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ListBuilder<TimeSlotCreate>? _timeSlots;
  ListBuilder<TimeSlotCreate> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotCreate>();
  set timeSlots(ListBuilder<TimeSlotCreate>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  PermissionRequestCreateBuilder() {
    PermissionRequestCreate._defaults(this);
  }

  PermissionRequestCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _reason = $v.reason;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PermissionRequestCreate other) {
    _$v = other as _$PermissionRequestCreate;
  }

  @override
  void update(void Function(PermissionRequestCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PermissionRequestCreate build() => _build();

  _$PermissionRequestCreate _build() {
    _$PermissionRequestCreate _$result;
    try {
      _$result = _$v ??
          _$PermissionRequestCreate._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'PermissionRequestCreate', 'date'),
            reason: reason,
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PermissionRequestCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
