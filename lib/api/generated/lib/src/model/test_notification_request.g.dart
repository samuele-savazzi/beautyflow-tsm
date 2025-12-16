// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestNotificationRequest extends TestNotificationRequest {
  @override
  final VisibilityEnum? visibility;
  @override
  final bool? testBulk;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? rolesFilter;
  @override
  final BuiltList<int>? areas;
  @override
  final int? userId;

  factory _$TestNotificationRequest(
          [void Function(TestNotificationRequestBuilder)? updates]) =>
      (TestNotificationRequestBuilder()..update(updates))._build();

  _$TestNotificationRequest._(
      {this.visibility,
      this.testBulk,
      this.rolesFilter,
      this.areas,
      this.userId})
      : super._();
  @override
  TestNotificationRequest rebuild(
          void Function(TestNotificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestNotificationRequestBuilder toBuilder() =>
      TestNotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNotificationRequest &&
        visibility == other.visibility &&
        testBulk == other.testBulk &&
        rolesFilter == other.rolesFilter &&
        areas == other.areas &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, testBulk.hashCode);
    _$hash = $jc(_$hash, rolesFilter.hashCode);
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestNotificationRequest')
          ..add('visibility', visibility)
          ..add('testBulk', testBulk)
          ..add('rolesFilter', rolesFilter)
          ..add('areas', areas)
          ..add('userId', userId))
        .toString();
  }
}

class TestNotificationRequestBuilder
    implements
        Builder<TestNotificationRequest, TestNotificationRequestBuilder> {
  _$TestNotificationRequest? _$v;

  VisibilityEnum? _visibility;
  VisibilityEnum? get visibility => _$this._visibility;
  set visibility(VisibilityEnum? visibility) => _$this._visibility = visibility;

  bool? _testBulk;
  bool? get testBulk => _$this._testBulk;
  set testBulk(bool? testBulk) => _$this._testBulk = testBulk;

  MapBuilder<String, Map<String, dynamic>?>? _rolesFilter;
  MapBuilder<String, Map<String, dynamic>?> get rolesFilter =>
      _$this._rolesFilter ??= MapBuilder<String, Map<String, dynamic>?>();
  set rolesFilter(MapBuilder<String, Map<String, dynamic>?>? rolesFilter) =>
      _$this._rolesFilter = rolesFilter;

  ListBuilder<int>? _areas;
  ListBuilder<int> get areas => _$this._areas ??= ListBuilder<int>();
  set areas(ListBuilder<int>? areas) => _$this._areas = areas;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  TestNotificationRequestBuilder() {
    TestNotificationRequest._defaults(this);
  }

  TestNotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _visibility = $v.visibility;
      _testBulk = $v.testBulk;
      _rolesFilter = $v.rolesFilter?.toBuilder();
      _areas = $v.areas?.toBuilder();
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestNotificationRequest other) {
    _$v = other as _$TestNotificationRequest;
  }

  @override
  void update(void Function(TestNotificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNotificationRequest build() => _build();

  _$TestNotificationRequest _build() {
    _$TestNotificationRequest _$result;
    try {
      _$result = _$v ??
          _$TestNotificationRequest._(
            visibility: visibility,
            testBulk: testBulk,
            rolesFilter: _rolesFilter?.build(),
            areas: _areas?.build(),
            userId: userId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rolesFilter';
        _rolesFilter?.build();
        _$failedField = 'areas';
        _areas?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TestNotificationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
