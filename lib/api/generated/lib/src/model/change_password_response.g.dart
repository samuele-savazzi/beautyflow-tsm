// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordResponse extends ChangePasswordResponse {
  @override
  final String message;
  @override
  final bool mustChangePassword;

  factory _$ChangePasswordResponse(
          [void Function(ChangePasswordResponseBuilder)? updates]) =>
      (ChangePasswordResponseBuilder()..update(updates))._build();

  _$ChangePasswordResponse._(
      {required this.message, required this.mustChangePassword})
      : super._();
  @override
  ChangePasswordResponse rebuild(
          void Function(ChangePasswordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordResponseBuilder toBuilder() =>
      ChangePasswordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordResponse &&
        message == other.message &&
        mustChangePassword == other.mustChangePassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, mustChangePassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangePasswordResponse')
          ..add('message', message)
          ..add('mustChangePassword', mustChangePassword))
        .toString();
  }
}

class ChangePasswordResponseBuilder
    implements Builder<ChangePasswordResponse, ChangePasswordResponseBuilder> {
  _$ChangePasswordResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _mustChangePassword;
  bool? get mustChangePassword => _$this._mustChangePassword;
  set mustChangePassword(bool? mustChangePassword) =>
      _$this._mustChangePassword = mustChangePassword;

  ChangePasswordResponseBuilder() {
    ChangePasswordResponse._defaults(this);
  }

  ChangePasswordResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _mustChangePassword = $v.mustChangePassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePasswordResponse other) {
    _$v = other as _$ChangePasswordResponse;
  }

  @override
  void update(void Function(ChangePasswordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePasswordResponse build() => _build();

  _$ChangePasswordResponse _build() {
    final _$result = _$v ??
        _$ChangePasswordResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ChangePasswordResponse', 'message'),
          mustChangePassword: BuiltValueNullFieldError.checkNotNull(
              mustChangePassword,
              r'ChangePasswordResponse',
              'mustChangePassword'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
