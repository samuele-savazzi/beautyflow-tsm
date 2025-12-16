// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'low_stock_alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LowStockAlert extends LowStockAlert {
  @override
  final int totalAlerts;
  @override
  final BuiltList<ProductList> products;

  factory _$LowStockAlert([void Function(LowStockAlertBuilder)? updates]) =>
      (LowStockAlertBuilder()..update(updates))._build();

  _$LowStockAlert._({required this.totalAlerts, required this.products})
      : super._();
  @override
  LowStockAlert rebuild(void Function(LowStockAlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LowStockAlertBuilder toBuilder() => LowStockAlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LowStockAlert &&
        totalAlerts == other.totalAlerts &&
        products == other.products;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalAlerts.hashCode);
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LowStockAlert')
          ..add('totalAlerts', totalAlerts)
          ..add('products', products))
        .toString();
  }
}

class LowStockAlertBuilder
    implements Builder<LowStockAlert, LowStockAlertBuilder> {
  _$LowStockAlert? _$v;

  int? _totalAlerts;
  int? get totalAlerts => _$this._totalAlerts;
  set totalAlerts(int? totalAlerts) => _$this._totalAlerts = totalAlerts;

  ListBuilder<ProductList>? _products;
  ListBuilder<ProductList> get products =>
      _$this._products ??= ListBuilder<ProductList>();
  set products(ListBuilder<ProductList>? products) =>
      _$this._products = products;

  LowStockAlertBuilder() {
    LowStockAlert._defaults(this);
  }

  LowStockAlertBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalAlerts = $v.totalAlerts;
      _products = $v.products.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LowStockAlert other) {
    _$v = other as _$LowStockAlert;
  }

  @override
  void update(void Function(LowStockAlertBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LowStockAlert build() => _build();

  _$LowStockAlert _build() {
    _$LowStockAlert _$result;
    try {
      _$result = _$v ??
          _$LowStockAlert._(
            totalAlerts: BuiltValueNullFieldError.checkNotNull(
                totalAlerts, r'LowStockAlert', 'totalAlerts'),
            products: products.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LowStockAlert', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
