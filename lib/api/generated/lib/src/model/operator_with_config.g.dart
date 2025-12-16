// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_with_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorWithConfig extends OperatorWithConfig {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final String? avatar;
  @override
  final bool morningWorking;
  @override
  final String? morningStartTime;
  @override
  final String? morningEndTime;
  @override
  final bool afternoonWorking;
  @override
  final String? afternoonStartTime;
  @override
  final String? afternoonEndTime;
  @override
  final bool ignoreMorning;
  @override
  final bool ignoreAfternoon;
  @override
  final String notes;

  factory _$OperatorWithConfig(
          [void Function(OperatorWithConfigBuilder)? updates]) =>
      (OperatorWithConfigBuilder()..update(updates))._build();

  _$OperatorWithConfig._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      this.avatar,
      required this.morningWorking,
      this.morningStartTime,
      this.morningEndTime,
      required this.afternoonWorking,
      this.afternoonStartTime,
      this.afternoonEndTime,
      required this.ignoreMorning,
      required this.ignoreAfternoon,
      required this.notes})
      : super._();
  @override
  OperatorWithConfig rebuild(
          void Function(OperatorWithConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorWithConfigBuilder toBuilder() =>
      OperatorWithConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorWithConfig &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        avatar == other.avatar &&
        morningWorking == other.morningWorking &&
        morningStartTime == other.morningStartTime &&
        morningEndTime == other.morningEndTime &&
        afternoonWorking == other.afternoonWorking &&
        afternoonStartTime == other.afternoonStartTime &&
        afternoonEndTime == other.afternoonEndTime &&
        ignoreMorning == other.ignoreMorning &&
        ignoreAfternoon == other.ignoreAfternoon &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, morningWorking.hashCode);
    _$hash = $jc(_$hash, morningStartTime.hashCode);
    _$hash = $jc(_$hash, morningEndTime.hashCode);
    _$hash = $jc(_$hash, afternoonWorking.hashCode);
    _$hash = $jc(_$hash, afternoonStartTime.hashCode);
    _$hash = $jc(_$hash, afternoonEndTime.hashCode);
    _$hash = $jc(_$hash, ignoreMorning.hashCode);
    _$hash = $jc(_$hash, ignoreAfternoon.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorWithConfig')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('avatar', avatar)
          ..add('morningWorking', morningWorking)
          ..add('morningStartTime', morningStartTime)
          ..add('morningEndTime', morningEndTime)
          ..add('afternoonWorking', afternoonWorking)
          ..add('afternoonStartTime', afternoonStartTime)
          ..add('afternoonEndTime', afternoonEndTime)
          ..add('ignoreMorning', ignoreMorning)
          ..add('ignoreAfternoon', ignoreAfternoon)
          ..add('notes', notes))
        .toString();
  }
}

class OperatorWithConfigBuilder
    implements Builder<OperatorWithConfig, OperatorWithConfigBuilder> {
  _$OperatorWithConfig? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

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

  bool? _morningWorking;
  bool? get morningWorking => _$this._morningWorking;
  set morningWorking(bool? morningWorking) =>
      _$this._morningWorking = morningWorking;

  String? _morningStartTime;
  String? get morningStartTime => _$this._morningStartTime;
  set morningStartTime(String? morningStartTime) =>
      _$this._morningStartTime = morningStartTime;

  String? _morningEndTime;
  String? get morningEndTime => _$this._morningEndTime;
  set morningEndTime(String? morningEndTime) =>
      _$this._morningEndTime = morningEndTime;

  bool? _afternoonWorking;
  bool? get afternoonWorking => _$this._afternoonWorking;
  set afternoonWorking(bool? afternoonWorking) =>
      _$this._afternoonWorking = afternoonWorking;

  String? _afternoonStartTime;
  String? get afternoonStartTime => _$this._afternoonStartTime;
  set afternoonStartTime(String? afternoonStartTime) =>
      _$this._afternoonStartTime = afternoonStartTime;

  String? _afternoonEndTime;
  String? get afternoonEndTime => _$this._afternoonEndTime;
  set afternoonEndTime(String? afternoonEndTime) =>
      _$this._afternoonEndTime = afternoonEndTime;

  bool? _ignoreMorning;
  bool? get ignoreMorning => _$this._ignoreMorning;
  set ignoreMorning(bool? ignoreMorning) =>
      _$this._ignoreMorning = ignoreMorning;

  bool? _ignoreAfternoon;
  bool? get ignoreAfternoon => _$this._ignoreAfternoon;
  set ignoreAfternoon(bool? ignoreAfternoon) =>
      _$this._ignoreAfternoon = ignoreAfternoon;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  OperatorWithConfigBuilder() {
    OperatorWithConfig._defaults(this);
  }

  OperatorWithConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _avatar = $v.avatar;
      _morningWorking = $v.morningWorking;
      _morningStartTime = $v.morningStartTime;
      _morningEndTime = $v.morningEndTime;
      _afternoonWorking = $v.afternoonWorking;
      _afternoonStartTime = $v.afternoonStartTime;
      _afternoonEndTime = $v.afternoonEndTime;
      _ignoreMorning = $v.ignoreMorning;
      _ignoreAfternoon = $v.ignoreAfternoon;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorWithConfig other) {
    _$v = other as _$OperatorWithConfig;
  }

  @override
  void update(void Function(OperatorWithConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorWithConfig build() => _build();

  _$OperatorWithConfig _build() {
    final _$result = _$v ??
        _$OperatorWithConfig._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorWithConfig', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'OperatorWithConfig', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'OperatorWithConfig', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'OperatorWithConfig', 'fullName'),
          avatar: avatar,
          morningWorking: BuiltValueNullFieldError.checkNotNull(
              morningWorking, r'OperatorWithConfig', 'morningWorking'),
          morningStartTime: morningStartTime,
          morningEndTime: morningEndTime,
          afternoonWorking: BuiltValueNullFieldError.checkNotNull(
              afternoonWorking, r'OperatorWithConfig', 'afternoonWorking'),
          afternoonStartTime: afternoonStartTime,
          afternoonEndTime: afternoonEndTime,
          ignoreMorning: BuiltValueNullFieldError.checkNotNull(
              ignoreMorning, r'OperatorWithConfig', 'ignoreMorning'),
          ignoreAfternoon: BuiltValueNullFieldError.checkNotNull(
              ignoreAfternoon, r'OperatorWithConfig', 'ignoreAfternoon'),
          notes: BuiltValueNullFieldError.checkNotNull(
              notes, r'OperatorWithConfig', 'notes'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
