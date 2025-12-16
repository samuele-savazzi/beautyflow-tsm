// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type_update_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationTypeUpdateItem extends NotificationTypeUpdateItem {
  @override
  final int id;
  @override
  final int? ttl;
  @override
  final bool? showAsPopup;
  @override
  final String? color;

  factory _$NotificationTypeUpdateItem(
          [void Function(NotificationTypeUpdateItemBuilder)? updates]) =>
      (NotificationTypeUpdateItemBuilder()..update(updates))._build();

  _$NotificationTypeUpdateItem._(
      {required this.id, this.ttl, this.showAsPopup, this.color})
      : super._();
  @override
  NotificationTypeUpdateItem rebuild(
          void Function(NotificationTypeUpdateItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationTypeUpdateItemBuilder toBuilder() =>
      NotificationTypeUpdateItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationTypeUpdateItem &&
        id == other.id &&
        ttl == other.ttl &&
        showAsPopup == other.showAsPopup &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, showAsPopup.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationTypeUpdateItem')
          ..add('id', id)
          ..add('ttl', ttl)
          ..add('showAsPopup', showAsPopup)
          ..add('color', color))
        .toString();
  }
}

class NotificationTypeUpdateItemBuilder
    implements
        Builder<NotificationTypeUpdateItem, NotificationTypeUpdateItemBuilder> {
  _$NotificationTypeUpdateItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _ttl;
  int? get ttl => _$this._ttl;
  set ttl(int? ttl) => _$this._ttl = ttl;

  bool? _showAsPopup;
  bool? get showAsPopup => _$this._showAsPopup;
  set showAsPopup(bool? showAsPopup) => _$this._showAsPopup = showAsPopup;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  NotificationTypeUpdateItemBuilder() {
    NotificationTypeUpdateItem._defaults(this);
  }

  NotificationTypeUpdateItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ttl = $v.ttl;
      _showAsPopup = $v.showAsPopup;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationTypeUpdateItem other) {
    _$v = other as _$NotificationTypeUpdateItem;
  }

  @override
  void update(void Function(NotificationTypeUpdateItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationTypeUpdateItem build() => _build();

  _$NotificationTypeUpdateItem _build() {
    final _$result = _$v ??
        _$NotificationTypeUpdateItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'NotificationTypeUpdateItem', 'id'),
          ttl: ttl,
          showAsPopup: showAsPopup,
          color: color,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
