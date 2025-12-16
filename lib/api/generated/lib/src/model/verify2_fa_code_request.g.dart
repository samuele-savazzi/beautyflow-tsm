// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify2_fa_code_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Verify2FACodeRequest extends Verify2FACodeRequest {
  @override
  final String? code;
  @override
  final String? backupCode;

  factory _$Verify2FACodeRequest(
          [void Function(Verify2FACodeRequestBuilder)? updates]) =>
      (Verify2FACodeRequestBuilder()..update(updates))._build();

  _$Verify2FACodeRequest._({this.code, this.backupCode}) : super._();
  @override
  Verify2FACodeRequest rebuild(
          void Function(Verify2FACodeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Verify2FACodeRequestBuilder toBuilder() =>
      Verify2FACodeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verify2FACodeRequest &&
        code == other.code &&
        backupCode == other.backupCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, backupCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Verify2FACodeRequest')
          ..add('code', code)
          ..add('backupCode', backupCode))
        .toString();
  }
}

class Verify2FACodeRequestBuilder
    implements Builder<Verify2FACodeRequest, Verify2FACodeRequestBuilder> {
  _$Verify2FACodeRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _backupCode;
  String? get backupCode => _$this._backupCode;
  set backupCode(String? backupCode) => _$this._backupCode = backupCode;

  Verify2FACodeRequestBuilder() {
    Verify2FACodeRequest._defaults(this);
  }

  Verify2FACodeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _backupCode = $v.backupCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verify2FACodeRequest other) {
    _$v = other as _$Verify2FACodeRequest;
  }

  @override
  void update(void Function(Verify2FACodeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Verify2FACodeRequest build() => _build();

  _$Verify2FACodeRequest _build() {
    final _$result = _$v ??
        _$Verify2FACodeRequest._(
          code: code,
          backupCode: backupCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
