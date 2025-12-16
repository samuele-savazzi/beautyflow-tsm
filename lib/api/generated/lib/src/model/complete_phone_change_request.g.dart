// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_phone_change_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompletePhoneChangeRequest extends CompletePhoneChangeRequest {
  @override
  final String newPhone;
  @override
  final String newPhoneOtp;

  factory _$CompletePhoneChangeRequest(
          [void Function(CompletePhoneChangeRequestBuilder)? updates]) =>
      (CompletePhoneChangeRequestBuilder()..update(updates))._build();

  _$CompletePhoneChangeRequest._(
      {required this.newPhone, required this.newPhoneOtp})
      : super._();
  @override
  CompletePhoneChangeRequest rebuild(
          void Function(CompletePhoneChangeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletePhoneChangeRequestBuilder toBuilder() =>
      CompletePhoneChangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletePhoneChangeRequest &&
        newPhone == other.newPhone &&
        newPhoneOtp == other.newPhoneOtp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newPhone.hashCode);
    _$hash = $jc(_$hash, newPhoneOtp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompletePhoneChangeRequest')
          ..add('newPhone', newPhone)
          ..add('newPhoneOtp', newPhoneOtp))
        .toString();
  }
}

class CompletePhoneChangeRequestBuilder
    implements
        Builder<CompletePhoneChangeRequest, CompletePhoneChangeRequestBuilder> {
  _$CompletePhoneChangeRequest? _$v;

  String? _newPhone;
  String? get newPhone => _$this._newPhone;
  set newPhone(String? newPhone) => _$this._newPhone = newPhone;

  String? _newPhoneOtp;
  String? get newPhoneOtp => _$this._newPhoneOtp;
  set newPhoneOtp(String? newPhoneOtp) => _$this._newPhoneOtp = newPhoneOtp;

  CompletePhoneChangeRequestBuilder() {
    CompletePhoneChangeRequest._defaults(this);
  }

  CompletePhoneChangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPhone = $v.newPhone;
      _newPhoneOtp = $v.newPhoneOtp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletePhoneChangeRequest other) {
    _$v = other as _$CompletePhoneChangeRequest;
  }

  @override
  void update(void Function(CompletePhoneChangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletePhoneChangeRequest build() => _build();

  _$CompletePhoneChangeRequest _build() {
    final _$result = _$v ??
        _$CompletePhoneChangeRequest._(
          newPhone: BuiltValueNullFieldError.checkNotNull(
              newPhone, r'CompletePhoneChangeRequest', 'newPhone'),
          newPhoneOtp: BuiltValueNullFieldError.checkNotNull(
              newPhoneOtp, r'CompletePhoneChangeRequest', 'newPhoneOtp'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
