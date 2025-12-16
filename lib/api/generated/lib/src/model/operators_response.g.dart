// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operators_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorsResponse extends OperatorsResponse {
  @override
  final String status;
  @override
  final BuiltList<OperatorInfo> operators;
  @override
  final BuiltMap<String, Map<String, dynamic>?> areaInfo;

  factory _$OperatorsResponse(
          [void Function(OperatorsResponseBuilder)? updates]) =>
      (OperatorsResponseBuilder()..update(updates))._build();

  _$OperatorsResponse._(
      {required this.status, required this.operators, required this.areaInfo})
      : super._();
  @override
  OperatorsResponse rebuild(void Function(OperatorsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorsResponseBuilder toBuilder() =>
      OperatorsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorsResponse &&
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
    return (newBuiltValueToStringHelper(r'OperatorsResponse')
          ..add('status', status)
          ..add('operators', operators)
          ..add('areaInfo', areaInfo))
        .toString();
  }
}

class OperatorsResponseBuilder
    implements Builder<OperatorsResponse, OperatorsResponseBuilder> {
  _$OperatorsResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<OperatorInfo>? _operators;
  ListBuilder<OperatorInfo> get operators =>
      _$this._operators ??= ListBuilder<OperatorInfo>();
  set operators(ListBuilder<OperatorInfo>? operators) =>
      _$this._operators = operators;

  MapBuilder<String, Map<String, dynamic>?>? _areaInfo;
  MapBuilder<String, Map<String, dynamic>?> get areaInfo =>
      _$this._areaInfo ??= MapBuilder<String, Map<String, dynamic>?>();
  set areaInfo(MapBuilder<String, Map<String, dynamic>?>? areaInfo) =>
      _$this._areaInfo = areaInfo;

  OperatorsResponseBuilder() {
    OperatorsResponse._defaults(this);
  }

  OperatorsResponseBuilder get _$this {
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
  void replace(OperatorsResponse other) {
    _$v = other as _$OperatorsResponse;
  }

  @override
  void update(void Function(OperatorsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorsResponse build() => _build();

  _$OperatorsResponse _build() {
    _$OperatorsResponse _$result;
    try {
      _$result = _$v ??
          _$OperatorsResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OperatorsResponse', 'status'),
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
            r'OperatorsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
