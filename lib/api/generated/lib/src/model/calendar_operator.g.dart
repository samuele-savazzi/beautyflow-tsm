// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_operator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalendarOperator extends CalendarOperator {
  @override
  final int id;
  @override
  final String name;
  @override
  final BuiltList<CalendarBookingSlot> slots;

  factory _$CalendarOperator(
          [void Function(CalendarOperatorBuilder)? updates]) =>
      (CalendarOperatorBuilder()..update(updates))._build();

  _$CalendarOperator._(
      {required this.id, required this.name, required this.slots})
      : super._();
  @override
  CalendarOperator rebuild(void Function(CalendarOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalendarOperatorBuilder toBuilder() =>
      CalendarOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalendarOperator &&
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
    return (newBuiltValueToStringHelper(r'CalendarOperator')
          ..add('id', id)
          ..add('name', name)
          ..add('slots', slots))
        .toString();
  }
}

class CalendarOperatorBuilder
    implements Builder<CalendarOperator, CalendarOperatorBuilder> {
  _$CalendarOperator? _$v;

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

  CalendarOperatorBuilder() {
    CalendarOperator._defaults(this);
  }

  CalendarOperatorBuilder get _$this {
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
  void replace(CalendarOperator other) {
    _$v = other as _$CalendarOperator;
  }

  @override
  void update(void Function(CalendarOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalendarOperator build() => _build();

  _$CalendarOperator _build() {
    _$CalendarOperator _$result;
    try {
      _$result = _$v ??
          _$CalendarOperator._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CalendarOperator', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CalendarOperator', 'name'),
            slots: slots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'slots';
        slots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CalendarOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
