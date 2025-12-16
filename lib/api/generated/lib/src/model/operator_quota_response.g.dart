// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_quota_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperatorQuotaResponse extends OperatorQuotaResponse {
  @override
  final int areaId;
  @override
  final String areaName;
  @override
  final int maxOperators;
  @override
  final int currentOperators;
  @override
  final int availableSlots;
  @override
  final bool canAdd;

  factory _$OperatorQuotaResponse(
          [void Function(OperatorQuotaResponseBuilder)? updates]) =>
      (OperatorQuotaResponseBuilder()..update(updates))._build();

  _$OperatorQuotaResponse._(
      {required this.areaId,
      required this.areaName,
      required this.maxOperators,
      required this.currentOperators,
      required this.availableSlots,
      required this.canAdd})
      : super._();
  @override
  OperatorQuotaResponse rebuild(
          void Function(OperatorQuotaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperatorQuotaResponseBuilder toBuilder() =>
      OperatorQuotaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatorQuotaResponse &&
        areaId == other.areaId &&
        areaName == other.areaName &&
        maxOperators == other.maxOperators &&
        currentOperators == other.currentOperators &&
        availableSlots == other.availableSlots &&
        canAdd == other.canAdd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, areaName.hashCode);
    _$hash = $jc(_$hash, maxOperators.hashCode);
    _$hash = $jc(_$hash, currentOperators.hashCode);
    _$hash = $jc(_$hash, availableSlots.hashCode);
    _$hash = $jc(_$hash, canAdd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OperatorQuotaResponse')
          ..add('areaId', areaId)
          ..add('areaName', areaName)
          ..add('maxOperators', maxOperators)
          ..add('currentOperators', currentOperators)
          ..add('availableSlots', availableSlots)
          ..add('canAdd', canAdd))
        .toString();
  }
}

class OperatorQuotaResponseBuilder
    implements Builder<OperatorQuotaResponse, OperatorQuotaResponseBuilder> {
  _$OperatorQuotaResponse? _$v;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  String? _areaName;
  String? get areaName => _$this._areaName;
  set areaName(String? areaName) => _$this._areaName = areaName;

  int? _maxOperators;
  int? get maxOperators => _$this._maxOperators;
  set maxOperators(int? maxOperators) => _$this._maxOperators = maxOperators;

  int? _currentOperators;
  int? get currentOperators => _$this._currentOperators;
  set currentOperators(int? currentOperators) =>
      _$this._currentOperators = currentOperators;

  int? _availableSlots;
  int? get availableSlots => _$this._availableSlots;
  set availableSlots(int? availableSlots) =>
      _$this._availableSlots = availableSlots;

  bool? _canAdd;
  bool? get canAdd => _$this._canAdd;
  set canAdd(bool? canAdd) => _$this._canAdd = canAdd;

  OperatorQuotaResponseBuilder() {
    OperatorQuotaResponse._defaults(this);
  }

  OperatorQuotaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaId = $v.areaId;
      _areaName = $v.areaName;
      _maxOperators = $v.maxOperators;
      _currentOperators = $v.currentOperators;
      _availableSlots = $v.availableSlots;
      _canAdd = $v.canAdd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperatorQuotaResponse other) {
    _$v = other as _$OperatorQuotaResponse;
  }

  @override
  void update(void Function(OperatorQuotaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperatorQuotaResponse build() => _build();

  _$OperatorQuotaResponse _build() {
    final _$result = _$v ??
        _$OperatorQuotaResponse._(
          areaId: BuiltValueNullFieldError.checkNotNull(
              areaId, r'OperatorQuotaResponse', 'areaId'),
          areaName: BuiltValueNullFieldError.checkNotNull(
              areaName, r'OperatorQuotaResponse', 'areaName'),
          maxOperators: BuiltValueNullFieldError.checkNotNull(
              maxOperators, r'OperatorQuotaResponse', 'maxOperators'),
          currentOperators: BuiltValueNullFieldError.checkNotNull(
              currentOperators, r'OperatorQuotaResponse', 'currentOperators'),
          availableSlots: BuiltValueNullFieldError.checkNotNull(
              availableSlots, r'OperatorQuotaResponse', 'availableSlots'),
          canAdd: BuiltValueNullFieldError.checkNotNull(
              canAdd, r'OperatorQuotaResponse', 'canAdd'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
