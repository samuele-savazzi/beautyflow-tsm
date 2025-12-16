// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_operator_special_opening.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOperatorSpecialOpening extends UpdateOperatorSpecialOpening {
  @override
  final int id;
  @override
  final BuiltList<int> timeSlotIds;
  @override
  final String? notes;

  factory _$UpdateOperatorSpecialOpening(
          [void Function(UpdateOperatorSpecialOpeningBuilder)? updates]) =>
      (UpdateOperatorSpecialOpeningBuilder()..update(updates))._build();

  _$UpdateOperatorSpecialOpening._(
      {required this.id, required this.timeSlotIds, this.notes})
      : super._();
  @override
  UpdateOperatorSpecialOpening rebuild(
          void Function(UpdateOperatorSpecialOpeningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateOperatorSpecialOpeningBuilder toBuilder() =>
      UpdateOperatorSpecialOpeningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOperatorSpecialOpening &&
        id == other.id &&
        timeSlotIds == other.timeSlotIds &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, timeSlotIds.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateOperatorSpecialOpening')
          ..add('id', id)
          ..add('timeSlotIds', timeSlotIds)
          ..add('notes', notes))
        .toString();
  }
}

class UpdateOperatorSpecialOpeningBuilder
    implements
        Builder<UpdateOperatorSpecialOpening,
            UpdateOperatorSpecialOpeningBuilder> {
  _$UpdateOperatorSpecialOpening? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  ListBuilder<int>? _timeSlotIds;
  ListBuilder<int> get timeSlotIds =>
      _$this._timeSlotIds ??= ListBuilder<int>();
  set timeSlotIds(ListBuilder<int>? timeSlotIds) =>
      _$this._timeSlotIds = timeSlotIds;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  UpdateOperatorSpecialOpeningBuilder() {
    UpdateOperatorSpecialOpening._defaults(this);
  }

  UpdateOperatorSpecialOpeningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _timeSlotIds = $v.timeSlotIds.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOperatorSpecialOpening other) {
    _$v = other as _$UpdateOperatorSpecialOpening;
  }

  @override
  void update(void Function(UpdateOperatorSpecialOpeningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOperatorSpecialOpening build() => _build();

  _$UpdateOperatorSpecialOpening _build() {
    _$UpdateOperatorSpecialOpening _$result;
    try {
      _$result = _$v ??
          _$UpdateOperatorSpecialOpening._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UpdateOperatorSpecialOpening', 'id'),
            timeSlotIds: timeSlotIds.build(),
            notes: notes,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlotIds';
        timeSlotIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateOperatorSpecialOpening', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
