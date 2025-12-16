// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direct_sale_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DirectSaleResponse extends DirectSaleResponse {
  @override
  final bool success;
  @override
  final int movementsCreated;
  @override
  final double totalAmount;
  @override
  final String paymentMethod;
  @override
  final BuiltList<String> warnings;

  factory _$DirectSaleResponse(
          [void Function(DirectSaleResponseBuilder)? updates]) =>
      (DirectSaleResponseBuilder()..update(updates))._build();

  _$DirectSaleResponse._(
      {required this.success,
      required this.movementsCreated,
      required this.totalAmount,
      required this.paymentMethod,
      required this.warnings})
      : super._();
  @override
  DirectSaleResponse rebuild(
          void Function(DirectSaleResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectSaleResponseBuilder toBuilder() =>
      DirectSaleResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectSaleResponse &&
        success == other.success &&
        movementsCreated == other.movementsCreated &&
        totalAmount == other.totalAmount &&
        paymentMethod == other.paymentMethod &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, movementsCreated.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DirectSaleResponse')
          ..add('success', success)
          ..add('movementsCreated', movementsCreated)
          ..add('totalAmount', totalAmount)
          ..add('paymentMethod', paymentMethod)
          ..add('warnings', warnings))
        .toString();
  }
}

class DirectSaleResponseBuilder
    implements Builder<DirectSaleResponse, DirectSaleResponseBuilder> {
  _$DirectSaleResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _movementsCreated;
  int? get movementsCreated => _$this._movementsCreated;
  set movementsCreated(int? movementsCreated) =>
      _$this._movementsCreated = movementsCreated;

  double? _totalAmount;
  double? get totalAmount => _$this._totalAmount;
  set totalAmount(double? totalAmount) => _$this._totalAmount = totalAmount;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  DirectSaleResponseBuilder() {
    DirectSaleResponse._defaults(this);
  }

  DirectSaleResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _movementsCreated = $v.movementsCreated;
      _totalAmount = $v.totalAmount;
      _paymentMethod = $v.paymentMethod;
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectSaleResponse other) {
    _$v = other as _$DirectSaleResponse;
  }

  @override
  void update(void Function(DirectSaleResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectSaleResponse build() => _build();

  _$DirectSaleResponse _build() {
    _$DirectSaleResponse _$result;
    try {
      _$result = _$v ??
          _$DirectSaleResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'DirectSaleResponse', 'success'),
            movementsCreated: BuiltValueNullFieldError.checkNotNull(
                movementsCreated, r'DirectSaleResponse', 'movementsCreated'),
            totalAmount: BuiltValueNullFieldError.checkNotNull(
                totalAmount, r'DirectSaleResponse', 'totalAmount'),
            paymentMethod: BuiltValueNullFieldError.checkNotNull(
                paymentMethod, r'DirectSaleResponse', 'paymentMethod'),
            warnings: warnings.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DirectSaleResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
