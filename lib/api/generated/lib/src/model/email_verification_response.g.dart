// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailVerificationResponse extends EmailVerificationResponse {
  @override
  final bool exists;

  factory _$EmailVerificationResponse(
          [void Function(EmailVerificationResponseBuilder)? updates]) =>
      (EmailVerificationResponseBuilder()..update(updates))._build();

  _$EmailVerificationResponse._({required this.exists}) : super._();
  @override
  EmailVerificationResponse rebuild(
          void Function(EmailVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailVerificationResponseBuilder toBuilder() =>
      EmailVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailVerificationResponse && exists == other.exists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailVerificationResponse')
          ..add('exists', exists))
        .toString();
  }
}

class EmailVerificationResponseBuilder
    implements
        Builder<EmailVerificationResponse, EmailVerificationResponseBuilder> {
  _$EmailVerificationResponse? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  EmailVerificationResponseBuilder() {
    EmailVerificationResponse._defaults(this);
  }

  EmailVerificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailVerificationResponse other) {
    _$v = other as _$EmailVerificationResponse;
  }

  @override
  void update(void Function(EmailVerificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailVerificationResponse build() => _build();

  _$EmailVerificationResponse _build() {
    final _$result = _$v ??
        _$EmailVerificationResponse._(
          exists: BuiltValueNullFieldError.checkNotNull(
              exists, r'EmailVerificationResponse', 'exists'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
