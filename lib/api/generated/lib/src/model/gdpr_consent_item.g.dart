// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gdpr_consent_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GDPRConsentItem extends GDPRConsentItem {
  @override
  final String id;
  @override
  final String privacyVersion;
  @override
  final DateTime acceptedAt;
  @override
  final DateTime? revokedAt;
  @override
  final bool isActive;
  @override
  final String ipAddress;

  factory _$GDPRConsentItem([void Function(GDPRConsentItemBuilder)? updates]) =>
      (GDPRConsentItemBuilder()..update(updates))._build();

  _$GDPRConsentItem._(
      {required this.id,
      required this.privacyVersion,
      required this.acceptedAt,
      this.revokedAt,
      required this.isActive,
      required this.ipAddress})
      : super._();
  @override
  GDPRConsentItem rebuild(void Function(GDPRConsentItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDPRConsentItemBuilder toBuilder() => GDPRConsentItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDPRConsentItem &&
        id == other.id &&
        privacyVersion == other.privacyVersion &&
        acceptedAt == other.acceptedAt &&
        revokedAt == other.revokedAt &&
        isActive == other.isActive &&
        ipAddress == other.ipAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, privacyVersion.hashCode);
    _$hash = $jc(_$hash, acceptedAt.hashCode);
    _$hash = $jc(_$hash, revokedAt.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, ipAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDPRConsentItem')
          ..add('id', id)
          ..add('privacyVersion', privacyVersion)
          ..add('acceptedAt', acceptedAt)
          ..add('revokedAt', revokedAt)
          ..add('isActive', isActive)
          ..add('ipAddress', ipAddress))
        .toString();
  }
}

class GDPRConsentItemBuilder
    implements Builder<GDPRConsentItem, GDPRConsentItemBuilder> {
  _$GDPRConsentItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _privacyVersion;
  String? get privacyVersion => _$this._privacyVersion;
  set privacyVersion(String? privacyVersion) =>
      _$this._privacyVersion = privacyVersion;

  DateTime? _acceptedAt;
  DateTime? get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime? acceptedAt) => _$this._acceptedAt = acceptedAt;

  DateTime? _revokedAt;
  DateTime? get revokedAt => _$this._revokedAt;
  set revokedAt(DateTime? revokedAt) => _$this._revokedAt = revokedAt;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _ipAddress;
  String? get ipAddress => _$this._ipAddress;
  set ipAddress(String? ipAddress) => _$this._ipAddress = ipAddress;

  GDPRConsentItemBuilder() {
    GDPRConsentItem._defaults(this);
  }

  GDPRConsentItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _privacyVersion = $v.privacyVersion;
      _acceptedAt = $v.acceptedAt;
      _revokedAt = $v.revokedAt;
      _isActive = $v.isActive;
      _ipAddress = $v.ipAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDPRConsentItem other) {
    _$v = other as _$GDPRConsentItem;
  }

  @override
  void update(void Function(GDPRConsentItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDPRConsentItem build() => _build();

  _$GDPRConsentItem _build() {
    final _$result = _$v ??
        _$GDPRConsentItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GDPRConsentItem', 'id'),
          privacyVersion: BuiltValueNullFieldError.checkNotNull(
              privacyVersion, r'GDPRConsentItem', 'privacyVersion'),
          acceptedAt: BuiltValueNullFieldError.checkNotNull(
              acceptedAt, r'GDPRConsentItem', 'acceptedAt'),
          revokedAt: revokedAt,
          isActive: BuiltValueNullFieldError.checkNotNull(
              isActive, r'GDPRConsentItem', 'isActive'),
          ipAddress: BuiltValueNullFieldError.checkNotNull(
              ipAddress, r'GDPRConsentItem', 'ipAddress'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
