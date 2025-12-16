// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_premium_operator_access_operator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchedPremiumOperatorAccessOperator
    extends PatchedPremiumOperatorAccessOperator {
  @override
  final int? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? fullName;
  @override
  final String? attachmentUrl;

  factory _$PatchedPremiumOperatorAccessOperator(
          [void Function(PatchedPremiumOperatorAccessOperatorBuilder)?
              updates]) =>
      (PatchedPremiumOperatorAccessOperatorBuilder()..update(updates))._build();

  _$PatchedPremiumOperatorAccessOperator._(
      {this.id,
      this.firstName,
      this.lastName,
      this.fullName,
      this.attachmentUrl})
      : super._();
  @override
  PatchedPremiumOperatorAccessOperator rebuild(
          void Function(PatchedPremiumOperatorAccessOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchedPremiumOperatorAccessOperatorBuilder toBuilder() =>
      PatchedPremiumOperatorAccessOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchedPremiumOperatorAccessOperator &&
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
    return (newBuiltValueToStringHelper(r'PatchedPremiumOperatorAccessOperator')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('fullName', fullName)
          ..add('attachmentUrl', attachmentUrl))
        .toString();
  }
}

class PatchedPremiumOperatorAccessOperatorBuilder
    implements
        Builder<PatchedPremiumOperatorAccessOperator,
            PatchedPremiumOperatorAccessOperatorBuilder> {
  _$PatchedPremiumOperatorAccessOperator? _$v;

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

  PatchedPremiumOperatorAccessOperatorBuilder() {
    PatchedPremiumOperatorAccessOperator._defaults(this);
  }

  PatchedPremiumOperatorAccessOperatorBuilder get _$this {
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
  void replace(PatchedPremiumOperatorAccessOperator other) {
    _$v = other as _$PatchedPremiumOperatorAccessOperator;
  }

  @override
  void update(
      void Function(PatchedPremiumOperatorAccessOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchedPremiumOperatorAccessOperator build() => _build();

  _$PatchedPremiumOperatorAccessOperator _build() {
    final _$result = _$v ??
        _$PatchedPremiumOperatorAccessOperator._(
          id: id,
          firstName: firstName,
          lastName: lastName,
          fullName: fullName,
          attachmentUrl: attachmentUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
