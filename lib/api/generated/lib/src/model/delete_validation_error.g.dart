// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_validation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteValidationError extends DeleteValidationError {
  @override
  final String error;
  @override
  final BuiltList<String>? blockingFactors;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? affectedEntities;

  factory _$DeleteValidationError(
          [void Function(DeleteValidationErrorBuilder)? updates]) =>
      (DeleteValidationErrorBuilder()..update(updates))._build();

  _$DeleteValidationError._(
      {required this.error, this.blockingFactors, this.affectedEntities})
      : super._();
  @override
  DeleteValidationError rebuild(
          void Function(DeleteValidationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteValidationErrorBuilder toBuilder() =>
      DeleteValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteValidationError &&
        error == other.error &&
        blockingFactors == other.blockingFactors &&
        affectedEntities == other.affectedEntities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, blockingFactors.hashCode);
    _$hash = $jc(_$hash, affectedEntities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteValidationError')
          ..add('error', error)
          ..add('blockingFactors', blockingFactors)
          ..add('affectedEntities', affectedEntities))
        .toString();
  }
}

class DeleteValidationErrorBuilder
    implements Builder<DeleteValidationError, DeleteValidationErrorBuilder> {
  _$DeleteValidationError? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  ListBuilder<String>? _blockingFactors;
  ListBuilder<String> get blockingFactors =>
      _$this._blockingFactors ??= ListBuilder<String>();
  set blockingFactors(ListBuilder<String>? blockingFactors) =>
      _$this._blockingFactors = blockingFactors;

  MapBuilder<String, Map<String, dynamic>?>? _affectedEntities;
  MapBuilder<String, Map<String, dynamic>?> get affectedEntities =>
      _$this._affectedEntities ??= MapBuilder<String, Map<String, dynamic>?>();
  set affectedEntities(
          MapBuilder<String, Map<String, dynamic>?>? affectedEntities) =>
      _$this._affectedEntities = affectedEntities;

  DeleteValidationErrorBuilder() {
    DeleteValidationError._defaults(this);
  }

  DeleteValidationErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _blockingFactors = $v.blockingFactors?.toBuilder();
      _affectedEntities = $v.affectedEntities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteValidationError other) {
    _$v = other as _$DeleteValidationError;
  }

  @override
  void update(void Function(DeleteValidationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteValidationError build() => _build();

  _$DeleteValidationError _build() {
    _$DeleteValidationError _$result;
    try {
      _$result = _$v ??
          _$DeleteValidationError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'DeleteValidationError', 'error'),
            blockingFactors: _blockingFactors?.build(),
            affectedEntities: _affectedEntities?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockingFactors';
        _blockingFactors?.build();
        _$failedField = 'affectedEntities';
        _affectedEntities?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DeleteValidationError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
