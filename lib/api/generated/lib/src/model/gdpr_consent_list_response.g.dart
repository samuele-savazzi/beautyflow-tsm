// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gdpr_consent_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GDPRConsentListResponse extends GDPRConsentListResponse {
  @override
  final bool success;
  @override
  final BuiltList<GDPRConsentItem> consents;

  factory _$GDPRConsentListResponse(
          [void Function(GDPRConsentListResponseBuilder)? updates]) =>
      (GDPRConsentListResponseBuilder()..update(updates))._build();

  _$GDPRConsentListResponse._({required this.success, required this.consents})
      : super._();
  @override
  GDPRConsentListResponse rebuild(
          void Function(GDPRConsentListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDPRConsentListResponseBuilder toBuilder() =>
      GDPRConsentListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDPRConsentListResponse &&
        success == other.success &&
        consents == other.consents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, consents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDPRConsentListResponse')
          ..add('success', success)
          ..add('consents', consents))
        .toString();
  }
}

class GDPRConsentListResponseBuilder
    implements
        Builder<GDPRConsentListResponse, GDPRConsentListResponseBuilder> {
  _$GDPRConsentListResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<GDPRConsentItem>? _consents;
  ListBuilder<GDPRConsentItem> get consents =>
      _$this._consents ??= ListBuilder<GDPRConsentItem>();
  set consents(ListBuilder<GDPRConsentItem>? consents) =>
      _$this._consents = consents;

  GDPRConsentListResponseBuilder() {
    GDPRConsentListResponse._defaults(this);
  }

  GDPRConsentListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _consents = $v.consents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDPRConsentListResponse other) {
    _$v = other as _$GDPRConsentListResponse;
  }

  @override
  void update(void Function(GDPRConsentListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDPRConsentListResponse build() => _build();

  _$GDPRConsentListResponse _build() {
    _$GDPRConsentListResponse _$result;
    try {
      _$result = _$v ??
          _$GDPRConsentListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'GDPRConsentListResponse', 'success'),
            consents: consents.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consents';
        consents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GDPRConsentListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
