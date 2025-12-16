// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationType extends NotificationType {
  @override
  final int id;
  @override
  final CodeEnum code;
  @override
  final String label;
  @override
  final String? color;
  @override
  final int? ttl;
  @override
  final bool? showAsPopup;

  factory _$NotificationType(
          [void Function(NotificationTypeBuilder)? updates]) =>
      (NotificationTypeBuilder()..update(updates))._build();

  _$NotificationType._(
      {required this.id,
      required this.code,
      required this.label,
      this.color,
      this.ttl,
      this.showAsPopup})
      : super._();
  @override
  NotificationType rebuild(void Function(NotificationTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationTypeBuilder toBuilder() =>
      NotificationTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationType &&
        id == other.id &&
        code == other.code &&
        label == other.label &&
        color == other.color &&
        ttl == other.ttl &&
        showAsPopup == other.showAsPopup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, ttl.hashCode);
    _$hash = $jc(_$hash, showAsPopup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationType')
          ..add('id', id)
          ..add('code', code)
          ..add('label', label)
          ..add('color', color)
          ..add('ttl', ttl)
          ..add('showAsPopup', showAsPopup))
        .toString();
  }
}

class NotificationTypeBuilder
    implements Builder<NotificationType, NotificationTypeBuilder> {
  _$NotificationType? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CodeEnum? _code;
  CodeEnum? get code => _$this._code;
  set code(CodeEnum? code) => _$this._code = code;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _ttl;
  int? get ttl => _$this._ttl;
  set ttl(int? ttl) => _$this._ttl = ttl;

  bool? _showAsPopup;
  bool? get showAsPopup => _$this._showAsPopup;
  set showAsPopup(bool? showAsPopup) => _$this._showAsPopup = showAsPopup;

  NotificationTypeBuilder() {
    NotificationType._defaults(this);
  }

  NotificationTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _label = $v.label;
      _color = $v.color;
      _ttl = $v.ttl;
      _showAsPopup = $v.showAsPopup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationType other) {
    _$v = other as _$NotificationType;
  }

  @override
  void update(void Function(NotificationTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationType build() => _build();

  _$NotificationType _build() {
    final _$result = _$v ??
        _$NotificationType._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'NotificationType', 'id'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'NotificationType', 'code'),
          label: BuiltValueNullFieldError.checkNotNull(
              label, r'NotificationType', 'label'),
          color: color,
          ttl: ttl,
          showAsPopup: showAsPopup,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
