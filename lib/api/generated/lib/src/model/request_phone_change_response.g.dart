// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_phone_change_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestPhoneChangeResponse extends RequestPhoneChangeResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final String currentPhoneMasked;

  factory _$RequestPhoneChangeResponse(
          [void Function(RequestPhoneChangeResponseBuilder)? updates]) =>
      (RequestPhoneChangeResponseBuilder()..update(updates))._build();

  _$RequestPhoneChangeResponse._(
      {required this.success,
      required this.message,
      required this.currentPhoneMasked})
      : super._();
  @override
  RequestPhoneChangeResponse rebuild(
          void Function(RequestPhoneChangeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestPhoneChangeResponseBuilder toBuilder() =>
      RequestPhoneChangeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestPhoneChangeResponse &&
        success == other.success &&
        message == other.message &&
        currentPhoneMasked == other.currentPhoneMasked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, currentPhoneMasked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestPhoneChangeResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('currentPhoneMasked', currentPhoneMasked))
        .toString();
  }
}

class RequestPhoneChangeResponseBuilder
    implements
        Builder<RequestPhoneChangeResponse, RequestPhoneChangeResponseBuilder> {
  _$RequestPhoneChangeResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _currentPhoneMasked;
  String? get currentPhoneMasked => _$this._currentPhoneMasked;
  set currentPhoneMasked(String? currentPhoneMasked) =>
      _$this._currentPhoneMasked = currentPhoneMasked;

  RequestPhoneChangeResponseBuilder() {
    RequestPhoneChangeResponse._defaults(this);
  }

  RequestPhoneChangeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _currentPhoneMasked = $v.currentPhoneMasked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestPhoneChangeResponse other) {
    _$v = other as _$RequestPhoneChangeResponse;
  }

  @override
  void update(void Function(RequestPhoneChangeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestPhoneChangeResponse build() => _build();

  _$RequestPhoneChangeResponse _build() {
    final _$result = _$v ??
        _$RequestPhoneChangeResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'RequestPhoneChangeResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'RequestPhoneChangeResponse', 'message'),
          currentPhoneMasked: BuiltValueNullFieldError.checkNotNull(
              currentPhoneMasked,
              r'RequestPhoneChangeResponse',
              'currentPhoneMasked'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
