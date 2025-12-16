// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_purchase_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerPurchaseHistoryResponse
    extends CustomerPurchaseHistoryResponse {
  @override
  final bool success;
  @override
  final int count;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final bool hasNext;
  @override
  final bool hasPrevious;
  @override
  final double totalSpent;
  @override
  final BuiltList<PurchaseItem> purchases;

  factory _$CustomerPurchaseHistoryResponse(
          [void Function(CustomerPurchaseHistoryResponseBuilder)? updates]) =>
      (CustomerPurchaseHistoryResponseBuilder()..update(updates))._build();

  _$CustomerPurchaseHistoryResponse._(
      {required this.success,
      required this.count,
      required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.hasNext,
      required this.hasPrevious,
      required this.totalSpent,
      required this.purchases})
      : super._();
  @override
  CustomerPurchaseHistoryResponse rebuild(
          void Function(CustomerPurchaseHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerPurchaseHistoryResponseBuilder toBuilder() =>
      CustomerPurchaseHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerPurchaseHistoryResponse &&
        success == other.success &&
        count == other.count &&
        page == other.page &&
        pageSize == other.pageSize &&
        totalPages == other.totalPages &&
        hasNext == other.hasNext &&
        hasPrevious == other.hasPrevious &&
        totalSpent == other.totalSpent &&
        purchases == other.purchases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jc(_$hash, hasNext.hashCode);
    _$hash = $jc(_$hash, hasPrevious.hashCode);
    _$hash = $jc(_$hash, totalSpent.hashCode);
    _$hash = $jc(_$hash, purchases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerPurchaseHistoryResponse')
          ..add('success', success)
          ..add('count', count)
          ..add('page', page)
          ..add('pageSize', pageSize)
          ..add('totalPages', totalPages)
          ..add('hasNext', hasNext)
          ..add('hasPrevious', hasPrevious)
          ..add('totalSpent', totalSpent)
          ..add('purchases', purchases))
        .toString();
  }
}

class CustomerPurchaseHistoryResponseBuilder
    implements
        Builder<CustomerPurchaseHistoryResponse,
            CustomerPurchaseHistoryResponseBuilder> {
  _$CustomerPurchaseHistoryResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  bool? _hasNext;
  bool? get hasNext => _$this._hasNext;
  set hasNext(bool? hasNext) => _$this._hasNext = hasNext;

  bool? _hasPrevious;
  bool? get hasPrevious => _$this._hasPrevious;
  set hasPrevious(bool? hasPrevious) => _$this._hasPrevious = hasPrevious;

  double? _totalSpent;
  double? get totalSpent => _$this._totalSpent;
  set totalSpent(double? totalSpent) => _$this._totalSpent = totalSpent;

  ListBuilder<PurchaseItem>? _purchases;
  ListBuilder<PurchaseItem> get purchases =>
      _$this._purchases ??= ListBuilder<PurchaseItem>();
  set purchases(ListBuilder<PurchaseItem>? purchases) =>
      _$this._purchases = purchases;

  CustomerPurchaseHistoryResponseBuilder() {
    CustomerPurchaseHistoryResponse._defaults(this);
  }

  CustomerPurchaseHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _count = $v.count;
      _page = $v.page;
      _pageSize = $v.pageSize;
      _totalPages = $v.totalPages;
      _hasNext = $v.hasNext;
      _hasPrevious = $v.hasPrevious;
      _totalSpent = $v.totalSpent;
      _purchases = $v.purchases.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerPurchaseHistoryResponse other) {
    _$v = other as _$CustomerPurchaseHistoryResponse;
  }

  @override
  void update(void Function(CustomerPurchaseHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerPurchaseHistoryResponse build() => _build();

  _$CustomerPurchaseHistoryResponse _build() {
    _$CustomerPurchaseHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$CustomerPurchaseHistoryResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'CustomerPurchaseHistoryResponse', 'success'),
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'CustomerPurchaseHistoryResponse', 'count'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'CustomerPurchaseHistoryResponse', 'page'),
            pageSize: BuiltValueNullFieldError.checkNotNull(
                pageSize, r'CustomerPurchaseHistoryResponse', 'pageSize'),
            totalPages: BuiltValueNullFieldError.checkNotNull(
                totalPages, r'CustomerPurchaseHistoryResponse', 'totalPages'),
            hasNext: BuiltValueNullFieldError.checkNotNull(
                hasNext, r'CustomerPurchaseHistoryResponse', 'hasNext'),
            hasPrevious: BuiltValueNullFieldError.checkNotNull(
                hasPrevious, r'CustomerPurchaseHistoryResponse', 'hasPrevious'),
            totalSpent: BuiltValueNullFieldError.checkNotNull(
                totalSpent, r'CustomerPurchaseHistoryResponse', 'totalSpent'),
            purchases: purchases.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'purchases';
        purchases.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CustomerPurchaseHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
