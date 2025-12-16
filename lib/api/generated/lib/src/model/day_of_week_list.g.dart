// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_of_week_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DayOfWeekList extends DayOfWeekList {
  @override
  final int id;
  @override
  final int dayNumber;
  @override
  final String name;

  factory _$DayOfWeekList([void Function(DayOfWeekListBuilder)? updates]) =>
      (DayOfWeekListBuilder()..update(updates))._build();

  _$DayOfWeekList._(
      {required this.id, required this.dayNumber, required this.name})
      : super._();
  @override
  DayOfWeekList rebuild(void Function(DayOfWeekListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayOfWeekListBuilder toBuilder() => DayOfWeekListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayOfWeekList &&
        id == other.id &&
        dayNumber == other.dayNumber &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, dayNumber.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DayOfWeekList')
          ..add('id', id)
          ..add('dayNumber', dayNumber)
          ..add('name', name))
        .toString();
  }
}

class DayOfWeekListBuilder
    implements Builder<DayOfWeekList, DayOfWeekListBuilder> {
  _$DayOfWeekList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _dayNumber;
  int? get dayNumber => _$this._dayNumber;
  set dayNumber(int? dayNumber) => _$this._dayNumber = dayNumber;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DayOfWeekListBuilder() {
    DayOfWeekList._defaults(this);
  }

  DayOfWeekListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _dayNumber = $v.dayNumber;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DayOfWeekList other) {
    _$v = other as _$DayOfWeekList;
  }

  @override
  void update(void Function(DayOfWeekListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DayOfWeekList build() => _build();

  _$DayOfWeekList _build() {
    final _$result = _$v ??
        _$DayOfWeekList._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'DayOfWeekList', 'id'),
          dayNumber: BuiltValueNullFieldError.checkNotNull(
              dayNumber, r'DayOfWeekList', 'dayNumber'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'DayOfWeekList', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
