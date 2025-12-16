// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_customer_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegularCustomerItem extends RegularCustomerItem {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phoneNumber;
  @override
  final String? email;
  @override
  final int activeServicesCount;
  @override
  final BuiltList<RegularCustomerServiceItem> services;

  factory _$RegularCustomerItem(
          [void Function(RegularCustomerItemBuilder)? updates]) =>
      (RegularCustomerItemBuilder()..update(updates))._build();

  _$RegularCustomerItem._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      this.email,
      required this.activeServicesCount,
      required this.services})
      : super._();
  @override
  RegularCustomerItem rebuild(
          void Function(RegularCustomerItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegularCustomerItemBuilder toBuilder() =>
      RegularCustomerItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegularCustomerItem &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        activeServicesCount == other.activeServicesCount &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, activeServicesCount.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegularCustomerItem')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('activeServicesCount', activeServicesCount)
          ..add('services', services))
        .toString();
  }
}

class RegularCustomerItemBuilder
    implements Builder<RegularCustomerItem, RegularCustomerItemBuilder> {
  _$RegularCustomerItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  int? _activeServicesCount;
  int? get activeServicesCount => _$this._activeServicesCount;
  set activeServicesCount(int? activeServicesCount) =>
      _$this._activeServicesCount = activeServicesCount;

  ListBuilder<RegularCustomerServiceItem>? _services;
  ListBuilder<RegularCustomerServiceItem> get services =>
      _$this._services ??= ListBuilder<RegularCustomerServiceItem>();
  set services(ListBuilder<RegularCustomerServiceItem>? services) =>
      _$this._services = services;

  RegularCustomerItemBuilder() {
    RegularCustomerItem._defaults(this);
  }

  RegularCustomerItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _activeServicesCount = $v.activeServicesCount;
      _services = $v.services.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegularCustomerItem other) {
    _$v = other as _$RegularCustomerItem;
  }

  @override
  void update(void Function(RegularCustomerItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegularCustomerItem build() => _build();

  _$RegularCustomerItem _build() {
    _$RegularCustomerItem _$result;
    try {
      _$result = _$v ??
          _$RegularCustomerItem._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RegularCustomerItem', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'RegularCustomerItem', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'RegularCustomerItem', 'lastName'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'RegularCustomerItem', 'phoneNumber'),
            email: email,
            activeServicesCount: BuiltValueNullFieldError.checkNotNull(
                activeServicesCount,
                r'RegularCustomerItem',
                'activeServicesCount'),
            services: services.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'services';
        services.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RegularCustomerItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
