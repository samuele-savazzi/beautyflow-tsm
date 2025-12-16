// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fingerprint_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFingerprintRequest extends DeleteFingerprintRequest {
  @override
  final String deviceFingerprint;
  @override
  final bool confirm;

  factory _$DeleteFingerprintRequest(
          [void Function(DeleteFingerprintRequestBuilder)? updates]) =>
      (DeleteFingerprintRequestBuilder()..update(updates))._build();

  _$DeleteFingerprintRequest._(
      {required this.deviceFingerprint, required this.confirm})
      : super._();
  @override
  DeleteFingerprintRequest rebuild(
          void Function(DeleteFingerprintRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFingerprintRequestBuilder toBuilder() =>
      DeleteFingerprintRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFingerprintRequest &&
        deviceFingerprint == other.deviceFingerprint &&
        confirm == other.confirm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceFingerprint.hashCode);
    _$hash = $jc(_$hash, confirm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteFingerprintRequest')
          ..add('deviceFingerprint', deviceFingerprint)
          ..add('confirm', confirm))
        .toString();
  }
}

class DeleteFingerprintRequestBuilder
    implements
        Builder<DeleteFingerprintRequest, DeleteFingerprintRequestBuilder> {
  _$DeleteFingerprintRequest? _$v;

  String? _deviceFingerprint;
  String? get deviceFingerprint => _$this._deviceFingerprint;
  set deviceFingerprint(String? deviceFingerprint) =>
      _$this._deviceFingerprint = deviceFingerprint;

  bool? _confirm;
  bool? get confirm => _$this._confirm;
  set confirm(bool? confirm) => _$this._confirm = confirm;

  DeleteFingerprintRequestBuilder() {
    DeleteFingerprintRequest._defaults(this);
  }

  DeleteFingerprintRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceFingerprint = $v.deviceFingerprint;
      _confirm = $v.confirm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFingerprintRequest other) {
    _$v = other as _$DeleteFingerprintRequest;
  }

  @override
  void update(void Function(DeleteFingerprintRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFingerprintRequest build() => _build();

  _$DeleteFingerprintRequest _build() {
    final _$result = _$v ??
        _$DeleteFingerprintRequest._(
          deviceFingerprint: BuiltValueNullFieldError.checkNotNull(
              deviceFingerprint,
              r'DeleteFingerprintRequest',
              'deviceFingerprint'),
          confirm: BuiltValueNullFieldError.checkNotNull(
              confirm, r'DeleteFingerprintRequest', 'confirm'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
