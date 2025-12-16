// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerListItem extends CustomerListItem {
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final bool valid;
  @override
  final bool blocked;
  @override
  final String? blockedMotivation;
  @override
  final bool phoneVerified;
  @override
  final String createdAt;
  @override
  final int totalBookings;
  @override
  final String? lastBookingDate;
  @override
  final bool isPremium;
  @override
  final double totalSpent;

  factory _$CustomerListItem(
          [void Function(CustomerListItemBuilder)? updates]) =>
      (CustomerListItemBuilder()..update(updates))._build();

  _$CustomerListItem._(
      {required this.id,
      required this.fullName,
      required this.phoneNumber,
      required this.birthDate,
      required this.gender,
      required this.valid,
      required this.blocked,
      this.blockedMotivation,
      required this.phoneVerified,
      required this.createdAt,
      required this.totalBookings,
      this.lastBookingDate,
      required this.isPremium,
      required this.totalSpent})
      : super._();
  @override
  CustomerListItem rebuild(void Function(CustomerListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerListItemBuilder toBuilder() =>
      CustomerListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerListItem &&
        id == other.id &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        birthDate == other.birthDate &&
        gender == other.gender &&
        valid == other.valid &&
        blocked == other.blocked &&
        blockedMotivation == other.blockedMotivation &&
        phoneVerified == other.phoneVerified &&
        createdAt == other.createdAt &&
        totalBookings == other.totalBookings &&
        lastBookingDate == other.lastBookingDate &&
        isPremium == other.isPremium &&
        totalSpent == other.totalSpent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, birthDate.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, blocked.hashCode);
    _$hash = $jc(_$hash, blockedMotivation.hashCode);
    _$hash = $jc(_$hash, phoneVerified.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, totalBookings.hashCode);
    _$hash = $jc(_$hash, lastBookingDate.hashCode);
    _$hash = $jc(_$hash, isPremium.hashCode);
    _$hash = $jc(_$hash, totalSpent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerListItem')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('birthDate', birthDate)
          ..add('gender', gender)
          ..add('valid', valid)
          ..add('blocked', blocked)
          ..add('blockedMotivation', blockedMotivation)
          ..add('phoneVerified', phoneVerified)
          ..add('createdAt', createdAt)
          ..add('totalBookings', totalBookings)
          ..add('lastBookingDate', lastBookingDate)
          ..add('isPremium', isPremium)
          ..add('totalSpent', totalSpent))
        .toString();
  }
}

class CustomerListItemBuilder
    implements Builder<CustomerListItem, CustomerListItemBuilder> {
  _$CustomerListItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _birthDate;
  String? get birthDate => _$this._birthDate;
  set birthDate(String? birthDate) => _$this._birthDate = birthDate;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  bool? _blocked;
  bool? get blocked => _$this._blocked;
  set blocked(bool? blocked) => _$this._blocked = blocked;

  String? _blockedMotivation;
  String? get blockedMotivation => _$this._blockedMotivation;
  set blockedMotivation(String? blockedMotivation) =>
      _$this._blockedMotivation = blockedMotivation;

  bool? _phoneVerified;
  bool? get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool? phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  int? _totalBookings;
  int? get totalBookings => _$this._totalBookings;
  set totalBookings(int? totalBookings) =>
      _$this._totalBookings = totalBookings;

  String? _lastBookingDate;
  String? get lastBookingDate => _$this._lastBookingDate;
  set lastBookingDate(String? lastBookingDate) =>
      _$this._lastBookingDate = lastBookingDate;

  bool? _isPremium;
  bool? get isPremium => _$this._isPremium;
  set isPremium(bool? isPremium) => _$this._isPremium = isPremium;

  double? _totalSpent;
  double? get totalSpent => _$this._totalSpent;
  set totalSpent(double? totalSpent) => _$this._totalSpent = totalSpent;

  CustomerListItemBuilder() {
    CustomerListItem._defaults(this);
  }

  CustomerListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _birthDate = $v.birthDate;
      _gender = $v.gender;
      _valid = $v.valid;
      _blocked = $v.blocked;
      _blockedMotivation = $v.blockedMotivation;
      _phoneVerified = $v.phoneVerified;
      _createdAt = $v.createdAt;
      _totalBookings = $v.totalBookings;
      _lastBookingDate = $v.lastBookingDate;
      _isPremium = $v.isPremium;
      _totalSpent = $v.totalSpent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerListItem other) {
    _$v = other as _$CustomerListItem;
  }

  @override
  void update(void Function(CustomerListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerListItem build() => _build();

  _$CustomerListItem _build() {
    final _$result = _$v ??
        _$CustomerListItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CustomerListItem', 'id'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerListItem', 'fullName'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerListItem', 'phoneNumber'),
          birthDate: BuiltValueNullFieldError.checkNotNull(
              birthDate, r'CustomerListItem', 'birthDate'),
          gender: BuiltValueNullFieldError.checkNotNull(
              gender, r'CustomerListItem', 'gender'),
          valid: BuiltValueNullFieldError.checkNotNull(
              valid, r'CustomerListItem', 'valid'),
          blocked: BuiltValueNullFieldError.checkNotNull(
              blocked, r'CustomerListItem', 'blocked'),
          blockedMotivation: blockedMotivation,
          phoneVerified: BuiltValueNullFieldError.checkNotNull(
              phoneVerified, r'CustomerListItem', 'phoneVerified'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'CustomerListItem', 'createdAt'),
          totalBookings: BuiltValueNullFieldError.checkNotNull(
              totalBookings, r'CustomerListItem', 'totalBookings'),
          lastBookingDate: lastBookingDate,
          isPremium: BuiltValueNullFieldError.checkNotNull(
              isPremium, r'CustomerListItem', 'isPremium'),
          totalSpent: BuiltValueNullFieldError.checkNotNull(
              totalSpent, r'CustomerListItem', 'totalSpent'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
