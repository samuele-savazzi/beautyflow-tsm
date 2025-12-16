// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_workstation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarWorkstation extends CalendarWorkstation {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<CalendarBookingSlot> slots;

  factory _$CalendarWorkstation(
          [void Function(CalendarWorkstationBuilder)? updates]) =>
      (CalendarWorkstationBuilder()..update(updates))._build();

  _$CalendarWorkstation._(
      {required this.id, required this.name, required this.slots})
      : super._();
  @override
  CalendarWorkstation rebuild(
          void Function(CalendarWorkstationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarWorkstationBuilder toBuilder() =>
      CalendarWorkstationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarWorkstation &&
        id == other.id &&
        name == other.name &&
        slots == other.slots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, slots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CalendarWorkstation')
          ..add('id', id)
          ..add('name', name)
          ..add('slots', slots))
        .toString();
  }
}

class CalendarWorkstationBuilder
    implements Builder<CalendarWorkstation, CalendarWorkstationBuilder> {
  _$CalendarWorkstation? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<CalendarBookingSlot>? _slots;
  ListBuilder<CalendarBookingSlot> get slots =>
      _$this._slots ??= ListBuilder<CalendarBookingSlot>();
  set slots(ListBuilder<CalendarBookingSlot>? slots) => _$this._slots = slots;

  CalendarWorkstationBuilder() {
    CalendarWorkstation._defaults(this);
  }

  CalendarWorkstationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _slots = $v.slots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalendarWorkstation other) {
    _$v = other as _$CalendarWorkstation;
  }

  @override
  void update(void Function(CalendarWorkstationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarWorkstation build() => _build();

  _$CalendarWorkstation _build() {
    _$CalendarWorkstation _$result;
    try {
      _$result = _$v ??
          _$CalendarWorkstation._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CalendarWorkstation', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CalendarWorkstation', 'name'),
            slots: slots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CalendarWorkstation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
