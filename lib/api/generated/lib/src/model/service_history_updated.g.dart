// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_updated.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryUpdated extends ServiceHistoryUpdated {
  @override
  final int id;
  @override
  final String widgetName;
  @override
  final BuiltMap<String, Map<String, dynamic>?> widgetValue;
  @override
  final bool paid;
  @override
  final DateTime updatedAt;

  factory _$ServiceHistoryUpdated(
          [void Function(ServiceHistoryUpdatedBuilder)? updates]) =>
      (ServiceHistoryUpdatedBuilder()..update(updates))._build();

  _$ServiceHistoryUpdated._(
      {required this.id,
      required this.widgetName,
      required this.widgetValue,
      required this.paid,
      required this.updatedAt})
      : super._();
  @override
  ServiceHistoryUpdated rebuild(
          void Function(ServiceHistoryUpdatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryUpdatedBuilder toBuilder() =>
      ServiceHistoryUpdatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryUpdated &&
        id == other.id &&
        widgetName == other.widgetName &&
        widgetValue == other.widgetValue &&
        paid == other.paid &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, widgetValue.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryUpdated')
          ..add('id', id)
          ..add('widgetName', widgetName)
          ..add('widgetValue', widgetValue)
          ..add('paid', paid)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ServiceHistoryUpdatedBuilder
    implements Builder<ServiceHistoryUpdated, ServiceHistoryUpdatedBuilder> {
  _$ServiceHistoryUpdated? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _widgetName;
  String? get widgetName => _$this._widgetName;
  set widgetName(String? widgetName) => _$this._widgetName = widgetName;

  MapBuilder<String, Map<String, dynamic>?>? _widgetValue;
  MapBuilder<String, Map<String, dynamic>?> get widgetValue =>
      _$this._widgetValue ??= MapBuilder<String, Map<String, dynamic>?>();
  set widgetValue(MapBuilder<String, Map<String, dynamic>?>? widgetValue) =>
      _$this._widgetValue = widgetValue;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ServiceHistoryUpdatedBuilder() {
    ServiceHistoryUpdated._defaults(this);
  }

  ServiceHistoryUpdatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _widgetName = $v.widgetName;
      _widgetValue = $v.widgetValue.toBuilder();
      _paid = $v.paid;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryUpdated other) {
    _$v = other as _$ServiceHistoryUpdated;
  }

  @override
  void update(void Function(ServiceHistoryUpdatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryUpdated build() => _build();

  _$ServiceHistoryUpdated _build() {
    _$ServiceHistoryUpdated _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryUpdated._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ServiceHistoryUpdated', 'id'),
            widgetName: BuiltValueNullFieldError.checkNotNull(
                widgetName, r'ServiceHistoryUpdated', 'widgetName'),
            widgetValue: widgetValue.build(),
            paid: BuiltValueNullFieldError.checkNotNull(
                paid, r'ServiceHistoryUpdated', 'paid'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'ServiceHistoryUpdated', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'widgetValue';
        widgetValue.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryUpdated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
