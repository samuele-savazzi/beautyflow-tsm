// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updated_operator_special_opening.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatedOperatorSpecialOpening extends UpdatedOperatorSpecialOpening {
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
  final DateTime updatedAt;

  factory _$UpdatedOperatorSpecialOpening(
          [void Function(UpdatedOperatorSpecialOpeningBuilder)? updates]) =>
      (UpdatedOperatorSpecialOpeningBuilder()..update(updates))._build();

  _$UpdatedOperatorSpecialOpening._(
      {required this.id,
      required this.operatorId,
      required this.specialOpeningId,
      required this.timeSlots,
      required this.notes,
      required this.updatedAt})
      : super._();
  @override
  UpdatedOperatorSpecialOpening rebuild(
          void Function(UpdatedOperatorSpecialOpeningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatedOperatorSpecialOpeningBuilder toBuilder() =>
      UpdatedOperatorSpecialOpeningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatedOperatorSpecialOpening &&
        id == other.id &&
        operatorId == other.operatorId &&
        specialOpeningId == other.specialOpeningId &&
        timeSlots == other.timeSlots &&
        notes == other.notes &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, specialOpeningId.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatedOperatorSpecialOpening')
          ..add('id', id)
          ..add('operatorId', operatorId)
          ..add('specialOpeningId', specialOpeningId)
          ..add('timeSlots', timeSlots)
          ..add('notes', notes)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class UpdatedOperatorSpecialOpeningBuilder
    implements
        Builder<UpdatedOperatorSpecialOpening,
            UpdatedOperatorSpecialOpeningBuilder> {
  _$UpdatedOperatorSpecialOpening? _$v;

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

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  UpdatedOperatorSpecialOpeningBuilder() {
    UpdatedOperatorSpecialOpening._defaults(this);
  }

  UpdatedOperatorSpecialOpeningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _operatorId = $v.operatorId;
      _specialOpeningId = $v.specialOpeningId;
      _timeSlots = $v.timeSlots.toBuilder();
      _notes = $v.notes;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatedOperatorSpecialOpening other) {
    _$v = other as _$UpdatedOperatorSpecialOpening;
  }

  @override
  void update(void Function(UpdatedOperatorSpecialOpeningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatedOperatorSpecialOpening build() => _build();

  _$UpdatedOperatorSpecialOpening _build() {
    _$UpdatedOperatorSpecialOpening _$result;
    try {
      _$result = _$v ??
          _$UpdatedOperatorSpecialOpening._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UpdatedOperatorSpecialOpening', 'id'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'UpdatedOperatorSpecialOpening', 'operatorId'),
            specialOpeningId: BuiltValueNullFieldError.checkNotNull(
                specialOpeningId,
                r'UpdatedOperatorSpecialOpening',
                'specialOpeningId'),
            timeSlots: timeSlots.build(),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'UpdatedOperatorSpecialOpening', 'notes'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'UpdatedOperatorSpecialOpening', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdatedOperatorSpecialOpening', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
