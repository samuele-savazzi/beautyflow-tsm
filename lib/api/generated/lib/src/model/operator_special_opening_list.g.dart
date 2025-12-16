// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_special_opening_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorSpecialOpeningList extends OperatorSpecialOpeningList {
  @override
  final int id;
  @override
  final OperatorInfo operator_;
  @override
  final SpecialOpeningInfo specialOpening;
  @override
  final BuiltList<TimeSlotList> timeSlots;
  @override
  final String notes;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$OperatorSpecialOpeningList(
          [void Function(OperatorSpecialOpeningListBuilder)? updates]) =>
      (OperatorSpecialOpeningListBuilder()..update(updates))._build();

  _$OperatorSpecialOpeningList._(
      {required this.id,
      required this.operator_,
      required this.specialOpening,
      required this.timeSlots,
      required this.notes,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  OperatorSpecialOpeningList rebuild(
          void Function(OperatorSpecialOpeningListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorSpecialOpeningListBuilder toBuilder() =>
      OperatorSpecialOpeningListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorSpecialOpeningList &&
        id == other.id &&
        operator_ == other.operator_ &&
        specialOpening == other.specialOpening &&
        timeSlots == other.timeSlots &&
        notes == other.notes &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, specialOpening.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorSpecialOpeningList')
          ..add('id', id)
          ..add('operator_', operator_)
          ..add('specialOpening', specialOpening)
          ..add('timeSlots', timeSlots)
          ..add('notes', notes)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OperatorSpecialOpeningListBuilder
    implements
        Builder<OperatorSpecialOpeningList, OperatorSpecialOpeningListBuilder> {
  _$OperatorSpecialOpeningList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  OperatorInfoBuilder? _operator_;
  OperatorInfoBuilder get operator_ =>
      _$this._operator_ ??= OperatorInfoBuilder();
  set operator_(OperatorInfoBuilder? operator_) =>
      _$this._operator_ = operator_;

  SpecialOpeningInfoBuilder? _specialOpening;
  SpecialOpeningInfoBuilder get specialOpening =>
      _$this._specialOpening ??= SpecialOpeningInfoBuilder();
  set specialOpening(SpecialOpeningInfoBuilder? specialOpening) =>
      _$this._specialOpening = specialOpening;

  ListBuilder<TimeSlotList>? _timeSlots;
  ListBuilder<TimeSlotList> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<TimeSlotList>();
  set timeSlots(ListBuilder<TimeSlotList>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  OperatorSpecialOpeningListBuilder() {
    OperatorSpecialOpeningList._defaults(this);
  }

  OperatorSpecialOpeningListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operator_ = $v.operator_.toBuilder();
      _specialOpening = $v.specialOpening.toBuilder();
      _timeSlots = $v.timeSlots.toBuilder();
      _notes = $v.notes;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorSpecialOpeningList other) {
    _$v = other as _$OperatorSpecialOpeningList;
  }

  @override
  void update(void Function(OperatorSpecialOpeningListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorSpecialOpeningList build() => _build();

  _$OperatorSpecialOpeningList _build() {
    _$OperatorSpecialOpeningList _$result;
    try {
      _$result = _$v ??
          _$OperatorSpecialOpeningList._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'OperatorSpecialOpeningList', 'id'),
            operator_: operator_.build(),
            specialOpening: specialOpening.build(),
            timeSlots: timeSlots.build(),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'OperatorSpecialOpeningList', 'notes'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'OperatorSpecialOpeningList', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'OperatorSpecialOpeningList', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operator_';
        operator_.build();
        _$failedField = 'specialOpening';
        specialOpening.build();
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorSpecialOpeningList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
