// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_device_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDeviceToken extends UpdateDeviceToken {
  @override
  final int id;
  @override
  final bool active;

  factory _$UpdateDeviceToken(
          [void Function(UpdateDeviceTokenBuilder)? updates]) =>
      (UpdateDeviceTokenBuilder()..update(updates))._build();

  _$UpdateDeviceToken._({required this.id, required this.active}) : super._();
  @override
  UpdateDeviceToken rebuild(void Function(UpdateDeviceTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDeviceTokenBuilder toBuilder() =>
      UpdateDeviceTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDeviceToken &&
        id == other.id &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateDeviceToken')
          ..add('id', id)
          ..add('active', active))
        .toString();
  }
}

class UpdateDeviceTokenBuilder
    implements Builder<UpdateDeviceToken, UpdateDeviceTokenBuilder> {
  _$UpdateDeviceToken? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  UpdateDeviceTokenBuilder() {
    UpdateDeviceToken._defaults(this);
  }

  UpdateDeviceTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateDeviceToken other) {
    _$v = other as _$UpdateDeviceToken;
  }

  @override
  void update(void Function(UpdateDeviceTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDeviceToken build() => _build();

  _$UpdateDeviceToken _build() {
    final _$result = _$v ??
        _$UpdateDeviceToken._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UpdateDeviceToken', 'id'),
          active: BuiltValueNullFieldError.checkNotNull(
              active, r'UpdateDeviceToken', 'active'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
