// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_frequent_service_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetFrequentServiceRequest extends SetFrequentServiceRequest {
  @override
  final int serviceId;
  @override
  final BuiltMap<String, int>? categories;

  factory _$SetFrequentServiceRequest(
          [void Function(SetFrequentServiceRequestBuilder)? updates]) =>
      (SetFrequentServiceRequestBuilder()..update(updates))._build();

  _$SetFrequentServiceRequest._({required this.serviceId, this.categories})
      : super._();
  @override
  SetFrequentServiceRequest rebuild(
          void Function(SetFrequentServiceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetFrequentServiceRequestBuilder toBuilder() =>
      SetFrequentServiceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetFrequentServiceRequest &&
        serviceId == other.serviceId &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetFrequentServiceRequest')
          ..add('serviceId', serviceId)
          ..add('categories', categories))
        .toString();
  }
}

class SetFrequentServiceRequestBuilder
    implements
        Builder<SetFrequentServiceRequest, SetFrequentServiceRequestBuilder> {
  _$SetFrequentServiceRequest? _$v;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  MapBuilder<String, int>? _categories;
  MapBuilder<String, int> get categories =>
      _$this._categories ??= MapBuilder<String, int>();
  set categories(MapBuilder<String, int>? categories) =>
      _$this._categories = categories;

  SetFrequentServiceRequestBuilder() {
    SetFrequentServiceRequest._defaults(this);
  }

  SetFrequentServiceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceId = $v.serviceId;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetFrequentServiceRequest other) {
    _$v = other as _$SetFrequentServiceRequest;
  }

  @override
  void update(void Function(SetFrequentServiceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetFrequentServiceRequest build() => _build();

  _$SetFrequentServiceRequest _build() {
    _$SetFrequentServiceRequest _$result;
    try {
      _$result = _$v ??
          _$SetFrequentServiceRequest._(
            serviceId: BuiltValueNullFieldError.checkNotNull(
                serviceId, r'SetFrequentServiceRequest', 'serviceId'),
            categories: _categories?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SetFrequentServiceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
