// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchRequest extends BatchRequest {
  @override
  final int areaId;
  @override
  final BuiltList<AvailabilityRequest> requests;

  factory _$BatchRequest([void Function(BatchRequestBuilder)? updates]) =>
      (BatchRequestBuilder()..update(updates))._build();

  _$BatchRequest._({required this.areaId, required this.requests}) : super._();
  @override
  BatchRequest rebuild(void Function(BatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchRequestBuilder toBuilder() => BatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchRequest &&
        areaId == other.areaId &&
        requests == other.requests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, requests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchRequest')
          ..add('areaId', areaId)
          ..add('requests', requests))
        .toString();
  }
}

class BatchRequestBuilder
    implements Builder<BatchRequest, BatchRequestBuilder> {
  _$BatchRequest? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  ListBuilder<AvailabilityRequest>? _requests;
  ListBuilder<AvailabilityRequest> get requests =>
      _$this._requests ??= ListBuilder<AvailabilityRequest>();
  set requests(ListBuilder<AvailabilityRequest>? requests) =>
      _$this._requests = requests;

  BatchRequestBuilder() {
    BatchRequest._defaults(this);
  }

  BatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _requests = $v.requests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchRequest other) {
    _$v = other as _$BatchRequest;
  }

  @override
  void update(void Function(BatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchRequest build() => _build();

  _$BatchRequest _build() {
    _$BatchRequest _$result;
    try {
      _$result = _$v ??
          _$BatchRequest._(
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'BatchRequest', 'areaId'),
            requests: requests.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requests';
        requests.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
