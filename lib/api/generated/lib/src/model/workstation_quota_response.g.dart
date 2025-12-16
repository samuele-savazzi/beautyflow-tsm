// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workstation_quota_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkstationQuotaResponse extends WorkstationQuotaResponse {
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final int maxWorkstations;
  @override
  final int currentWorkstations;
  @override
  final int availableSlots;
  @override
  final bool canAdd;

  factory _$WorkstationQuotaResponse(
          [void Function(WorkstationQuotaResponseBuilder)? updates]) =>
      (WorkstationQuotaResponseBuilder()..update(updates))._build();

  _$WorkstationQuotaResponse._(
      {required this.operatorId,
      required this.operatorName,
      required this.maxWorkstations,
      required this.currentWorkstations,
      required this.availableSlots,
      required this.canAdd})
      : super._();
  @override
  WorkstationQuotaResponse rebuild(
          void Function(WorkstationQuotaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkstationQuotaResponseBuilder toBuilder() =>
      WorkstationQuotaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkstationQuotaResponse &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        maxWorkstations == other.maxWorkstations &&
        currentWorkstations == other.currentWorkstations &&
        availableSlots == other.availableSlots &&
        canAdd == other.canAdd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, maxWorkstations.hashCode);
    _$hash = $jc(_$hash, currentWorkstations.hashCode);
    _$hash = $jc(_$hash, availableSlots.hashCode);
    _$hash = $jc(_$hash, canAdd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkstationQuotaResponse')
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('maxWorkstations', maxWorkstations)
          ..add('currentWorkstations', currentWorkstations)
          ..add('availableSlots', availableSlots)
          ..add('canAdd', canAdd))
        .toString();
  }
}

class WorkstationQuotaResponseBuilder
    implements
        Builder<WorkstationQuotaResponse, WorkstationQuotaResponseBuilder> {
  _$WorkstationQuotaResponse? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  int? _maxWorkstations;
  int? get maxWorkstations => _$this._maxWorkstations;
  set maxWorkstations(int? maxWorkstations) =>
      _$this._maxWorkstations = maxWorkstations;

  int? _currentWorkstations;
  int? get currentWorkstations => _$this._currentWorkstations;
  set currentWorkstations(int? currentWorkstations) =>
      _$this._currentWorkstations = currentWorkstations;

  int? _availableSlots;
  int? get availableSlots => _$this._availableSlots;
  set availableSlots(int? availableSlots) =>
      _$this._availableSlots = availableSlots;

  bool? _canAdd;
  bool? get canAdd => _$this._canAdd;
  set canAdd(bool? canAdd) => _$this._canAdd = canAdd;

  WorkstationQuotaResponseBuilder() {
    WorkstationQuotaResponse._defaults(this);
  }

  WorkstationQuotaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _maxWorkstations = $v.maxWorkstations;
      _currentWorkstations = $v.currentWorkstations;
      _availableSlots = $v.availableSlots;
      _canAdd = $v.canAdd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkstationQuotaResponse other) {
    _$v = other as _$WorkstationQuotaResponse;
  }

  @override
  void update(void Function(WorkstationQuotaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkstationQuotaResponse build() => _build();

  _$WorkstationQuotaResponse _build() {
    final _$result = _$v ??
        _$WorkstationQuotaResponse._(
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'WorkstationQuotaResponse', 'operatorId'),
          operatorName: BuiltValueNullFieldError.checkNotNull(
              operatorName, r'WorkstationQuotaResponse', 'operatorName'),
          maxWorkstations: BuiltValueNullFieldError.checkNotNull(
              maxWorkstations, r'WorkstationQuotaResponse', 'maxWorkstations'),
          currentWorkstations: BuiltValueNullFieldError.checkNotNull(
              currentWorkstations,
              r'WorkstationQuotaResponse',
              'currentWorkstations'),
          availableSlots: BuiltValueNullFieldError.checkNotNull(
              availableSlots, r'WorkstationQuotaResponse', 'availableSlots'),
          canAdd: BuiltValueNullFieldError.checkNotNull(
              canAdd, r'WorkstationQuotaResponse', 'canAdd'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
