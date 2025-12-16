// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDashboard extends UserDashboard {
  @override
  final BuiltList<DashboardWidgetConfig> widgets;

  factory _$UserDashboard([void Function(UserDashboardBuilder)? updates]) =>
      (UserDashboardBuilder()..update(updates))._build();

  _$UserDashboard._({required this.widgets}) : super._();
  @override
  UserDashboard rebuild(void Function(UserDashboardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDashboardBuilder toBuilder() => UserDashboardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDashboard && widgets == other.widgets;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, widgets.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDashboard')
          ..add('widgets', widgets))
        .toString();
  }
}

class UserDashboardBuilder
    implements Builder<UserDashboard, UserDashboardBuilder> {
  _$UserDashboard? _$v;

  ListBuilder<DashboardWidgetConfig>? _widgets;
  ListBuilder<DashboardWidgetConfig> get widgets =>
      _$this._widgets ??= ListBuilder<DashboardWidgetConfig>();
  set widgets(ListBuilder<DashboardWidgetConfig>? widgets) =>
      _$this._widgets = widgets;

  UserDashboardBuilder() {
    UserDashboard._defaults(this);
  }

  UserDashboardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _widgets = $v.widgets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDashboard other) {
    _$v = other as _$UserDashboard;
  }

  @override
  void update(void Function(UserDashboardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDashboard build() => _build();

  _$UserDashboard _build() {
    _$UserDashboard _$result;
    try {
      _$result = _$v ??
          _$UserDashboard._(
            widgets: widgets.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'widgets';
        widgets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserDashboard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
