// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_verification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PhoneVerificationResponse extends PhoneVerificationResponse {
  @override
  final bool exists;

  factory _$PhoneVerificationResponse(
          [void Function(PhoneVerificationResponseBuilder)? updates]) =>
      (PhoneVerificationResponseBuilder()..update(updates))._build();

  _$PhoneVerificationResponse._({required this.exists}) : super._();
  @override
  PhoneVerificationResponse rebuild(
          void Function(PhoneVerificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoneVerificationResponseBuilder toBuilder() =>
      PhoneVerificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhoneVerificationResponse && exists == other.exists;
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
    return (newBuiltValueToStringHelper(r'PhoneVerificationResponse')
          ..add('exists', exists))
        .toString();
  }
}

class PhoneVerificationResponseBuilder
    implements
        Builder<PhoneVerificationResponse, PhoneVerificationResponseBuilder> {
  _$PhoneVerificationResponse? _$v;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  PhoneVerificationResponseBuilder() {
    PhoneVerificationResponse._defaults(this);
  }

  PhoneVerificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhoneVerificationResponse other) {
    _$v = other as _$PhoneVerificationResponse;
  }

  @override
  void update(void Function(PhoneVerificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhoneVerificationResponse build() => _build();

  _$PhoneVerificationResponse _build() {
    final _$result = _$v ??
        _$PhoneVerificationResponse._(
          exists: BuiltValueNullFieldError.checkNotNull(
              exists, r'PhoneVerificationResponse', 'exists'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
