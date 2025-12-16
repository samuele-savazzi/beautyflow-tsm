// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorBasic extends OperatorBasic {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String fullName;
  @override
  final String attachmentUrl;

  factory _$OperatorBasic([void Function(OperatorBasicBuilder)? updates]) =>
      (OperatorBasicBuilder()..update(updates))._build();

  _$OperatorBasic._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.fullName,
      required this.attachmentUrl})
      : super._();
  @override
  OperatorBasic rebuild(void Function(OperatorBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorBasicBuilder toBuilder() => OperatorBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorBasic &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        fullName == other.fullName &&
        attachmentUrl == other.attachmentUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, attachmentUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorBasic')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('attachmentUrl', attachmentUrl))
        .toString();
  }
}

class OperatorBasicBuilder
    implements Builder<OperatorBasic, OperatorBasicBuilder> {
  _$OperatorBasic? _$v;

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

  OperatorBasicBuilder() {
    OperatorBasic._defaults(this);
  }

  OperatorBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _fullName = $v.fullName;
      _attachmentUrl = $v.attachmentUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorBasic other) {
    _$v = other as _$OperatorBasic;
  }

  @override
  void update(void Function(OperatorBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorBasic build() => _build();

  _$OperatorBasic _build() {
    final _$result = _$v ??
        _$OperatorBasic._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'OperatorBasic', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'OperatorBasic', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'OperatorBasic', 'lastName'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'OperatorBasic', 'fullName'),
          attachmentUrl: BuiltValueNullFieldError.checkNotNull(
              attachmentUrl, r'OperatorBasic', 'attachmentUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
