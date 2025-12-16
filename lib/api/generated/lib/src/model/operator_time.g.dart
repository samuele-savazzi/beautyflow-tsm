// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_time.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorTime extends OperatorTime {
  @override
  final int operatorId;
  @override
  final int totalTime;
  @override
  final BuiltList<ServiceStep> steps;

  factory _$OperatorTime([void Function(OperatorTimeBuilder)? updates]) =>
      (OperatorTimeBuilder()..update(updates))._build();

  _$OperatorTime._(
      {required this.operatorId, required this.totalTime, required this.steps})
      : super._();
  @override
  OperatorTime rebuild(void Function(OperatorTimeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorTimeBuilder toBuilder() => OperatorTimeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorTime &&
        operatorId == other.operatorId &&
        totalTime == other.totalTime &&
        steps == other.steps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, totalTime.hashCode);
    _$hash = $jc(_$hash, steps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorTime')
          ..add('operatorId', operatorId)
          ..add('totalTime', totalTime)
          ..add('steps', steps))
        .toString();
  }
}

class OperatorTimeBuilder
    implements Builder<OperatorTime, OperatorTimeBuilder> {
  _$OperatorTime? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _totalTime;
  int? get totalTime => _$this._totalTime;
  set totalTime(int? totalTime) => _$this._totalTime = totalTime;

  ListBuilder<ServiceStep>? _steps;
  ListBuilder<ServiceStep> get steps =>
      _$this._steps ??= ListBuilder<ServiceStep>();
  set steps(ListBuilder<ServiceStep>? steps) => _$this._steps = steps;

  OperatorTimeBuilder() {
    OperatorTime._defaults(this);
  }

  OperatorTimeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _totalTime = $v.totalTime;
      _steps = $v.steps.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorTime other) {
    _$v = other as _$OperatorTime;
  }

  @override
  void update(void Function(OperatorTimeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorTime build() => _build();

  _$OperatorTime _build() {
    _$OperatorTime _$result;
    try {
      _$result = _$v ??
          _$OperatorTime._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'OperatorTime', 'operatorId'),
            totalTime: BuiltValueNullFieldError.checkNotNull(
                totalTime, r'OperatorTime', 'totalTime'),
            steps: steps.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'steps';
        steps.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorTime', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
