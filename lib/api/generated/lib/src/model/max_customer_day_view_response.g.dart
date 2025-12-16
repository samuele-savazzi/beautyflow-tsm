// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_customer_day_view_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MaxCustomerDayViewResponse extends MaxCustomerDayViewResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final int maxCustomerDayView;

  factory _$MaxCustomerDayViewResponse(
          [void Function(MaxCustomerDayViewResponseBuilder)? updates]) =>
      (MaxCustomerDayViewResponseBuilder()..update(updates))._build();

  _$MaxCustomerDayViewResponse._(
      {required this.id, required this.name, required this.maxCustomerDayView})
      : super._();
  @override
  MaxCustomerDayViewResponse rebuild(
          void Function(MaxCustomerDayViewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxCustomerDayViewResponseBuilder toBuilder() =>
      MaxCustomerDayViewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxCustomerDayViewResponse &&
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
    return (newBuiltValueToStringHelper(r'MaxCustomerDayViewResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('maxCustomerDayView', maxCustomerDayView))
        .toString();
  }
}

class MaxCustomerDayViewResponseBuilder
    implements
        Builder<MaxCustomerDayViewResponse, MaxCustomerDayViewResponseBuilder> {
  _$MaxCustomerDayViewResponse? _$v;

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

  MaxCustomerDayViewResponseBuilder() {
    MaxCustomerDayViewResponse._defaults(this);
  }

  MaxCustomerDayViewResponseBuilder get _$this {
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
  void replace(MaxCustomerDayViewResponse other) {
    _$v = other as _$MaxCustomerDayViewResponse;
  }

  @override
  void update(void Function(MaxCustomerDayViewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxCustomerDayViewResponse build() => _build();

  _$MaxCustomerDayViewResponse _build() {
    final _$result = _$v ??
        _$MaxCustomerDayViewResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'MaxCustomerDayViewResponse', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'MaxCustomerDayViewResponse', 'name'),
          maxCustomerDayView: BuiltValueNullFieldError.checkNotNull(
              maxCustomerDayView,
              r'MaxCustomerDayViewResponse',
              'maxCustomerDayView'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
