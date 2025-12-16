// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_operator_special_opening.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatedOperatorSpecialOpening extends CreatedOperatorSpecialOpening {
  @override
  final int id;
  @override
  final int operatorId;
  @override
  final int specialOpeningId;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timeSlots;
  @override
  final String notes;
  @override
  final DateTime createdAt;

  factory _$CreatedOperatorSpecialOpening(
          [void Function(CreatedOperatorSpecialOpeningBuilder)? updates]) =>
      (CreatedOperatorSpecialOpeningBuilder()..update(updates))._build();

  _$CreatedOperatorSpecialOpening._(
      {required this.id,
      required this.operatorId,
      required this.specialOpeningId,
      required this.timeSlots,
      required this.notes,
      required this.createdAt})
      : super._();
  @override
  CreatedOperatorSpecialOpening rebuild(
          void Function(CreatedOperatorSpecialOpeningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedOperatorSpecialOpeningBuilder toBuilder() =>
      CreatedOperatorSpecialOpeningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedOperatorSpecialOpening &&
        id == other.id &&
        operatorId == other.operatorId &&
        specialOpeningId == other.specialOpeningId &&
        timeSlots == other.timeSlots &&
        notes == other.notes &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, specialOpeningId.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatedOperatorSpecialOpening')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('specialOpeningId', specialOpeningId)
          ..add('timeSlots', timeSlots)
          ..add('notes', notes)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CreatedOperatorSpecialOpeningBuilder
    implements
        Builder<CreatedOperatorSpecialOpening,
            CreatedOperatorSpecialOpeningBuilder> {
  _$CreatedOperatorSpecialOpening? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _specialOpeningId;
  int? get specialOpeningId => _$this._specialOpeningId;
  set specialOpeningId(int? specialOpeningId) =>
      _$this._specialOpeningId = specialOpeningId;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timeSlots;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get timeSlots =>
      _$this._timeSlots ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timeSlots(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  CreatedOperatorSpecialOpeningBuilder() {
    CreatedOperatorSpecialOpening._defaults(this);
  }

  CreatedOperatorSpecialOpeningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _specialOpeningId = $v.specialOpeningId;
      _timeSlots = $v.timeSlots.toBuilder();
      _notes = $v.notes;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedOperatorSpecialOpening other) {
    _$v = other as _$CreatedOperatorSpecialOpening;
  }

  @override
  void update(void Function(CreatedOperatorSpecialOpeningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatedOperatorSpecialOpening build() => _build();

  _$CreatedOperatorSpecialOpening _build() {
    _$CreatedOperatorSpecialOpening _$result;
    try {
      _$result = _$v ??
          _$CreatedOperatorSpecialOpening._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CreatedOperatorSpecialOpening', 'id'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'CreatedOperatorSpecialOpening', 'operatorId'),
            specialOpeningId: BuiltValueNullFieldError.checkNotNull(
                specialOpeningId,
                r'CreatedOperatorSpecialOpening',
                'specialOpeningId'),
            timeSlots: timeSlots.build(),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'CreatedOperatorSpecialOpening', 'notes'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'CreatedOperatorSpecialOpening', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreatedOperatorSpecialOpening', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
