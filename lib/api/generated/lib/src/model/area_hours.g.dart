// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_hours.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaHours extends AreaHours {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isOpen;
  @override
  final bool hasDailySchedule;
  @override
  final String reasonStatus;
  @override
  final MorningHours morning;
  @override
  final AfternoonHours afternoon;
  @override
  final String? notes;
  @override
  final bool hasHoliday;
  @override
  final bool hasSpecialClosing;
  @override
  final bool hasSpecialOpening;

  factory _$AreaHours([void Function(AreaHoursBuilder)? updates]) =>
      (AreaHoursBuilder()..update(updates))._build();

  _$AreaHours._(
      {required this.id,
      required this.name,
      required this.isOpen,
      required this.hasDailySchedule,
      required this.reasonStatus,
      required this.morning,
      required this.afternoon,
      this.notes,
      required this.hasHoliday,
      required this.hasSpecialClosing,
      required this.hasSpecialOpening})
      : super._();
  @override
  AreaHours rebuild(void Function(AreaHoursBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaHoursBuilder toBuilder() => AreaHoursBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaHours &&
        id == other.id &&
        name == other.name &&
        isOpen == other.isOpen &&
        hasDailySchedule == other.hasDailySchedule &&
        reasonStatus == other.reasonStatus &&
        morning == other.morning &&
        afternoon == other.afternoon &&
        notes == other.notes &&
        hasHoliday == other.hasHoliday &&
        hasSpecialClosing == other.hasSpecialClosing &&
        hasSpecialOpening == other.hasSpecialOpening;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, hasDailySchedule.hashCode);
    _$hash = $jc(_$hash, reasonStatus.hashCode);
    _$hash = $jc(_$hash, morning.hashCode);
    _$hash = $jc(_$hash, afternoon.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, hasHoliday.hashCode);
    _$hash = $jc(_$hash, hasSpecialClosing.hashCode);
    _$hash = $jc(_$hash, hasSpecialOpening.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaHours')
          ..add('id', id)
          ..add('name', name)
          ..add('isOpen', isOpen)
          ..add('hasDailySchedule', hasDailySchedule)
          ..add('reasonStatus', reasonStatus)
          ..add('morning', morning)
          ..add('afternoon', afternoon)
          ..add('notes', notes)
          ..add('hasHoliday', hasHoliday)
          ..add('hasSpecialClosing', hasSpecialClosing)
          ..add('hasSpecialOpening', hasSpecialOpening))
        .toString();
  }
}

class AreaHoursBuilder implements Builder<AreaHours, AreaHoursBuilder> {
  _$AreaHours? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  bool? _hasDailySchedule;
  bool? get hasDailySchedule => _$this._hasDailySchedule;
  set hasDailySchedule(bool? hasDailySchedule) =>
      _$this._hasDailySchedule = hasDailySchedule;

  String? _reasonStatus;
  String? get reasonStatus => _$this._reasonStatus;
  set reasonStatus(String? reasonStatus) => _$this._reasonStatus = reasonStatus;

  MorningHoursBuilder? _morning;
  MorningHoursBuilder get morning => _$this._morning ??= MorningHoursBuilder();
  set morning(MorningHoursBuilder? morning) => _$this._morning = morning;

  AfternoonHoursBuilder? _afternoon;
  AfternoonHoursBuilder get afternoon =>
      _$this._afternoon ??= AfternoonHoursBuilder();
  set afternoon(AfternoonHoursBuilder? afternoon) =>
      _$this._afternoon = afternoon;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _hasHoliday;
  bool? get hasHoliday => _$this._hasHoliday;
  set hasHoliday(bool? hasHoliday) => _$this._hasHoliday = hasHoliday;

  bool? _hasSpecialClosing;
  bool? get hasSpecialClosing => _$this._hasSpecialClosing;
  set hasSpecialClosing(bool? hasSpecialClosing) =>
      _$this._hasSpecialClosing = hasSpecialClosing;

  bool? _hasSpecialOpening;
  bool? get hasSpecialOpening => _$this._hasSpecialOpening;
  set hasSpecialOpening(bool? hasSpecialOpening) =>
      _$this._hasSpecialOpening = hasSpecialOpening;

  AreaHoursBuilder() {
    AreaHours._defaults(this);
  }

  AreaHoursBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isOpen = $v.isOpen;
      _hasDailySchedule = $v.hasDailySchedule;
      _reasonStatus = $v.reasonStatus;
      _morning = $v.morning.toBuilder();
      _afternoon = $v.afternoon.toBuilder();
      _notes = $v.notes;
      _hasHoliday = $v.hasHoliday;
      _hasSpecialClosing = $v.hasSpecialClosing;
      _hasSpecialOpening = $v.hasSpecialOpening;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaHours other) {
    _$v = other as _$AreaHours;
  }

  @override
  void update(void Function(AreaHoursBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaHours build() => _build();

  _$AreaHours _build() {
    _$AreaHours _$result;
    try {
      _$result = _$v ??
          _$AreaHours._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AreaHours', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AreaHours', 'name'),
            isOpen: BuiltValueNullFieldError.checkNotNull(
                isOpen, r'AreaHours', 'isOpen'),
            hasDailySchedule: BuiltValueNullFieldError.checkNotNull(
                hasDailySchedule, r'AreaHours', 'hasDailySchedule'),
            reasonStatus: BuiltValueNullFieldError.checkNotNull(
                reasonStatus, r'AreaHours', 'reasonStatus'),
            morning: morning.build(),
            afternoon: afternoon.build(),
            notes: notes,
            hasHoliday: BuiltValueNullFieldError.checkNotNull(
                hasHoliday, r'AreaHours', 'hasHoliday'),
            hasSpecialClosing: BuiltValueNullFieldError.checkNotNull(
                hasSpecialClosing, r'AreaHours', 'hasSpecialClosing'),
            hasSpecialOpening: BuiltValueNullFieldError.checkNotNull(
                hasSpecialOpening, r'AreaHours', 'hasSpecialOpening'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'morning';
        morning.build();
        _$failedField = 'afternoon';
        afternoon.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreaHours', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
