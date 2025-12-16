// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_schedule_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DailyScheduleCreated extends DailyScheduleCreated {
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> results;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>> errors;

  factory _$DailyScheduleCreated(
          [void Function(DailyScheduleCreatedBuilder)? updates]) =>
      (DailyScheduleCreatedBuilder()..update(updates))._build();

  _$DailyScheduleCreated._({required this.results, required this.errors})
      : super._();
  @override
  DailyScheduleCreated rebuild(
          void Function(DailyScheduleCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyScheduleCreatedBuilder toBuilder() =>
      DailyScheduleCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyScheduleCreated &&
        results == other.results &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyScheduleCreated')
          ..add('results', results)
          ..add('errors', errors))
        .toString();
  }
}

class DailyScheduleCreatedBuilder
    implements Builder<DailyScheduleCreated, DailyScheduleCreatedBuilder> {
  _$DailyScheduleCreated? _$v;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _results;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get results =>
      _$this._results ??=
          ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set results(ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? results) =>
      _$this._results = results;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _errors;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get errors =>
      _$this._errors ??= ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set errors(ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? errors) =>
      _$this._errors = errors;

  DailyScheduleCreatedBuilder() {
    DailyScheduleCreated._defaults(this);
  }

  DailyScheduleCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results.toBuilder();
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyScheduleCreated other) {
    _$v = other as _$DailyScheduleCreated;
  }

  @override
  void update(void Function(DailyScheduleCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyScheduleCreated build() => _build();

  _$DailyScheduleCreated _build() {
    _$DailyScheduleCreated _$result;
    try {
      _$result = _$v ??
          _$DailyScheduleCreated._(
            results: results.build(),
            errors: errors.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DailyScheduleCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
