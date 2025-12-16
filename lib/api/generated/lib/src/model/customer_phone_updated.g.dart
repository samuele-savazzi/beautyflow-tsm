// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_phone_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerPhoneUpdated extends CustomerPhoneUpdated {
  @override
  final String phoneNumber;
  @override
  final bool phoneVerified;
  @override
  final DateTime phoneVerifiedAt;

  factory _$CustomerPhoneUpdated(
          [void Function(CustomerPhoneUpdatedBuilder)? updates]) =>
      (CustomerPhoneUpdatedBuilder()..update(updates))._build();

  _$CustomerPhoneUpdated._(
      {required this.phoneNumber,
      required this.phoneVerified,
      required this.phoneVerifiedAt})
      : super._();
  @override
  CustomerPhoneUpdated rebuild(
          void Function(CustomerPhoneUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerPhoneUpdatedBuilder toBuilder() =>
      CustomerPhoneUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerPhoneUpdated &&
        phoneNumber == other.phoneNumber &&
        phoneVerified == other.phoneVerified &&
        phoneVerifiedAt == other.phoneVerifiedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, phoneVerified.hashCode);
    _$hash = $jc(_$hash, phoneVerifiedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerPhoneUpdated')
          ..add('phoneNumber', phoneNumber)
          ..add('phoneVerified', phoneVerified)
          ..add('phoneVerifiedAt', phoneVerifiedAt))
        .toString();
  }
}

class CustomerPhoneUpdatedBuilder
    implements Builder<CustomerPhoneUpdated, CustomerPhoneUpdatedBuilder> {
  _$CustomerPhoneUpdated? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _phoneVerified;
  bool? get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool? phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  DateTime? _phoneVerifiedAt;
  DateTime? get phoneVerifiedAt => _$this._phoneVerifiedAt;
  set phoneVerifiedAt(DateTime? phoneVerifiedAt) =>
      _$this._phoneVerifiedAt = phoneVerifiedAt;

  CustomerPhoneUpdatedBuilder() {
    CustomerPhoneUpdated._defaults(this);
  }

  CustomerPhoneUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _phoneVerified = $v.phoneVerified;
      _phoneVerifiedAt = $v.phoneVerifiedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerPhoneUpdated other) {
    _$v = other as _$CustomerPhoneUpdated;
  }

  @override
  void update(void Function(CustomerPhoneUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerPhoneUpdated build() => _build();

  _$CustomerPhoneUpdated _build() {
    final _$result = _$v ??
        _$CustomerPhoneUpdated._(
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerPhoneUpdated', 'phoneNumber'),
          phoneVerified: BuiltValueNullFieldError.checkNotNull(
              phoneVerified, r'CustomerPhoneUpdated', 'phoneVerified'),
          phoneVerifiedAt: BuiltValueNullFieldError.checkNotNull(
              phoneVerifiedAt, r'CustomerPhoneUpdated', 'phoneVerifiedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
