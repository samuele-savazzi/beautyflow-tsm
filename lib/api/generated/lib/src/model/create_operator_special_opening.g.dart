// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_operator_special_opening.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOperatorSpecialOpening extends CreateOperatorSpecialOpening {
  @override
  final int operatorId;
  @override
  final int specialOpeningId;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> timeSlotIds;
  @override
  final String? notes;

  factory _$CreateOperatorSpecialOpening(
          [void Function(CreateOperatorSpecialOpeningBuilder)? updates]) =>
      (CreateOperatorSpecialOpeningBuilder()..update(updates))._build();

  _$CreateOperatorSpecialOpening._(
      {required this.operatorId,
      required this.specialOpeningId,
      required this.timeSlotIds,
      this.notes})
      : super._();
  @override
  CreateOperatorSpecialOpening rebuild(
          void Function(CreateOperatorSpecialOpeningBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOperatorSpecialOpeningBuilder toBuilder() =>
      CreateOperatorSpecialOpeningBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOperatorSpecialOpening &&
        operatorId == other.operatorId &&
        specialOpeningId == other.specialOpeningId &&
        timeSlotIds == other.timeSlotIds &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, specialOpeningId.hashCode);
    _$hash = $jc(_$hash, timeSlotIds.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOperatorSpecialOpening')
          ..add('operatorId', operatorId)
          ..add('specialOpeningId', specialOpeningId)
          ..add('timeSlotIds', timeSlotIds)
          ..add('notes', notes))
        .toString();
  }
}

class CreateOperatorSpecialOpeningBuilder
    implements
        Builder<CreateOperatorSpecialOpening,
            CreateOperatorSpecialOpeningBuilder> {
  _$CreateOperatorSpecialOpening? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _specialOpeningId;
  int? get specialOpeningId => _$this._specialOpeningId;
  set specialOpeningId(int? specialOpeningId) =>
      _$this._specialOpeningId = specialOpeningId;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _timeSlotIds;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get timeSlotIds =>
      _$this._timeSlotIds ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set timeSlotIds(
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? timeSlotIds) =>
      _$this._timeSlotIds = timeSlotIds;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  CreateOperatorSpecialOpeningBuilder() {
    CreateOperatorSpecialOpening._defaults(this);
  }

  CreateOperatorSpecialOpeningBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _specialOpeningId = $v.specialOpeningId;
      _timeSlotIds = $v.timeSlotIds.toBuilder();
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOperatorSpecialOpening other) {
    _$v = other as _$CreateOperatorSpecialOpening;
  }

  @override
  void update(void Function(CreateOperatorSpecialOpeningBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOperatorSpecialOpening build() => _build();

  _$CreateOperatorSpecialOpening _build() {
    _$CreateOperatorSpecialOpening _$result;
    try {
      _$result = _$v ??
          _$CreateOperatorSpecialOpening._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'CreateOperatorSpecialOpening', 'operatorId'),
            specialOpeningId: BuiltValueNullFieldError.checkNotNull(
                specialOpeningId,
                r'CreateOperatorSpecialOpening',
                'specialOpeningId'),
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
            r'CreateOperatorSpecialOpening', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
