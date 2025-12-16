// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_operator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaOperator extends AreaOperator {
  @override
  final int operatorId;
  @override
  final String operatorName;
  @override
  final String operatorType;
  @override
  final BuiltList<int> workstationIds;
  @override
  final String? attachmentUrl;

  factory _$AreaOperator([void Function(AreaOperatorBuilder)? updates]) =>
      (AreaOperatorBuilder()..update(updates))._build();

  _$AreaOperator._(
      {required this.operatorId,
      required this.operatorName,
      required this.operatorType,
      required this.workstationIds,
      this.attachmentUrl})
      : super._();
  @override
  AreaOperator rebuild(void Function(AreaOperatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaOperatorBuilder toBuilder() => AreaOperatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaOperator &&
        operatorId == other.operatorId &&
        operatorName == other.operatorName &&
        operatorType == other.operatorType &&
        workstationIds == other.workstationIds &&
        attachmentUrl == other.attachmentUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, operatorName.hashCode);
    _$hash = $jc(_$hash, operatorType.hashCode);
    _$hash = $jc(_$hash, workstationIds.hashCode);
    _$hash = $jc(_$hash, attachmentUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaOperator')
          ..add('operatorId', operatorId)
          ..add('operatorName', operatorName)
          ..add('operatorType', operatorType)
          ..add('workstationIds', workstationIds)
          ..add('attachmentUrl', attachmentUrl))
        .toString();
  }
}

class AreaOperatorBuilder
    implements Builder<AreaOperator, AreaOperatorBuilder> {
  _$AreaOperator? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  String? _operatorName;
  String? get operatorName => _$this._operatorName;
  set operatorName(String? operatorName) => _$this._operatorName = operatorName;

  String? _operatorType;
  String? get operatorType => _$this._operatorType;
  set operatorType(String? operatorType) => _$this._operatorType = operatorType;

  ListBuilder<int>? _workstationIds;
  ListBuilder<int> get workstationIds =>
      _$this._workstationIds ??= ListBuilder<int>();
  set workstationIds(ListBuilder<int>? workstationIds) =>
      _$this._workstationIds = workstationIds;

  String? _attachmentUrl;
  String? get attachmentUrl => _$this._attachmentUrl;
  set attachmentUrl(String? attachmentUrl) =>
      _$this._attachmentUrl = attachmentUrl;

  AreaOperatorBuilder() {
    AreaOperator._defaults(this);
  }

  AreaOperatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _operatorName = $v.operatorName;
      _operatorType = $v.operatorType;
      _workstationIds = $v.workstationIds.toBuilder();
      _attachmentUrl = $v.attachmentUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaOperator other) {
    _$v = other as _$AreaOperator;
  }

  @override
  void update(void Function(AreaOperatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaOperator build() => _build();

  _$AreaOperator _build() {
    _$AreaOperator _$result;
    try {
      _$result = _$v ??
          _$AreaOperator._(
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'AreaOperator', 'operatorId'),
            operatorName: BuiltValueNullFieldError.checkNotNull(
                operatorName, r'AreaOperator', 'operatorName'),
            operatorType: BuiltValueNullFieldError.checkNotNull(
                operatorType, r'AreaOperator', 'operatorType'),
            workstationIds: workstationIds.build(),
            attachmentUrl: attachmentUrl,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workstationIds';
        workstationIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreaOperator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
