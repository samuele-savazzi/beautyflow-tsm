// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileResponse extends ProfileResponse {
  @override
  final TenantAdminDetail admin;
  @override
  final bool requiresPasswordChange;
  @override
  final bool requires2faSetup;
  @override
  final BuiltMap<String, Map<String, dynamic>?> sessionInfo;

  factory _$ProfileResponse([void Function(ProfileResponseBuilder)? updates]) =>
      (ProfileResponseBuilder()..update(updates))._build();

  _$ProfileResponse._(
      {required this.admin,
      required this.requiresPasswordChange,
      required this.requires2faSetup,
      required this.sessionInfo})
      : super._();
  @override
  ProfileResponse rebuild(void Function(ProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileResponseBuilder toBuilder() => ProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileResponse &&
        admin == other.admin &&
        requiresPasswordChange == other.requiresPasswordChange &&
        requires2faSetup == other.requires2faSetup &&
        sessionInfo == other.sessionInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, admin.hashCode);
    _$hash = $jc(_$hash, requiresPasswordChange.hashCode);
    _$hash = $jc(_$hash, requires2faSetup.hashCode);
    _$hash = $jc(_$hash, sessionInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileResponse')
          ..add('admin', admin)
          ..add('requiresPasswordChange', requiresPasswordChange)
          ..add('requires2faSetup', requires2faSetup)
          ..add('sessionInfo', sessionInfo))
        .toString();
  }
}

class ProfileResponseBuilder
    implements Builder<ProfileResponse, ProfileResponseBuilder> {
  _$ProfileResponse? _$v;

  TenantAdminDetailBuilder? _admin;
  TenantAdminDetailBuilder get admin =>
      _$this._admin ??= TenantAdminDetailBuilder();
  set admin(TenantAdminDetailBuilder? admin) => _$this._admin = admin;

  bool? _requiresPasswordChange;
  bool? get requiresPasswordChange => _$this._requiresPasswordChange;
  set requiresPasswordChange(bool? requiresPasswordChange) =>
      _$this._requiresPasswordChange = requiresPasswordChange;

  bool? _requires2faSetup;
  bool? get requires2faSetup => _$this._requires2faSetup;
  set requires2faSetup(bool? requires2faSetup) =>
      _$this._requires2faSetup = requires2faSetup;

  MapBuilder<String, Map<String, dynamic>?>? _sessionInfo;
  MapBuilder<String, Map<String, dynamic>?> get sessionInfo =>
      _$this._sessionInfo ??= MapBuilder<String, Map<String, dynamic>?>();
  set sessionInfo(MapBuilder<String, Map<String, dynamic>?>? sessionInfo) =>
      _$this._sessionInfo = sessionInfo;

  ProfileResponseBuilder() {
    ProfileResponse._defaults(this);
  }

  ProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _admin = $v.admin.toBuilder();
      _requiresPasswordChange = $v.requiresPasswordChange;
      _requires2faSetup = $v.requires2faSetup;
      _sessionInfo = $v.sessionInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileResponse other) {
    _$v = other as _$ProfileResponse;
  }

  @override
  void update(void Function(ProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileResponse build() => _build();

  _$ProfileResponse _build() {
    _$ProfileResponse _$result;
    try {
      _$result = _$v ??
          _$ProfileResponse._(
            admin: admin.build(),
            requiresPasswordChange: BuiltValueNullFieldError.checkNotNull(
                requiresPasswordChange,
                r'ProfileResponse',
                'requiresPasswordChange'),
            requires2faSetup: BuiltValueNullFieldError.checkNotNull(
                requires2faSetup, r'ProfileResponse', 'requires2faSetup'),
            sessionInfo: sessionInfo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'admin';
        admin.build();

        _$failedField = 'sessionInfo';
        sessionInfo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
