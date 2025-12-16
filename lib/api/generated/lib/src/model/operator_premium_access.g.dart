// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_premium_access.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorPremiumAccess extends OperatorPremiumAccess {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final String? attachmentUrl;
  @override
  final int extraDays;

  factory _$OperatorPremiumAccess(
          [void Function(OperatorPremiumAccessBuilder)? updates]) =>
      (OperatorPremiumAccessBuilder()..update(updates))._build();

  _$OperatorPremiumAccess._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      this.attachmentUrl,
      required this.extraDays})
      : super._();
  @override
  OperatorPremiumAccess rebuild(
          void Function(OperatorPremiumAccessBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorPremiumAccessBuilder toBuilder() =>
      OperatorPremiumAccessBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorPremiumAccess &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        attachmentUrl == other.attachmentUrl &&
        extraDays == other.extraDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, attachmentUrl.hashCode);
    _$hash = $jc(_$hash, extraDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorPremiumAccess')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('attachmentUrl', attachmentUrl)
          ..add('extraDays', extraDays))
        .toString();
  }
}

class OperatorPremiumAccessBuilder
    implements Builder<OperatorPremiumAccess, OperatorPremiumAccessBuilder> {
  _$OperatorPremiumAccess? _$v;

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

  String? _attachmentUrl;
  String? get attachmentUrl => _$this._attachmentUrl;
  set attachmentUrl(String? attachmentUrl) =>
      _$this._attachmentUrl = attachmentUrl;

  int? _extraDays;
  int? get extraDays => _$this._extraDays;
  set extraDays(int? extraDays) => _$this._extraDays = extraDays;

  OperatorPremiumAccessBuilder() {
    OperatorPremiumAccess._defaults(this);
  }

  OperatorPremiumAccessBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _attachmentUrl = $v.attachmentUrl;
      _extraDays = $v.extraDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorPremiumAccess other) {
    _$v = other as _$OperatorPremiumAccess;
  }

  @override
  void update(void Function(OperatorPremiumAccessBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorPremiumAccess build() => _build();

  _$OperatorPremiumAccess _build() {
    final _$result = _$v ??
        _$OperatorPremiumAccess._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'OperatorPremiumAccess', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'OperatorPremiumAccess', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'OperatorPremiumAccess', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'OperatorPremiumAccess', 'fullName'),
          attachmentUrl: attachmentUrl,
          extraDays: BuiltValueNullFieldError.checkNotNull(
              extraDays, r'OperatorPremiumAccess', 'extraDays'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
