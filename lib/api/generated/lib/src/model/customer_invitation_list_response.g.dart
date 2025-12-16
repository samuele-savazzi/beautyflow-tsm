// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationListResponse extends CustomerInvitationListResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final BuiltList<CustomerInvitationItem> invitations;

  factory _$CustomerInvitationListResponse(
          [void Function(CustomerInvitationListResponseBuilder)? updates]) =>
      (CustomerInvitationListResponseBuilder()..update(updates))._build();

  _$CustomerInvitationListResponse._(
      {required this.success, required this.count, required this.invitations})
      : super._();
  @override
  CustomerInvitationListResponse rebuild(
          void Function(CustomerInvitationListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationListResponseBuilder toBuilder() =>
      CustomerInvitationListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationListResponse &&
        success == other.success &&
        count == other.count &&
        invitations == other.invitations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, invitations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInvitationListResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('invitations', invitations))
        .toString();
  }
}

class CustomerInvitationListResponseBuilder
    implements
        Builder<CustomerInvitationListResponse,
            CustomerInvitationListResponseBuilder> {
  _$CustomerInvitationListResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<CustomerInvitationItem>? _invitations;
  ListBuilder<CustomerInvitationItem> get invitations =>
      _$this._invitations ??= ListBuilder<CustomerInvitationItem>();
  set invitations(ListBuilder<CustomerInvitationItem>? invitations) =>
      _$this._invitations = invitations;

  CustomerInvitationListResponseBuilder() {
    CustomerInvitationListResponse._defaults(this);
  }

  CustomerInvitationListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _invitations = $v.invitations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationListResponse other) {
    _$v = other as _$CustomerInvitationListResponse;
  }

  @override
  void update(void Function(CustomerInvitationListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationListResponse build() => _build();

  _$CustomerInvitationListResponse _build() {
    _$CustomerInvitationListResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerInvitationListResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerInvitationListResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CustomerInvitationListResponse', 'count'),
            invitations: invitations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'invitations';
        invitations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerInvitationListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
