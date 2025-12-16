// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_notifications_read_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MarkNotificationsReadResponse extends MarkNotificationsReadResponse {
  @override
  final bool success;
  @override
  final String message;
  @override
  final int count;

  factory _$MarkNotificationsReadResponse(
          [void Function(MarkNotificationsReadResponseBuilder)? updates]) =>
      (MarkNotificationsReadResponseBuilder()..update(updates))._build();

  _$MarkNotificationsReadResponse._(
      {required this.success, required this.message, required this.count})
      : super._();
  @override
  MarkNotificationsReadResponse rebuild(
          void Function(MarkNotificationsReadResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkNotificationsReadResponseBuilder toBuilder() =>
      MarkNotificationsReadResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarkNotificationsReadResponse &&
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
    return (newBuiltValueToStringHelper(r'MarkNotificationsReadResponse')
          ..add('success', success)
          ..add('message', message)
          ..add('count', count))
        .toString();
  }
}

class MarkNotificationsReadResponseBuilder
    implements
        Builder<MarkNotificationsReadResponse,
            MarkNotificationsReadResponseBuilder> {
  _$MarkNotificationsReadResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  MarkNotificationsReadResponseBuilder() {
    MarkNotificationsReadResponse._defaults(this);
  }

  MarkNotificationsReadResponseBuilder get _$this {
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
  void replace(MarkNotificationsReadResponse other) {
    _$v = other as _$MarkNotificationsReadResponse;
  }

  @override
  void update(void Function(MarkNotificationsReadResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MarkNotificationsReadResponse build() => _build();

  _$MarkNotificationsReadResponse _build() {
    final _$result = _$v ??
        _$MarkNotificationsReadResponse._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'MarkNotificationsReadResponse', 'success'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'MarkNotificationsReadResponse', 'message'),
          count: BuiltValueNullFieldError.checkNotNull(
              count, r'MarkNotificationsReadResponse', 'count'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
