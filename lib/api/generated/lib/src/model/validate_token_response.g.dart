// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateTokenResponse extends ValidateTokenResponse {
  @override
  final bool valid;
  @override
  final String message;

  factory _$ValidateTokenResponse(
          [void Function(ValidateTokenResponseBuilder)? updates]) =>
      (ValidateTokenResponseBuilder()..update(updates))._build();

  _$ValidateTokenResponse._({required this.valid, required this.message})
      : super._();
  @override
  ValidateTokenResponse rebuild(
          void Function(ValidateTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateTokenResponseBuilder toBuilder() =>
      ValidateTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateTokenResponse &&
        valid == other.valid &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateTokenResponse')
          ..add('valid', valid)
          ..add('message', message))
        .toString();
  }
}

class ValidateTokenResponseBuilder
    implements Builder<ValidateTokenResponse, ValidateTokenResponseBuilder> {
  _$ValidateTokenResponse? _$v;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ValidateTokenResponseBuilder() {
    ValidateTokenResponse._defaults(this);
  }

  ValidateTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valid = $v.valid;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateTokenResponse other) {
    _$v = other as _$ValidateTokenResponse;
  }

  @override
  void update(void Function(ValidateTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateTokenResponse build() => _build();

  _$ValidateTokenResponse _build() {
    final _$result = _$v ??
        _$ValidateTokenResponse._(
          valid: BuiltValueNullFieldError.checkNotNull(
              valid, r'ValidateTokenResponse', 'valid'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ValidateTokenResponse', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
