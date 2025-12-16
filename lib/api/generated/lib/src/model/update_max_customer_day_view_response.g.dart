// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_max_customer_day_view_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMaxCustomerDayViewResponse
    extends UpdateMaxCustomerDayViewResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final int maxCustomerDayView;

  factory _$UpdateMaxCustomerDayViewResponse(
          [void Function(UpdateMaxCustomerDayViewResponseBuilder)? updates]) =>
      (UpdateMaxCustomerDayViewResponseBuilder()..update(updates))._build();

  _$UpdateMaxCustomerDayViewResponse._(
      {required this.id, required this.name, required this.maxCustomerDayView})
      : super._();
  @override
  UpdateMaxCustomerDayViewResponse rebuild(
          void Function(UpdateMaxCustomerDayViewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMaxCustomerDayViewResponseBuilder toBuilder() =>
      UpdateMaxCustomerDayViewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMaxCustomerDayViewResponse &&
        id == other.id &&
        name == other.name &&
        maxCustomerDayView == other.maxCustomerDayView;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, maxCustomerDayView.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateMaxCustomerDayViewResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('maxCustomerDayView', maxCustomerDayView))
        .toString();
  }
}

class UpdateMaxCustomerDayViewResponseBuilder
    implements
        Builder<UpdateMaxCustomerDayViewResponse,
            UpdateMaxCustomerDayViewResponseBuilder> {
  _$UpdateMaxCustomerDayViewResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _maxCustomerDayView;
  int? get maxCustomerDayView => _$this._maxCustomerDayView;
  set maxCustomerDayView(int? maxCustomerDayView) =>
      _$this._maxCustomerDayView = maxCustomerDayView;

  UpdateMaxCustomerDayViewResponseBuilder() {
    UpdateMaxCustomerDayViewResponse._defaults(this);
  }

  UpdateMaxCustomerDayViewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _maxCustomerDayView = $v.maxCustomerDayView;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMaxCustomerDayViewResponse other) {
    _$v = other as _$UpdateMaxCustomerDayViewResponse;
  }

  @override
  void update(void Function(UpdateMaxCustomerDayViewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMaxCustomerDayViewResponse build() => _build();

  _$UpdateMaxCustomerDayViewResponse _build() {
    final _$result = _$v ??
        _$UpdateMaxCustomerDayViewResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'UpdateMaxCustomerDayViewResponse', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UpdateMaxCustomerDayViewResponse', 'name'),
          maxCustomerDayView: BuiltValueNullFieldError.checkNotNull(
              maxCustomerDayView,
              r'UpdateMaxCustomerDayViewResponse',
              'maxCustomerDayView'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
