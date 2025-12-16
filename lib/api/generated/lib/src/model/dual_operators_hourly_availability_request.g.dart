// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_hourly_availability_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsHourlyAvailabilityRequest
    extends DualOperatorsHourlyAvailabilityRequest {
  @override
  final int primaryOperatorId;
  @override
  final int additionalOperatorId;
  @override
  final int areaId;
  @override
  final int primaryServiceId;
  @override
  final int additionalServiceId;
  @override
  final BuiltList<Map<String, dynamic>?> timesPrimaryService;
  @override
  final BuiltList<Map<String, dynamic>?> timesAdditionalService;
  @override
  final BuiltList<String> avaibleWorkStationsPrimaryService;
  @override
  final BuiltList<String> avaibleWorkStationsAdditionalService;
  @override
  final BuiltMap<String, Map<String, dynamic>?> workingDays;

  factory _$DualOperatorsHourlyAvailabilityRequest(
          [void Function(DualOperatorsHourlyAvailabilityRequestBuilder)?
              updates]) =>
      (DualOperatorsHourlyAvailabilityRequestBuilder()..update(updates))
          ._build();

  _$DualOperatorsHourlyAvailabilityRequest._(
      {required this.primaryOperatorId,
      required this.additionalOperatorId,
      required this.areaId,
      required this.primaryServiceId,
      required this.additionalServiceId,
      required this.timesPrimaryService,
      required this.timesAdditionalService,
      required this.avaibleWorkStationsPrimaryService,
      required this.avaibleWorkStationsAdditionalService,
      required this.workingDays})
      : super._();
  @override
  DualOperatorsHourlyAvailabilityRequest rebuild(
          void Function(DualOperatorsHourlyAvailabilityRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsHourlyAvailabilityRequestBuilder toBuilder() =>
      DualOperatorsHourlyAvailabilityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsHourlyAvailabilityRequest &&
        primaryOperatorId == other.primaryOperatorId &&
        additionalOperatorId == other.additionalOperatorId &&
        areaId == other.areaId &&
        primaryServiceId == other.primaryServiceId &&
        additionalServiceId == other.additionalServiceId &&
        timesPrimaryService == other.timesPrimaryService &&
        timesAdditionalService == other.timesAdditionalService &&
        avaibleWorkStationsPrimaryService ==
            other.avaibleWorkStationsPrimaryService &&
        avaibleWorkStationsAdditionalService ==
            other.avaibleWorkStationsAdditionalService &&
        workingDays == other.workingDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primaryOperatorId.hashCode);
    _$hash = $jc(_$hash, additionalOperatorId.hashCode);
    _$hash = $jc(_$hash, areaId.hashCode);
    _$hash = $jc(_$hash, primaryServiceId.hashCode);
    _$hash = $jc(_$hash, additionalServiceId.hashCode);
    _$hash = $jc(_$hash, timesPrimaryService.hashCode);
    _$hash = $jc(_$hash, timesAdditionalService.hashCode);
    _$hash = $jc(_$hash, avaibleWorkStationsPrimaryService.hashCode);
    _$hash = $jc(_$hash, avaibleWorkStationsAdditionalService.hashCode);
    _$hash = $jc(_$hash, workingDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DualOperatorsHourlyAvailabilityRequest')
          ..add('primaryOperatorId', primaryOperatorId)
          ..add('additionalOperatorId', additionalOperatorId)
          ..add('areaId', areaId)
          ..add('primaryServiceId', primaryServiceId)
          ..add('additionalServiceId', additionalServiceId)
          ..add('timesPrimaryService', timesPrimaryService)
          ..add('timesAdditionalService', timesAdditionalService)
          ..add('avaibleWorkStationsPrimaryService',
              avaibleWorkStationsPrimaryService)
          ..add('avaibleWorkStationsAdditionalService',
              avaibleWorkStationsAdditionalService)
          ..add('workingDays', workingDays))
        .toString();
  }
}

class DualOperatorsHourlyAvailabilityRequestBuilder
    implements
        Builder<DualOperatorsHourlyAvailabilityRequest,
            DualOperatorsHourlyAvailabilityRequestBuilder> {
  _$DualOperatorsHourlyAvailabilityRequest? _$v;

  int? _primaryOperatorId;
  int? get primaryOperatorId => _$this._primaryOperatorId;
  set primaryOperatorId(int? primaryOperatorId) =>
      _$this._primaryOperatorId = primaryOperatorId;

  int? _additionalOperatorId;
  int? get additionalOperatorId => _$this._additionalOperatorId;
  set additionalOperatorId(int? additionalOperatorId) =>
      _$this._additionalOperatorId = additionalOperatorId;

  int? _areaId;
  int? get areaId => _$this._areaId;
  set areaId(int? areaId) => _$this._areaId = areaId;

  int? _primaryServiceId;
  int? get primaryServiceId => _$this._primaryServiceId;
  set primaryServiceId(int? primaryServiceId) =>
      _$this._primaryServiceId = primaryServiceId;

  int? _additionalServiceId;
  int? get additionalServiceId => _$this._additionalServiceId;
  set additionalServiceId(int? additionalServiceId) =>
      _$this._additionalServiceId = additionalServiceId;

  ListBuilder<Map<String, dynamic>?>? _timesPrimaryService;
  ListBuilder<Map<String, dynamic>?> get timesPrimaryService =>
      _$this._timesPrimaryService ??= ListBuilder<Map<String, dynamic>?>();
  set timesPrimaryService(
          ListBuilder<Map<String, dynamic>?>? timesPrimaryService) =>
      _$this._timesPrimaryService = timesPrimaryService;

  ListBuilder<Map<String, dynamic>?>? _timesAdditionalService;
  ListBuilder<Map<String, dynamic>?> get timesAdditionalService =>
      _$this._timesAdditionalService ??= ListBuilder<Map<String, dynamic>?>();
  set timesAdditionalService(
          ListBuilder<Map<String, dynamic>?>? timesAdditionalService) =>
      _$this._timesAdditionalService = timesAdditionalService;

  ListBuilder<String>? _avaibleWorkStationsPrimaryService;
  ListBuilder<String> get avaibleWorkStationsPrimaryService =>
      _$this._avaibleWorkStationsPrimaryService ??= ListBuilder<String>();
  set avaibleWorkStationsPrimaryService(
          ListBuilder<String>? avaibleWorkStationsPrimaryService) =>
      _$this._avaibleWorkStationsPrimaryService =
          avaibleWorkStationsPrimaryService;

  ListBuilder<String>? _avaibleWorkStationsAdditionalService;
  ListBuilder<String> get avaibleWorkStationsAdditionalService =>
      _$this._avaibleWorkStationsAdditionalService ??= ListBuilder<String>();
  set avaibleWorkStationsAdditionalService(
          ListBuilder<String>? avaibleWorkStationsAdditionalService) =>
      _$this._avaibleWorkStationsAdditionalService =
          avaibleWorkStationsAdditionalService;

  MapBuilder<String, Map<String, dynamic>?>? _workingDays;
  MapBuilder<String, Map<String, dynamic>?> get workingDays =>
      _$this._workingDays ??= MapBuilder<String, Map<String, dynamic>?>();
  set workingDays(MapBuilder<String, Map<String, dynamic>?>? workingDays) =>
      _$this._workingDays = workingDays;

  DualOperatorsHourlyAvailabilityRequestBuilder() {
    DualOperatorsHourlyAvailabilityRequest._defaults(this);
  }

  DualOperatorsHourlyAvailabilityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryOperatorId = $v.primaryOperatorId;
      _additionalOperatorId = $v.additionalOperatorId;
      _areaId = $v.areaId;
      _primaryServiceId = $v.primaryServiceId;
      _additionalServiceId = $v.additionalServiceId;
      _timesPrimaryService = $v.timesPrimaryService.toBuilder();
      _timesAdditionalService = $v.timesAdditionalService.toBuilder();
      _avaibleWorkStationsPrimaryService =
          $v.avaibleWorkStationsPrimaryService.toBuilder();
      _avaibleWorkStationsAdditionalService =
          $v.avaibleWorkStationsAdditionalService.toBuilder();
      _workingDays = $v.workingDays.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DualOperatorsHourlyAvailabilityRequest other) {
    _$v = other as _$DualOperatorsHourlyAvailabilityRequest;
  }

  @override
  void update(
      void Function(DualOperatorsHourlyAvailabilityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsHourlyAvailabilityRequest build() => _build();

  _$DualOperatorsHourlyAvailabilityRequest _build() {
    _$DualOperatorsHourlyAvailabilityRequest _$result;
    try {
      _$result = _$v ??
          _$DualOperatorsHourlyAvailabilityRequest._(
            primaryOperatorId: BuiltValueNullFieldError.checkNotNull(
                primaryOperatorId,
                r'DualOperatorsHourlyAvailabilityRequest',
                'primaryOperatorId'),
            additionalOperatorId: BuiltValueNullFieldError.checkNotNull(
                additionalOperatorId,
                r'DualOperatorsHourlyAvailabilityRequest',
                'additionalOperatorId'),
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'DualOperatorsHourlyAvailabilityRequest', 'areaId'),
            primaryServiceId: BuiltValueNullFieldError.checkNotNull(
                primaryServiceId,
                r'DualOperatorsHourlyAvailabilityRequest',
                'primaryServiceId'),
            additionalServiceId: BuiltValueNullFieldError.checkNotNull(
                additionalServiceId,
                r'DualOperatorsHourlyAvailabilityRequest',
                'additionalServiceId'),
            timesPrimaryService: timesPrimaryService.build(),
            timesAdditionalService: timesAdditionalService.build(),
            avaibleWorkStationsPrimaryService:
                avaibleWorkStationsPrimaryService.build(),
            avaibleWorkStationsAdditionalService:
                avaibleWorkStationsAdditionalService.build(),
            workingDays: workingDays.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timesPrimaryService';
        timesPrimaryService.build();
        _$failedField = 'timesAdditionalService';
        timesAdditionalService.build();
        _$failedField = 'avaibleWorkStationsPrimaryService';
        avaibleWorkStationsPrimaryService.build();
        _$failedField = 'avaibleWorkStationsAdditionalService';
        avaibleWorkStationsAdditionalService.build();
        _$failedField = 'workingDays';
        workingDays.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'DualOperatorsHourlyAvailabilityRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
