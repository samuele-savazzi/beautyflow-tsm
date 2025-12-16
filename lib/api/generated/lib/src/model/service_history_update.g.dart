// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_history_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceHistoryUpdate extends ServiceHistoryUpdate {
  @override
  final String? widgetName;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? widgetValue;
  @override
  final String? paymentMethod;
  @override
  final bool? paid;

  factory _$ServiceHistoryUpdate(
          [void Function(ServiceHistoryUpdateBuilder)? updates]) =>
      (ServiceHistoryUpdateBuilder()..update(updates))._build();

  _$ServiceHistoryUpdate._(
      {this.widgetName, this.widgetValue, this.paymentMethod, this.paid})
      : super._();
  @override
  ServiceHistoryUpdate rebuild(
          void Function(ServiceHistoryUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceHistoryUpdateBuilder toBuilder() =>
      ServiceHistoryUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceHistoryUpdate &&
        widgetName == other.widgetName &&
        widgetValue == other.widgetValue &&
        paymentMethod == other.paymentMethod &&
        paid == other.paid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, widgetName.hashCode);
    _$hash = $jc(_$hash, widgetValue.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, paid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceHistoryUpdate')
          ..add('widgetName', widgetName)
          ..add('widgetValue', widgetValue)
          ..add('paymentMethod', paymentMethod)
          ..add('paid', paid))
        .toString();
  }
}

class ServiceHistoryUpdateBuilder
    implements Builder<ServiceHistoryUpdate, ServiceHistoryUpdateBuilder> {
  _$ServiceHistoryUpdate? _$v;

  String? _widgetName;
  String? get widgetName => _$this._widgetName;
  set widgetName(String? widgetName) => _$this._widgetName = widgetName;

  MapBuilder<String, Map<String, dynamic>?>? _widgetValue;
  MapBuilder<String, Map<String, dynamic>?> get widgetValue =>
      _$this._widgetValue ??= MapBuilder<String, Map<String, dynamic>?>();
  set widgetValue(MapBuilder<String, Map<String, dynamic>?>? widgetValue) =>
      _$this._widgetValue = widgetValue;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  ServiceHistoryUpdateBuilder() {
    ServiceHistoryUpdate._defaults(this);
  }

  ServiceHistoryUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _widgetName = $v.widgetName;
      _widgetValue = $v.widgetValue?.toBuilder();
      _paymentMethod = $v.paymentMethod;
      _paid = $v.paid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceHistoryUpdate other) {
    _$v = other as _$ServiceHistoryUpdate;
  }

  @override
  void update(void Function(ServiceHistoryUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceHistoryUpdate build() => _build();

  _$ServiceHistoryUpdate _build() {
    _$ServiceHistoryUpdate _$result;
    try {
      _$result = _$v ??
          _$ServiceHistoryUpdate._(
            widgetName: widgetName,
            widgetValue: _widgetValue?.build(),
            paymentMethod: paymentMethod,
            paid: paid,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'widgetValue';
        _widgetValue?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceHistoryUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
