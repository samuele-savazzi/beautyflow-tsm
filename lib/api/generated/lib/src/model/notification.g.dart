// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final int id;
  @override
  final String title;
  @override
  final String message;
  @override
  final String? type;
  @override
  final String label;
  @override
  final String color;
  @override
  final String priority;
  @override
  final String? imageUrl;
  @override
  final String? actionUrl;
  @override
  final Map<String, dynamic>? extraData;
  @override
  final bool read;
  @override
  final DateTime? readAt;
  @override
  final DateTime createdAt;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (NotificationBuilder()..update(updates))._build();

  _$Notification._(
      {required this.id,
      required this.title,
      required this.message,
      this.type,
      required this.label,
      required this.color,
      required this.priority,
      this.imageUrl,
      this.actionUrl,
      this.extraData,
      required this.read,
      this.readAt,
      required this.createdAt})
      : super._();
  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        id == other.id &&
        title == other.title &&
        message == other.message &&
        type == other.type &&
        label == other.label &&
        color == other.color &&
        priority == other.priority &&
        imageUrl == other.imageUrl &&
        actionUrl == other.actionUrl &&
        extraData == other.extraData &&
        read == other.read &&
        readAt == other.readAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, actionUrl.hashCode);
    _$hash = $jc(_$hash, extraData.hashCode);
    _$hash = $jc(_$hash, read.hashCode);
    _$hash = $jc(_$hash, readAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notification')
          ..add('id', id)
          ..add('title', title)
          ..add('message', message)
          ..add('type', type)
          ..add('label', label)
          ..add('color', color)
          ..add('priority', priority)
          ..add('imageUrl', imageUrl)
          ..add('actionUrl', actionUrl)
          ..add('extraData', extraData)
          ..add('read', read)
          ..add('readAt', readAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _priority;
  String? get priority => _$this._priority;
  set priority(String? priority) => _$this._priority = priority;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _actionUrl;
  String? get actionUrl => _$this._actionUrl;
  set actionUrl(String? actionUrl) => _$this._actionUrl = actionUrl;

  Map<String, dynamic>? _extraData;
  Map<String, dynamic>? get extraData => _$this._extraData;
  set extraData(Map<String, dynamic>? extraData) =>
      _$this._extraData = extraData;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  DateTime? _readAt;
  DateTime? get readAt => _$this._readAt;
  set readAt(DateTime? readAt) => _$this._readAt = readAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _message = $v.message;
      _type = $v.type;
      _label = $v.label;
      _color = $v.color;
      _priority = $v.priority;
      _imageUrl = $v.imageUrl;
      _actionUrl = $v.actionUrl;
      _extraData = $v.extraData;
      _read = $v.read;
      _readAt = $v.readAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notification build() => _build();

  _$Notification _build() {
    final _$result = _$v ??
        _$Notification._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Notification', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'Notification', 'title'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'Notification', 'message'),
          type: type,
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'Notification', 'label'),
          color: BuiltValueNullFieldError.checkNotNull(
              color, r'Notification', 'color'),
          priority: BuiltValueNullFieldError.checkNotNull(
              priority, r'Notification', 'priority'),
          imageUrl: imageUrl,
          actionUrl: actionUrl,
          extraData: extraData,
          read: BuiltValueNullFieldError.checkNotNull(
              read, r'Notification', 'read'),
          readAt: readAt,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Notification', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
