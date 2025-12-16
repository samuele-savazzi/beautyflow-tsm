// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_notification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestNotificationResponse extends TestNotificationResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final int? notificationsCount;

  factory _$TestNotificationResponse(
          [void Function(TestNotificationResponseBuilder)? updates]) =>
      (TestNotificationResponseBuilder()..update(updates))._build();

  _$TestNotificationResponse._(
      {required this.success, required this.message, this.notificationsCount})
      : super._();
  @override
  TestNotificationResponse rebuild(
          void Function(TestNotificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestNotificationResponseBuilder toBuilder() =>
      TestNotificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNotificationResponse &&
        success == other.success &&
        message == other.message &&
        notificationsCount == other.notificationsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, notificationsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestNotificationResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('notificationsCount', notificationsCount))
        .toString();
  }
}

class TestNotificationResponseBuilder
    implements
        Builder<TestNotificationResponse, TestNotificationResponseBuilder> {
  _$TestNotificationResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _notificationsCount;
  int? get notificationsCount => _$this._notificationsCount;
  set notificationsCount(int? notificationsCount) =>
      _$this._notificationsCount = notificationsCount;

  TestNotificationResponseBuilder() {
    TestNotificationResponse._defaults(this);
  }

  TestNotificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _notificationsCount = $v.notificationsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestNotificationResponse other) {
    _$v = other as _$TestNotificationResponse;
  }

  @override
  void update(void Function(TestNotificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNotificationResponse build() => _build();

  _$TestNotificationResponse _build() {
    final _$result = _$v ??
        _$TestNotificationResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'TestNotificationResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'TestNotificationResponse', 'message'),
          notificationsCount: notificationsCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
