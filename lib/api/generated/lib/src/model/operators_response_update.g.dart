// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operators_response_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorsResponseUpdate extends OperatorsResponseUpdate {
  @override
  final String status;
  @override
  final BuiltList<OperatorWithConfig> operators;
  @override
  final BuiltMap<String, Map<String, dynamic>?> areaInfo;

  factory _$OperatorsResponseUpdate(
          [void Function(OperatorsResponseUpdateBuilder)? updates]) =>
      (OperatorsResponseUpdateBuilder()..update(updates))._build();

  _$OperatorsResponseUpdate._(
      {required this.status, required this.operators, required this.areaInfo})
      : super._();
  @override
  OperatorsResponseUpdate rebuild(
          void Function(OperatorsResponseUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorsResponseUpdateBuilder toBuilder() =>
      OperatorsResponseUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorsResponseUpdate &&
        status == other.status &&
        operators == other.operators &&
        areaInfo == other.areaInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jc(_$hash, areaInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorsResponseUpdate')
          ..add('status', status)
          ..add('operators', operators)
          ..add('areaInfo', areaInfo))
        .toString();
  }
}

class OperatorsResponseUpdateBuilder
    implements
        Builder<OperatorsResponseUpdate, OperatorsResponseUpdateBuilder> {
  _$OperatorsResponseUpdate? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<OperatorWithConfig>? _operators;
  ListBuilder<OperatorWithConfig> get operators =>
      _$this._operators ??= ListBuilder<OperatorWithConfig>();
  set operators(ListBuilder<OperatorWithConfig>? operators) =>
      _$this._operators = operators;

  MapBuilder<String, Map<String, dynamic>?>? _areaInfo;
  MapBuilder<String, Map<String, dynamic>?> get areaInfo =>
      _$this._areaInfo ??= MapBuilder<String, Map<String, dynamic>?>();
  set areaInfo(MapBuilder<String, Map<String, dynamic>?>? areaInfo) =>
      _$this._areaInfo = areaInfo;

  OperatorsResponseUpdateBuilder() {
    OperatorsResponseUpdate._defaults(this);
  }

  OperatorsResponseUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _operators = $v.operators.toBuilder();
      _areaInfo = $v.areaInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorsResponseUpdate other) {
    _$v = other as _$OperatorsResponseUpdate;
  }

  @override
  void update(void Function(OperatorsResponseUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorsResponseUpdate build() => _build();

  _$OperatorsResponseUpdate _build() {
    _$OperatorsResponseUpdate _$result;
    try {
      _$result = _$v ??
          _$OperatorsResponseUpdate._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OperatorsResponseUpdate', 'status'),
            operators: operators.build(),
            areaInfo: areaInfo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
        _$failedField = 'areaInfo';
        areaInfo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OperatorsResponseUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
