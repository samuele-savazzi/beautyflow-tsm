// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_notifications_read.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MarkNotificationsRead extends MarkNotificationsRead {
  @override
  final BuiltList<int> notificationIds;
  @override
  final bool? all;

  factory _$MarkNotificationsRead(
          [void Function(MarkNotificationsReadBuilder)? updates]) =>
      (MarkNotificationsReadBuilder()..update(updates))._build();

  _$MarkNotificationsRead._({required this.notificationIds, this.all})
      : super._();
  @override
  MarkNotificationsRead rebuild(
          void Function(MarkNotificationsReadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkNotificationsReadBuilder toBuilder() =>
      MarkNotificationsReadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarkNotificationsRead &&
        notificationIds == other.notificationIds &&
        all == other.all;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notificationIds.hashCode);
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MarkNotificationsRead')
          ..add('notificationIds', notificationIds)
          ..add('all', all))
        .toString();
  }
}

class MarkNotificationsReadBuilder
    implements Builder<MarkNotificationsRead, MarkNotificationsReadBuilder> {
  _$MarkNotificationsRead? _$v;

  ListBuilder<int>? _notificationIds;
  ListBuilder<int> get notificationIds =>
      _$this._notificationIds ??= ListBuilder<int>();
  set notificationIds(ListBuilder<int>? notificationIds) =>
      _$this._notificationIds = notificationIds;

  bool? _all;
  bool? get all => _$this._all;
  set all(bool? all) => _$this._all = all;

  MarkNotificationsReadBuilder() {
    MarkNotificationsRead._defaults(this);
  }

  MarkNotificationsReadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationIds = $v.notificationIds.toBuilder();
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarkNotificationsRead other) {
    _$v = other as _$MarkNotificationsRead;
  }

  @override
  void update(void Function(MarkNotificationsReadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MarkNotificationsRead build() => _build();

  _$MarkNotificationsRead _build() {
    _$MarkNotificationsRead _$result;
    try {
      _$result = _$v ??
          _$MarkNotificationsRead._(
            notificationIds: notificationIds.build(),
            all: all,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notificationIds';
        notificationIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'MarkNotificationsRead', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
