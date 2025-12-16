// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_notification_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNotificationResponse extends DeleteNotificationResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final int count;

  factory _$DeleteNotificationResponse(
          [void Function(DeleteNotificationResponseBuilder)? updates]) =>
      (DeleteNotificationResponseBuilder()..update(updates))._build();

  _$DeleteNotificationResponse._(
      {required this.success, required this.message, required this.count})
      : super._();
  @override
  DeleteNotificationResponse rebuild(
          void Function(DeleteNotificationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNotificationResponseBuilder toBuilder() =>
      DeleteNotificationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNotificationResponse &&
        success == other.success &&
        message == other.message &&
        count == other.count;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteNotificationResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('count', count))
        .toString();
  }
}

class DeleteNotificationResponseBuilder
    implements
        Builder<DeleteNotificationResponse, DeleteNotificationResponseBuilder> {
  _$DeleteNotificationResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  DeleteNotificationResponseBuilder() {
    DeleteNotificationResponse._defaults(this);
  }

  DeleteNotificationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNotificationResponse other) {
    _$v = other as _$DeleteNotificationResponse;
  }

  @override
  void update(void Function(DeleteNotificationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNotificationResponse build() => _build();

  _$DeleteNotificationResponse _build() {
    final _$result = _$v ??
        _$DeleteNotificationResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'DeleteNotificationResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'DeleteNotificationResponse', 'message'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'DeleteNotificationResponse', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
