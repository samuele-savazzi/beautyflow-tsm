// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerInfo extends CustomerInfo {
  @override
  final int id;
  @override
  final String fullName;
  @override
  final String phoneNumber;

  factory _$CustomerInfo([void Function(CustomerInfoBuilder)? updates]) =>
      (CustomerInfoBuilder()..update(updates))._build();

  _$CustomerInfo._(
      {required this.id, required this.fullName, required this.phoneNumber})
      : super._();
  @override
  CustomerInfo rebuild(void Function(CustomerInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerInfoBuilder toBuilder() => CustomerInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerInfo &&
        id == other.id &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerInfo')
          ..add('id', id)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class CustomerInfoBuilder
    implements Builder<CustomerInfo, CustomerInfoBuilder> {
  _$CustomerInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  CustomerInfoBuilder() {
    CustomerInfo._defaults(this);
  }

  CustomerInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerInfo other) {
    _$v = other as _$CustomerInfo;
  }

  @override
  void update(void Function(CustomerInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerInfo build() => _build();

  _$CustomerInfo _build() {
    final _$result = _$v ??
        _$CustomerInfo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'CustomerInfo', 'id'),
          fullName: BuiltValueNullFieldError.checkNotNull(
              fullName, r'CustomerInfo', 'fullName'),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
              phoneNumber, r'CustomerInfo', 'phoneNumber'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
