// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_assignment_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorAssignmentDetail extends OperatorAssignmentDetail {
  @override
  final int operatorId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final String? avatar;
  @override
  final String notes;
  @override
  final bool ignoreMorning;
  @override
  final bool ignoreAfternoon;
  @override
  final BuiltList<OperatorTimeSlotDetail> timeSlots;

  factory _$OperatorAssignmentDetail(
          [void Function(OperatorAssignmentDetailBuilder)? updates]) =>
      (OperatorAssignmentDetailBuilder()..update(updates))._build();

  _$OperatorAssignmentDetail._(
      {required this.operatorId,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      this.avatar,
      required this.notes,
      required this.ignoreMorning,
      required this.ignoreAfternoon,
      required this.timeSlots})
      : super._();
  @override
  OperatorAssignmentDetail rebuild(
          void Function(OperatorAssignmentDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorAssignmentDetailBuilder toBuilder() =>
      OperatorAssignmentDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorAssignmentDetail &&
        operatorId == other.operatorId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        avatar == other.avatar &&
        notes == other.notes &&
        ignoreMorning == other.ignoreMorning &&
        ignoreAfternoon == other.ignoreAfternoon &&
        timeSlots == other.timeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, ignoreMorning.hashCode);
    _$hash = $jc(_$hash, ignoreAfternoon.hashCode);
    _$hash = $jc(_$hash, timeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorAssignmentDetail')
          ..add('operatorId', operatorId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('avatar', avatar)
          ..add('notes', notes)
          ..add('ignoreMorning', ignoreMorning)
          ..add('ignoreAfternoon', ignoreAfternoon)
          ..add('timeSlots', timeSlots))
        .toString();
  }
}

class OperatorAssignmentDetailBuilder
    implements
        Builder<OperatorAssignmentDetail, OperatorAssignmentDetailBuilder> {
  _$OperatorAssignmentDetail? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _ignoreMorning;
  bool? get ignoreMorning => _$this._ignoreMorning;
  set ignoreMorning(bool? ignoreMorning) =>
      _$this._ignoreMorning = ignoreMorning;

  bool? _ignoreAfternoon;
  bool? get ignoreAfternoon => _$this._ignoreAfternoon;
  set ignoreAfternoon(bool? ignoreAfternoon) =>
      _$this._ignoreAfternoon = ignoreAfternoon;

  ListBuilder<OperatorTimeSlotDetail>? _timeSlots;
  ListBuilder<OperatorTimeSlotDetail> get timeSlots =>
      _$this._timeSlots ??= ListBuilder<OperatorTimeSlotDetail>();
  set timeSlots(ListBuilder<OperatorTimeSlotDetail>? timeSlots) =>
      _$this._timeSlots = timeSlots;

  OperatorAssignmentDetailBuilder() {
    OperatorAssignmentDetail._defaults(this);
  }

  OperatorAssignmentDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _avatar = $v.avatar;
      _notes = $v.notes;
      _ignoreMorning = $v.ignoreMorning;
      _ignoreAfternoon = $v.ignoreAfternoon;
      _timeSlots = $v.timeSlots.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorAssignmentDetail other) {
    _$v = other as _$OperatorAssignmentDetail;
  }

  @override
  void update(void Function(OperatorAssignmentDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorAssignmentDetail build() => _build();

  _$OperatorAssignmentDetail _build() {
    _$OperatorAssignmentDetail _$result;
    try {
      _$result = _$v ??
          _$OperatorAssignmentDetail._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'OperatorAssignmentDetail', 'operatorId'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'OperatorAssignmentDetail', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'OperatorAssignmentDetail', 'lastName'),
            fullName: BuiltValueNullFieldError.checkNotNull(
                fullName, r'OperatorAssignmentDetail', 'fullName'),
            avatar: avatar,
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'OperatorAssignmentDetail', 'notes'),
            ignoreMorning: BuiltValueNullFieldError.checkNotNull(
                ignoreMorning, r'OperatorAssignmentDetail', 'ignoreMorning'),
            ignoreAfternoon: BuiltValueNullFieldError.checkNotNull(
                ignoreAfternoon,
                r'OperatorAssignmentDetail',
                'ignoreAfternoon'),
            timeSlots: timeSlots.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeSlots';
        timeSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorAssignmentDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
