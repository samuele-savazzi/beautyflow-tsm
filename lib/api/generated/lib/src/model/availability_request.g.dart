// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityRequest extends AvailabilityRequest {
  @override
  final int? operatorId;
  @override
  final int? primaryOperatorId;
  @override
  final int? additionalOperatorId;
  @override
  final int areaId;
  @override
  final int primaryServiceId;
  @override
  final int? additionalServiceId;
  @override
  final BuiltList<Map<String, dynamic>?> timesPrimaryService;
  @override
  final BuiltList<Map<String, dynamic>?>? timesAdditionalService;
  @override
  final BuiltList<String> avaibleWorkStationsPrimaryService;
  @override
  final BuiltList<String>? avaibleWorkStationsAdditionalService;
  @override
  final BuiltMap<String, Map<String, dynamic>?> workingDays;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? primaryOperatorWorkingDays;
  @override
  final BuiltMap<String, Map<String, dynamic>?>? additionalOperatorWorkingDays;
  @override
  final int? minimumGapSlots;
  @override
  final bool? searchOnlyMorning;
  @override
  final bool? searchOnlyAfternoon;

  factory _$AvailabilityRequest(
          [void Function(AvailabilityRequestBuilder)? updates]) =>
      (AvailabilityRequestBuilder()..update(updates))._build();

  _$AvailabilityRequest._(
      {this.operatorId,
      this.primaryOperatorId,
      this.additionalOperatorId,
      required this.areaId,
      required this.primaryServiceId,
      this.additionalServiceId,
      required this.timesPrimaryService,
      this.timesAdditionalService,
      required this.avaibleWorkStationsPrimaryService,
      this.avaibleWorkStationsAdditionalService,
      required this.workingDays,
      this.primaryOperatorWorkingDays,
      this.additionalOperatorWorkingDays,
      this.minimumGapSlots,
      this.searchOnlyMorning,
      this.searchOnlyAfternoon})
      : super._();
  @override
  AvailabilityRequest rebuild(
          void Function(AvailabilityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityRequestBuilder toBuilder() =>
      AvailabilityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityRequest &&
        operatorId == other.operatorId &&
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
        workingDays == other.workingDays &&
        primaryOperatorWorkingDays == other.primaryOperatorWorkingDays &&
        additionalOperatorWorkingDays == other.additionalOperatorWorkingDays &&
        minimumGapSlots == other.minimumGapSlots &&
        searchOnlyMorning == other.searchOnlyMorning &&
        searchOnlyAfternoon == other.searchOnlyAfternoon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
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
    _$hash = $jc(_$hash, primaryOperatorWorkingDays.hashCode);
    _$hash = $jc(_$hash, additionalOperatorWorkingDays.hashCode);
    _$hash = $jc(_$hash, minimumGapSlots.hashCode);
    _$hash = $jc(_$hash, searchOnlyMorning.hashCode);
    _$hash = $jc(_$hash, searchOnlyAfternoon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailabilityRequest')
          ..add('operatorId', operatorId)
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
          ..add('workingDays', workingDays)
          ..add('primaryOperatorWorkingDays', primaryOperatorWorkingDays)
          ..add('additionalOperatorWorkingDays', additionalOperatorWorkingDays)
          ..add('minimumGapSlots', minimumGapSlots)
          ..add('searchOnlyMorning', searchOnlyMorning)
          ..add('searchOnlyAfternoon', searchOnlyAfternoon))
        .toString();
  }
}

class AvailabilityRequestBuilder
    implements Builder<AvailabilityRequest, AvailabilityRequestBuilder> {
  _$AvailabilityRequest? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

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

  MapBuilder<String, Map<String, dynamic>?>? _primaryOperatorWorkingDays;
  MapBuilder<String, Map<String, dynamic>?> get primaryOperatorWorkingDays =>
      _$this._primaryOperatorWorkingDays ??=
          MapBuilder<String, Map<String, dynamic>?>();
  set primaryOperatorWorkingDays(
          MapBuilder<String, Map<String, dynamic>?>?
              primaryOperatorWorkingDays) =>
      _$this._primaryOperatorWorkingDays = primaryOperatorWorkingDays;

  MapBuilder<String, Map<String, dynamic>?>? _additionalOperatorWorkingDays;
  MapBuilder<String, Map<String, dynamic>?> get additionalOperatorWorkingDays =>
      _$this._additionalOperatorWorkingDays ??=
          MapBuilder<String, Map<String, dynamic>?>();
  set additionalOperatorWorkingDays(
          MapBuilder<String, Map<String, dynamic>?>?
              additionalOperatorWorkingDays) =>
      _$this._additionalOperatorWorkingDays = additionalOperatorWorkingDays;

  int? _minimumGapSlots;
  int? get minimumGapSlots => _$this._minimumGapSlots;
  set minimumGapSlots(int? minimumGapSlots) =>
      _$this._minimumGapSlots = minimumGapSlots;

  bool? _searchOnlyMorning;
  bool? get searchOnlyMorning => _$this._searchOnlyMorning;
  set searchOnlyMorning(bool? searchOnlyMorning) =>
      _$this._searchOnlyMorning = searchOnlyMorning;

  bool? _searchOnlyAfternoon;
  bool? get searchOnlyAfternoon => _$this._searchOnlyAfternoon;
  set searchOnlyAfternoon(bool? searchOnlyAfternoon) =>
      _$this._searchOnlyAfternoon = searchOnlyAfternoon;

  AvailabilityRequestBuilder() {
    AvailabilityRequest._defaults(this);
  }

  AvailabilityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _primaryOperatorId = $v.primaryOperatorId;
      _additionalOperatorId = $v.additionalOperatorId;
      _areaId = $v.areaId;
      _primaryServiceId = $v.primaryServiceId;
      _additionalServiceId = $v.additionalServiceId;
      _timesPrimaryService = $v.timesPrimaryService.toBuilder();
      _timesAdditionalService = $v.timesAdditionalService?.toBuilder();
      _avaibleWorkStationsPrimaryService =
          $v.avaibleWorkStationsPrimaryService.toBuilder();
      _avaibleWorkStationsAdditionalService =
          $v.avaibleWorkStationsAdditionalService?.toBuilder();
      _workingDays = $v.workingDays.toBuilder();
      _primaryOperatorWorkingDays = $v.primaryOperatorWorkingDays?.toBuilder();
      _additionalOperatorWorkingDays =
          $v.additionalOperatorWorkingDays?.toBuilder();
      _minimumGapSlots = $v.minimumGapSlots;
      _searchOnlyMorning = $v.searchOnlyMorning;
      _searchOnlyAfternoon = $v.searchOnlyAfternoon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityRequest other) {
    _$v = other as _$AvailabilityRequest;
  }

  @override
  void update(void Function(AvailabilityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityRequest build() => _build();

  _$AvailabilityRequest _build() {
    _$AvailabilityRequest _$result;
    try {
      _$result = _$v ??
          _$AvailabilityRequest._(
            operatorId: operatorId,
            primaryOperatorId: primaryOperatorId,
            additionalOperatorId: additionalOperatorId,
            areaId: BuiltValueNullFieldError.checkNotNull(
                areaId, r'AvailabilityRequest', 'areaId'),
            primaryServiceId: BuiltValueNullFieldError.checkNotNull(
                primaryServiceId, r'AvailabilityRequest', 'primaryServiceId'),
            additionalServiceId: additionalServiceId,
            timesPrimaryService: timesPrimaryService.build(),
            timesAdditionalService: _timesAdditionalService?.build(),
            avaibleWorkStationsPrimaryService:
                avaibleWorkStationsPrimaryService.build(),
            avaibleWorkStationsAdditionalService:
                _avaibleWorkStationsAdditionalService?.build(),
            workingDays: workingDays.build(),
            primaryOperatorWorkingDays: _primaryOperatorWorkingDays?.build(),
            additionalOperatorWorkingDays:
                _additionalOperatorWorkingDays?.build(),
            minimumGapSlots: minimumGapSlots,
            searchOnlyMorning: searchOnlyMorning,
            searchOnlyAfternoon: searchOnlyAfternoon,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timesPrimaryService';
        timesPrimaryService.build();
        _$failedField = 'timesAdditionalService';
        _timesAdditionalService?.build();
        _$failedField = 'avaibleWorkStationsPrimaryService';
        avaibleWorkStationsPrimaryService.build();
        _$failedField = 'avaibleWorkStationsAdditionalService';
        _avaibleWorkStationsAdditionalService?.build();
        _$failedField = 'workingDays';
        workingDays.build();
        _$failedField = 'primaryOperatorWorkingDays';
        _primaryOperatorWorkingDays?.build();
        _$failedField = 'additionalOperatorWorkingDays';
        _additionalOperatorWorkingDays?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AvailabilityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
