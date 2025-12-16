// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationResponse extends ValidationResponse {
  @override
  final String? message;
  @override
  final BuiltList<Inconsistency>? inconsistencies;
  @override
  final String status;
  @override
  final BuiltMap<String, Map<String, dynamic>?> modificationType;

  factory _$ValidationResponse(
          [void Function(ValidationResponseBuilder)? updates]) =>
      (ValidationResponseBuilder()..update(updates))._build();

  _$ValidationResponse._(
      {this.message,
      this.inconsistencies,
      required this.status,
      required this.modificationType})
      : super._();
  @override
  ValidationResponse rebuild(
          void Function(ValidationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationResponseBuilder toBuilder() =>
      ValidationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationResponse &&
        message == other.message &&
        inconsistencies == other.inconsistencies &&
        status == other.status &&
        modificationType == other.modificationType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, inconsistencies.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, modificationType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidationResponse')
          ..add('message', message)
          ..add('inconsistencies', inconsistencies)
          ..add('status', status)
          ..add('modificationType', modificationType))
        .toString();
  }
}

class ValidationResponseBuilder
    implements Builder<ValidationResponse, ValidationResponseBuilder> {
  _$ValidationResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Inconsistency>? _inconsistencies;
  ListBuilder<Inconsistency> get inconsistencies =>
      _$this._inconsistencies ??= ListBuilder<Inconsistency>();
  set inconsistencies(ListBuilder<Inconsistency>? inconsistencies) =>
      _$this._inconsistencies = inconsistencies;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  MapBuilder<String, Map<String, dynamic>?>? _modificationType;
  MapBuilder<String, Map<String, dynamic>?> get modificationType =>
      _$this._modificationType ??= MapBuilder<String, Map<String, dynamic>?>();
  set modificationType(
          MapBuilder<String, Map<String, dynamic>?>? modificationType) =>
      _$this._modificationType = modificationType;

  ValidationResponseBuilder() {
    ValidationResponse._defaults(this);
  }

  ValidationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _inconsistencies = $v.inconsistencies?.toBuilder();
      _status = $v.status;
      _modificationType = $v.modificationType.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationResponse other) {
    _$v = other as _$ValidationResponse;
  }

  @override
  void update(void Function(ValidationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidationResponse build() => _build();

  _$ValidationResponse _build() {
    _$ValidationResponse _$result;
    try {
      _$result = _$v ??
          _$ValidationResponse._(
            message: message,
            inconsistencies: _inconsistencies?.build(),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ValidationResponse', 'status'),
            modificationType: modificationType.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inconsistencies';
        _inconsistencies?.build();

        _$failedField = 'modificationType';
        modificationType.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ValidationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
