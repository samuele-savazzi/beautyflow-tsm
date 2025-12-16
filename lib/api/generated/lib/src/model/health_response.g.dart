// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthResponse extends HealthResponse {
  @override
  final String status;
  @override
  final BuiltMap<String, Map<String, dynamic>?> components;
  @override
  final BuiltMap<String, Map<String, dynamic>?> features;

  factory _$HealthResponse([void Function(HealthResponseBuilder)? updates]) =>
      (HealthResponseBuilder()..update(updates))._build();

  _$HealthResponse._(
      {required this.status, required this.components, required this.features})
      : super._();
  @override
  HealthResponse rebuild(void Function(HealthResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthResponseBuilder toBuilder() => HealthResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthResponse &&
        status == other.status &&
        components == other.components &&
        features == other.features;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, components.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthResponse')
          ..add('status', status)
          ..add('components', components)
          ..add('features', features))
        .toString();
  }
}

class HealthResponseBuilder
    implements Builder<HealthResponse, HealthResponseBuilder> {
  _$HealthResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, Map<String, dynamic>?>? _components;
  MapBuilder<String, Map<String, dynamic>?> get components =>
      _$this._components ??= MapBuilder<String, Map<String, dynamic>?>();
  set components(MapBuilder<String, Map<String, dynamic>?>? components) =>
      _$this._components = components;

  MapBuilder<String, Map<String, dynamic>?>? _features;
  MapBuilder<String, Map<String, dynamic>?> get features =>
      _$this._features ??= MapBuilder<String, Map<String, dynamic>?>();
  set features(MapBuilder<String, Map<String, dynamic>?>? features) =>
      _$this._features = features;

  HealthResponseBuilder() {
    HealthResponse._defaults(this);
  }

  HealthResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _components = $v.components.toBuilder();
      _features = $v.features.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthResponse other) {
    _$v = other as _$HealthResponse;
  }

  @override
  void update(void Function(HealthResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthResponse build() => _build();

  _$HealthResponse _build() {
    _$HealthResponse _$result;
    try {
      _$result = _$v ??
          _$HealthResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'HealthResponse', 'status'),
            components: components.build(),
            features: features.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'components';
        components.build();
        _$failedField = 'features';
        features.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HealthResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
