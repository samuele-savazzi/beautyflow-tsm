// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_customer_service_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegularCustomerServiceItem extends RegularCustomerServiceItem {
  @override
  final int id;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final DateTime markedRegularAt;
  @override
  final String? markedBy;

  factory _$RegularCustomerServiceItem(
          [void Function(RegularCustomerServiceItemBuilder)? updates]) =>
      (RegularCustomerServiceItemBuilder()..update(updates))._build();

  _$RegularCustomerServiceItem._(
      {required this.id,
      required this.serviceId,
      required this.serviceName,
      required this.markedRegularAt,
      this.markedBy})
      : super._();
  @override
  RegularCustomerServiceItem rebuild(
          void Function(RegularCustomerServiceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegularCustomerServiceItemBuilder toBuilder() =>
      RegularCustomerServiceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegularCustomerServiceItem &&
        id == other.id &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        markedRegularAt == other.markedRegularAt &&
        markedBy == other.markedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, markedRegularAt.hashCode);
    _$hash = $jc(_$hash, markedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegularCustomerServiceItem')
          ..add('id', id)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('markedRegularAt', markedRegularAt)
          ..add('markedBy', markedBy))
        .toString();
  }
}

class RegularCustomerServiceItemBuilder
    implements
        Builder<RegularCustomerServiceItem, RegularCustomerServiceItemBuilder> {
  _$RegularCustomerServiceItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  DateTime? _markedRegularAt;
  DateTime? get markedRegularAt => _$this._markedRegularAt;
  set markedRegularAt(DateTime? markedRegularAt) =>
      _$this._markedRegularAt = markedRegularAt;

  String? _markedBy;
  String? get markedBy => _$this._markedBy;
  set markedBy(String? markedBy) => _$this._markedBy = markedBy;

  RegularCustomerServiceItemBuilder() {
    RegularCustomerServiceItem._defaults(this);
  }

  RegularCustomerServiceItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _serviceId = $v.serviceId;
      _serviceName = $v.serviceName;
      _markedRegularAt = $v.markedRegularAt;
      _markedBy = $v.markedBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegularCustomerServiceItem other) {
    _$v = other as _$RegularCustomerServiceItem;
  }

  @override
  void update(void Function(RegularCustomerServiceItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegularCustomerServiceItem build() => _build();

  _$RegularCustomerServiceItem _build() {
    final _$result = _$v ??
        _$RegularCustomerServiceItem._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'RegularCustomerServiceItem', 'id'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'RegularCustomerServiceItem', 'serviceId'),
          serviceName: BuiltValueNullFieldError.checkNotNull(
              serviceName, r'RegularCustomerServiceItem', 'serviceName'),
          markedRegularAt: BuiltValueNullFieldError.checkNotNull(
              markedRegularAt,
              r'RegularCustomerServiceItem',
              'markedRegularAt'),
          markedBy: markedBy,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
