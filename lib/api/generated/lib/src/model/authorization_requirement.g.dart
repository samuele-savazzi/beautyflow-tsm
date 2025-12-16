// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_requirement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationRequirement extends AuthorizationRequirement {
  @override
  final int id;
  @override
  final String resource;
  @override
  final String action;
  @override
  final bool required_;
  @override
  final String description;

  factory _$AuthorizationRequirement(
          [void Function(AuthorizationRequirementBuilder)? updates]) =>
      (AuthorizationRequirementBuilder()..update(updates))._build();

  _$AuthorizationRequirement._(
      {required this.id,
      required this.resource,
      required this.action,
      required this.required_,
      required this.description})
      : super._();
  @override
  AuthorizationRequirement rebuild(
          void Function(AuthorizationRequirementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationRequirementBuilder toBuilder() =>
      AuthorizationRequirementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationRequirement &&
        id == other.id &&
        resource == other.resource &&
        action == other.action &&
        required_ == other.required_ &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, resource.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, required_.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationRequirement')
          ..add('id', id)
          ..add('resource', resource)
          ..add('action', action)
          ..add('required_', required_)
          ..add('description', description))
        .toString();
  }
}

class AuthorizationRequirementBuilder
    implements
        Builder<AuthorizationRequirement, AuthorizationRequirementBuilder> {
  _$AuthorizationRequirement? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _resource;
  String? get resource => _$this._resource;
  set resource(String? resource) => _$this._resource = resource;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  bool? _required_;
  bool? get required_ => _$this._required_;
  set required_(bool? required_) => _$this._required_ = required_;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AuthorizationRequirementBuilder() {
    AuthorizationRequirement._defaults(this);
  }

  AuthorizationRequirementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _resource = $v.resource;
      _action = $v.action;
      _required_ = $v.required_;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationRequirement other) {
    _$v = other as _$AuthorizationRequirement;
  }

  @override
  void update(void Function(AuthorizationRequirementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationRequirement build() => _build();

  _$AuthorizationRequirement _build() {
    final _$result = _$v ??
        _$AuthorizationRequirement._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'AuthorizationRequirement', 'id'),
          resource: BuiltValueNullFieldError.checkNotNull(
              resource, r'AuthorizationRequirement', 'resource'),
          action: BuiltValueNullFieldError.checkNotNull(
              action, r'AuthorizationRequirement', 'action'),
          required_: BuiltValueNullFieldError.checkNotNull(
              required_, r'AuthorizationRequirement', 'required_'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'AuthorizationRequirement', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
