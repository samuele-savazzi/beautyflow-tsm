// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_old_phone_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyOldPhoneResponse extends VerifyOldPhoneResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final String newPhoneMasked;

  factory _$VerifyOldPhoneResponse(
          [void Function(VerifyOldPhoneResponseBuilder)? updates]) =>
      (VerifyOldPhoneResponseBuilder()..update(updates))._build();

  _$VerifyOldPhoneResponse._(
      {required this.success,
      required this.message,
      required this.newPhoneMasked})
      : super._();
  @override
  VerifyOldPhoneResponse rebuild(
          void Function(VerifyOldPhoneResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyOldPhoneResponseBuilder toBuilder() =>
      VerifyOldPhoneResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyOldPhoneResponse &&
        success == other.success &&
        message == other.message &&
        newPhoneMasked == other.newPhoneMasked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, newPhoneMasked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyOldPhoneResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('newPhoneMasked', newPhoneMasked))
        .toString();
  }
}

class VerifyOldPhoneResponseBuilder
    implements Builder<VerifyOldPhoneResponse, VerifyOldPhoneResponseBuilder> {
  _$VerifyOldPhoneResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _newPhoneMasked;
  String? get newPhoneMasked => _$this._newPhoneMasked;
  set newPhoneMasked(String? newPhoneMasked) =>
      _$this._newPhoneMasked = newPhoneMasked;

  VerifyOldPhoneResponseBuilder() {
    VerifyOldPhoneResponse._defaults(this);
  }

  VerifyOldPhoneResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _newPhoneMasked = $v.newPhoneMasked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyOldPhoneResponse other) {
    _$v = other as _$VerifyOldPhoneResponse;
  }

  @override
  void update(void Function(VerifyOldPhoneResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyOldPhoneResponse build() => _build();

  _$VerifyOldPhoneResponse _build() {
    final _$result = _$v ??
        _$VerifyOldPhoneResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'VerifyOldPhoneResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'VerifyOldPhoneResponse', 'message'),
          newPhoneMasked: BuiltValueNullFieldError.checkNotNull(
              newPhoneMasked, r'VerifyOldPhoneResponse', 'newPhoneMasked'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
