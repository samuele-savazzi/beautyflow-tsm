// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_invitation_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInvitationItem extends CustomerInvitationItem {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final String status;
  @override
  final String inviteLink;
  @override
  final DateTime createdAt;
  @override
  final DateTime expiresAt;
  @override
  final DateTime? acceptedAt;
  @override
  final bool isValid;
  @override
  final bool isExpired;
  @override
  final String? customerName;

  factory _$CustomerInvitationItem(
          [void Function(CustomerInvitationItemBuilder)? updates]) =>
      (CustomerInvitationItemBuilder()..update(updates))._build();

  _$CustomerInvitationItem._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.phoneNumber,
      required this.status,
      required this.inviteLink,
      required this.createdAt,
      required this.expiresAt,
      this.acceptedAt,
      required this.isValid,
      required this.isExpired,
      this.customerName})
      : super._();
  @override
  CustomerInvitationItem rebuild(
          void Function(CustomerInvitationItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInvitationItemBuilder toBuilder() =>
      CustomerInvitationItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInvitationItem &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        status == other.status &&
        inviteLink == other.inviteLink &&
        createdAt == other.createdAt &&
        expiresAt == other.expiresAt &&
        acceptedAt == other.acceptedAt &&
        isValid == other.isValid &&
        isExpired == other.isExpired &&
        customerName == other.customerName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, inviteLink.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, acceptedAt.hashCode);
    _$hash = $jc(_$hash, isValid.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInvitationItem')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('status', status)
          ..add('inviteLink', inviteLink)
          ..add('createdAt', createdAt)
          ..add('expiresAt', expiresAt)
          ..add('acceptedAt', acceptedAt)
          ..add('isValid', isValid)
          ..add('isExpired', isExpired)
          ..add('customerName', customerName))
        .toString();
  }
}

class CustomerInvitationItemBuilder
    implements Builder<CustomerInvitationItem, CustomerInvitationItemBuilder> {
  _$CustomerInvitationItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _inviteLink;
  String? get inviteLink => _$this._inviteLink;
  set inviteLink(String? inviteLink) => _$this._inviteLink = inviteLink;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _acceptedAt;
  DateTime? get acceptedAt => _$this._acceptedAt;
  set acceptedAt(DateTime? acceptedAt) => _$this._acceptedAt = acceptedAt;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  CustomerInvitationItemBuilder() {
    CustomerInvitationItem._defaults(this);
  }

  CustomerInvitationItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _status = $v.status;
      _inviteLink = $v.inviteLink;
      _createdAt = $v.createdAt;
      _expiresAt = $v.expiresAt;
      _acceptedAt = $v.acceptedAt;
      _isValid = $v.isValid;
      _isExpired = $v.isExpired;
      _customerName = $v.customerName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInvitationItem other) {
    _$v = other as _$CustomerInvitationItem;
  }

  @override
  void update(void Function(CustomerInvitationItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInvitationItem build() => _build();

  _$CustomerInvitationItem _build() {
    final _$result = _$v ??
        _$CustomerInvitationItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerInvitationItem', 'id'),
          firstName: BuiltValueNullFieldError.checkNotNull(
              firstName, r'CustomerInvitationItem', 'firstName'),
          lastName: BuiltValueNullFieldError.checkNotNull(
              lastName, r'CustomerInvitationItem', 'lastName'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'CustomerInvitationItem', 'email'),
          phoneNumber: phoneNumber,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'CustomerInvitationItem', 'status'),
          inviteLink: BuiltValueNullFieldError.checkNotNull(
              inviteLink, r'CustomerInvitationItem', 'inviteLink'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CustomerInvitationItem', 'createdAt'),
          expiresAt: BuiltValueNullFieldError.checkNotNull(
              expiresAt, r'CustomerInvitationItem', 'expiresAt'),
          acceptedAt: acceptedAt,
          isValid: BuiltValueNullFieldError.checkNotNull(
              isValid, r'CustomerInvitationItem', 'isValid'),
          isExpired: BuiltValueNullFieldError.checkNotNull(
              isExpired, r'CustomerInvitationItem', 'isExpired'),
          customerName: customerName,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
