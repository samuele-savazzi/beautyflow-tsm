// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvitationDetailsResponse extends InvitationDetailsResponse {
  @override
  final bool success;
  @override
  final PublicInvitationDetail invitation;

  factory _$InvitationDetailsResponse(
          [void Function(InvitationDetailsResponseBuilder)? updates]) =>
      (InvitationDetailsResponseBuilder()..update(updates))._build();

  _$InvitationDetailsResponse._(
      {required this.success, required this.invitation})
      : super._();
  @override
  InvitationDetailsResponse rebuild(
          void Function(InvitationDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvitationDetailsResponseBuilder toBuilder() =>
      InvitationDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvitationDetailsResponse &&
        success == other.success &&
        invitation == other.invitation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, invitation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvitationDetailsResponse')
          ..add('success', success)
          ..add('invitation', invitation))
        .toString();
  }
}

class InvitationDetailsResponseBuilder
    implements
        Builder<InvitationDetailsResponse, InvitationDetailsResponseBuilder> {
  _$InvitationDetailsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  PublicInvitationDetailBuilder? _invitation;
  PublicInvitationDetailBuilder get invitation =>
      _$this._invitation ??= PublicInvitationDetailBuilder();
  set invitation(PublicInvitationDetailBuilder? invitation) =>
      _$this._invitation = invitation;

  InvitationDetailsResponseBuilder() {
    InvitationDetailsResponse._defaults(this);
  }

  InvitationDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _invitation = $v.invitation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvitationDetailsResponse other) {
    _$v = other as _$InvitationDetailsResponse;
  }

  @override
  void update(void Function(InvitationDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvitationDetailsResponse build() => _build();

  _$InvitationDetailsResponse _build() {
    _$InvitationDetailsResponse _$result;
    try {
      _$result = _$v ??
          _$InvitationDetailsResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'InvitationDetailsResponse', 'success'),
            invitation: invitation.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invitation';
        invitation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvitationDetailsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
