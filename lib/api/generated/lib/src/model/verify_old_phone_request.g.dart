// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_old_phone_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyOldPhoneRequest extends VerifyOldPhoneRequest {
  @override
  final String newPhone;
  @override
  final String oldPhoneOtp;

  factory _$VerifyOldPhoneRequest(
          [void Function(VerifyOldPhoneRequestBuilder)? updates]) =>
      (VerifyOldPhoneRequestBuilder()..update(updates))._build();

  _$VerifyOldPhoneRequest._({required this.newPhone, required this.oldPhoneOtp})
      : super._();
  @override
  VerifyOldPhoneRequest rebuild(
          void Function(VerifyOldPhoneRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyOldPhoneRequestBuilder toBuilder() =>
      VerifyOldPhoneRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyOldPhoneRequest &&
        newPhone == other.newPhone &&
        oldPhoneOtp == other.oldPhoneOtp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newPhone.hashCode);
    _$hash = $jc(_$hash, oldPhoneOtp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyOldPhoneRequest')
          ..add('newPhone', newPhone)
          ..add('oldPhoneOtp', oldPhoneOtp))
        .toString();
  }
}

class VerifyOldPhoneRequestBuilder
    implements Builder<VerifyOldPhoneRequest, VerifyOldPhoneRequestBuilder> {
  _$VerifyOldPhoneRequest? _$v;

  String? _newPhone;
  String? get newPhone => _$this._newPhone;
  set newPhone(String? newPhone) => _$this._newPhone = newPhone;

  String? _oldPhoneOtp;
  String? get oldPhoneOtp => _$this._oldPhoneOtp;
  set oldPhoneOtp(String? oldPhoneOtp) => _$this._oldPhoneOtp = oldPhoneOtp;

  VerifyOldPhoneRequestBuilder() {
    VerifyOldPhoneRequest._defaults(this);
  }

  VerifyOldPhoneRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPhone = $v.newPhone;
      _oldPhoneOtp = $v.oldPhoneOtp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyOldPhoneRequest other) {
    _$v = other as _$VerifyOldPhoneRequest;
  }

  @override
  void update(void Function(VerifyOldPhoneRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyOldPhoneRequest build() => _build();

  _$VerifyOldPhoneRequest _build() {
    final _$result = _$v ??
        _$VerifyOldPhoneRequest._(
          newPhone: BuiltValueNullFieldError.checkNotNull(
              newPhone, r'VerifyOldPhoneRequest', 'newPhone'),
          oldPhoneOtp: BuiltValueNullFieldError.checkNotNull(
              oldPhoneOtp, r'VerifyOldPhoneRequest', 'oldPhoneOtp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
