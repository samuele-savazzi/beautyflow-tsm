// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_validation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityValidationResponse extends AvailabilityValidationResponse {
  @override
  final bool success;
  @override
  final bool valid;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? operator_;
  @override
  final BuiltList<Map<String, dynamic>?>? errors;

  factory _$AvailabilityValidationResponse(
          [void Function(AvailabilityValidationResponseBuilder)? updates]) =>
      (AvailabilityValidationResponseBuilder()..update(updates))._build();

  _$AvailabilityValidationResponse._(
      {required this.success, required this.valid, this.operator_, this.errors})
      : super._();
  @override
  AvailabilityValidationResponse rebuild(
          void Function(AvailabilityValidationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityValidationResponseBuilder toBuilder() =>
      AvailabilityValidationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityValidationResponse &&
        success == other.success &&
        valid == other.valid &&
        operator_ == other.operator_ &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailabilityValidationResponse')
          ..add('success', success)
          ..add('valid', valid)
          ..add('operator_', operator_)
          ..add('errors', errors))
        .toString();
  }
}

class AvailabilityValidationResponseBuilder
    implements
        Builder<AvailabilityValidationResponse,
            AvailabilityValidationResponseBuilder> {
  _$AvailabilityValidationResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  MapBuilder<String, Map<String, dynamic>?>? _operator_;
  MapBuilder<String, Map<String, dynamic>?> get operator_ =>
      _$this._operator_ ??= MapBuilder<String, Map<String, dynamic>?>();
  set operator_(MapBuilder<String, Map<String, dynamic>?>? operator_) =>
      _$this._operator_ = operator_;

  ListBuilder<Map<String, dynamic>?>? _errors;
  ListBuilder<Map<String, dynamic>?> get errors =>
      _$this._errors ??= ListBuilder<Map<String, dynamic>?>();
  set errors(ListBuilder<Map<String, dynamic>?>? errors) =>
      _$this._errors = errors;

  AvailabilityValidationResponseBuilder() {
    AvailabilityValidationResponse._defaults(this);
  }

  AvailabilityValidationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _valid = $v.valid;
      _operator_ = $v.operator_?.toBuilder();
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityValidationResponse other) {
    _$v = other as _$AvailabilityValidationResponse;
  }

  @override
  void update(void Function(AvailabilityValidationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityValidationResponse build() => _build();

  _$AvailabilityValidationResponse _build() {
    _$AvailabilityValidationResponse _$result;
    try {
      _$result = _$v ??
          _$AvailabilityValidationResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'AvailabilityValidationResponse', 'success'),
            valid: BuiltValueNullFieldError.checkNotNull(
                valid, r'AvailabilityValidationResponse', 'valid'),
            operator_: _operator_?.build(),
            errors: _errors?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operator_';
        _operator_?.build();
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AvailabilityValidationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
