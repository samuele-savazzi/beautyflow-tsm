// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationDetailResponse
    extends CustomerInvitationDetailResponse {
  @override
  final bool success;
  @override
  final CustomerInvitationDetail invitation;

  factory _$CustomerInvitationDetailResponse(
          [void Function(CustomerInvitationDetailResponseBuilder)? updates]) =>
      (CustomerInvitationDetailResponseBuilder()..update(updates))._build();

  _$CustomerInvitationDetailResponse._(
      {required this.success, required this.invitation})
      : super._();
  @override
  CustomerInvitationDetailResponse rebuild(
          void Function(CustomerInvitationDetailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationDetailResponseBuilder toBuilder() =>
      CustomerInvitationDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationDetailResponse &&
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
    return (newBuiltValueToStringHelper(r'CustomerInvitationDetailResponse')
          ..add('success', success)
          ..add('invitation', invitation))
        .toString();
  }
}

class CustomerInvitationDetailResponseBuilder
    implements
        Builder<CustomerInvitationDetailResponse,
            CustomerInvitationDetailResponseBuilder> {
  _$CustomerInvitationDetailResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CustomerInvitationDetailBuilder? _invitation;
  CustomerInvitationDetailBuilder get invitation =>
      _$this._invitation ??= CustomerInvitationDetailBuilder();
  set invitation(CustomerInvitationDetailBuilder? invitation) =>
      _$this._invitation = invitation;

  CustomerInvitationDetailResponseBuilder() {
    CustomerInvitationDetailResponse._defaults(this);
  }

  CustomerInvitationDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _invitation = $v.invitation.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationDetailResponse other) {
    _$v = other as _$CustomerInvitationDetailResponse;
  }

  @override
  void update(void Function(CustomerInvitationDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationDetailResponse build() => _build();

  _$CustomerInvitationDetailResponse _build() {
    _$CustomerInvitationDetailResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerInvitationDetailResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerInvitationDetailResponse', 'success'),
            invitation: invitation.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invitation';
        invitation.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerInvitationDetailResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
