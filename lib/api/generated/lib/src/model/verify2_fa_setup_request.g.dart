// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify2_fa_setup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Verify2FASetupRequest extends Verify2FASetupRequest {
  @override
  final String code;

  factory _$Verify2FASetupRequest(
          [void Function(Verify2FASetupRequestBuilder)? updates]) =>
      (Verify2FASetupRequestBuilder()..update(updates))._build();

  _$Verify2FASetupRequest._({required this.code}) : super._();
  @override
  Verify2FASetupRequest rebuild(
          void Function(Verify2FASetupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Verify2FASetupRequestBuilder toBuilder() =>
      Verify2FASetupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verify2FASetupRequest && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Verify2FASetupRequest')
          ..add('code', code))
        .toString();
  }
}

class Verify2FASetupRequestBuilder
    implements Builder<Verify2FASetupRequest, Verify2FASetupRequestBuilder> {
  _$Verify2FASetupRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  Verify2FASetupRequestBuilder() {
    Verify2FASetupRequest._defaults(this);
  }

  Verify2FASetupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verify2FASetupRequest other) {
    _$v = other as _$Verify2FASetupRequest;
  }

  @override
  void update(void Function(Verify2FASetupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Verify2FASetupRequest build() => _build();

  _$Verify2FASetupRequest _build() {
    final _$result = _$v ??
        _$Verify2FASetupRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'Verify2FASetupRequest', 'code'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
