// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorInfo extends OperatorInfo {
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

  factory _$OperatorInfo([void Function(OperatorInfoBuilder)? updates]) =>
      (OperatorInfoBuilder()..update(updates))._build();

  _$OperatorInfo._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      this.avatar})
      : super._();
  @override
  OperatorInfo rebuild(void Function(OperatorInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorInfoBuilder toBuilder() => OperatorInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorInfo &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorInfo')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('avatar', avatar))
        .toString();
  }
}

class OperatorInfoBuilder
    implements Builder<OperatorInfo, OperatorInfoBuilder> {
  _$OperatorInfo? _$v;

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

  OperatorInfoBuilder() {
    OperatorInfo._defaults(this);
  }

  OperatorInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorInfo other) {
    _$v = other as _$OperatorInfo;
  }

  @override
  void update(void Function(OperatorInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorInfo build() => _build();

  _$OperatorInfo _build() {
    final _$result = _$v ??
        _$OperatorInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'OperatorInfo', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'OperatorInfo', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'OperatorInfo', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'OperatorInfo', 'fullName'),
          avatar: avatar,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
