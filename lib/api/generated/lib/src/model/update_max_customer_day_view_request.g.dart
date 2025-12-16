// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_max_customer_day_view_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMaxCustomerDayViewRequest
    extends UpdateMaxCustomerDayViewRequest {
  @override
  final int areaId;
  @override
  final int maxCustomerDayView;

  factory _$UpdateMaxCustomerDayViewRequest(
          [void Function(UpdateMaxCustomerDayViewRequestBuilder)? updates]) =>
      (UpdateMaxCustomerDayViewRequestBuilder()..update(updates))._build();

  _$UpdateMaxCustomerDayViewRequest._(
      {required this.areaId, required this.maxCustomerDayView})
      : super._();
  @override
  UpdateMaxCustomerDayViewRequest rebuild(
          void Function(UpdateMaxCustomerDayViewRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMaxCustomerDayViewRequestBuilder toBuilder() =>
      UpdateMaxCustomerDayViewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMaxCustomerDayViewRequest &&
        areaId == other.areaId &&
        maxCustomerDayView == other.maxCustomerDayView;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, maxCustomerDayView.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateMaxCustomerDayViewRequest')
          ..add('areaId', areaId)
          ..add('maxCustomerDayView', maxCustomerDayView))
        .toString();
  }
}

class UpdateMaxCustomerDayViewRequestBuilder
    implements
        Builder<UpdateMaxCustomerDayViewRequest,
            UpdateMaxCustomerDayViewRequestBuilder> {
  _$UpdateMaxCustomerDayViewRequest? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  int? _maxCustomerDayView;
  int? get maxCustomerDayView => _$this._maxCustomerDayView;
  set maxCustomerDayView(int? maxCustomerDayView) =>
      _$this._maxCustomerDayView = maxCustomerDayView;

  UpdateMaxCustomerDayViewRequestBuilder() {
    UpdateMaxCustomerDayViewRequest._defaults(this);
  }

  UpdateMaxCustomerDayViewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _maxCustomerDayView = $v.maxCustomerDayView;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMaxCustomerDayViewRequest other) {
    _$v = other as _$UpdateMaxCustomerDayViewRequest;
  }

  @override
  void update(void Function(UpdateMaxCustomerDayViewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMaxCustomerDayViewRequest build() => _build();

  _$UpdateMaxCustomerDayViewRequest _build() {
    final _$result = _$v ??
        _$UpdateMaxCustomerDayViewRequest._(
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'UpdateMaxCustomerDayViewRequest', 'areaId'),
          maxCustomerDayView: BuiltValueNullFieldError.checkNotNull(
              maxCustomerDayView,
              r'UpdateMaxCustomerDayViewRequest',
              'maxCustomerDayView'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
