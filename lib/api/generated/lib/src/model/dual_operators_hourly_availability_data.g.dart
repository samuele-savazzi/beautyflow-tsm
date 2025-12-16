// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dual_operators_hourly_availability_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DualOperatorsHourlyAvailabilityData
    extends DualOperatorsHourlyAvailabilityData {
  @override
  final DualOperatorsOperatorData primaryOperator;
  @override
  final DualOperatorsOperatorData additionalOperator;
  @override
  final BuiltList<DualOperatorsSlot> availableSlots;
  @override
  final int totalSlotsAvailable;
  @override
  final int morningSlotsCount;
  @override
  final int afternoonSlotsCount;
  @override
  final Date searchDate;
  @override
  final String searchStrategy;

  factory _$DualOperatorsHourlyAvailabilityData(
          [void Function(DualOperatorsHourlyAvailabilityDataBuilder)?
              updates]) =>
      (DualOperatorsHourlyAvailabilityDataBuilder()..update(updates))._build();

  _$DualOperatorsHourlyAvailabilityData._(
      {required this.primaryOperator,
      required this.additionalOperator,
      required this.availableSlots,
      required this.totalSlotsAvailable,
      required this.morningSlotsCount,
      required this.afternoonSlotsCount,
      required this.searchDate,
      required this.searchStrategy})
      : super._();
  @override
  DualOperatorsHourlyAvailabilityData rebuild(
          void Function(DualOperatorsHourlyAvailabilityDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DualOperatorsHourlyAvailabilityDataBuilder toBuilder() =>
      DualOperatorsHourlyAvailabilityDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DualOperatorsHourlyAvailabilityData &&
        primaryOperator == other.primaryOperator &&
        additionalOperator == other.additionalOperator &&
        availableSlots == other.availableSlots &&
        totalSlotsAvailable == other.totalSlotsAvailable &&
        morningSlotsCount == other.morningSlotsCount &&
        afternoonSlotsCount == other.afternoonSlotsCount &&
        searchDate == other.searchDate &&
        searchStrategy == other.searchStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primaryOperator.hashCode);
    _$hash = $jc(_$hash, additionalOperator.hashCode);
    _$hash = $jc(_$hash, availableSlots.hashCode);
    _$hash = $jc(_$hash, totalSlotsAvailable.hashCode);
    _$hash = $jc(_$hash, morningSlotsCount.hashCode);
    _$hash = $jc(_$hash, afternoonSlotsCount.hashCode);
    _$hash = $jc(_$hash, searchDate.hashCode);
    _$hash = $jc(_$hash, searchStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DualOperatorsHourlyAvailabilityData')
          ..add('primaryOperator', primaryOperator)
          ..add('additionalOperator', additionalOperator)
          ..add('availableSlots', availableSlots)
          ..add('totalSlotsAvailable', totalSlotsAvailable)
          ..add('morningSlotsCount', morningSlotsCount)
          ..add('afternoonSlotsCount', afternoonSlotsCount)
          ..add('searchDate', searchDate)
          ..add('searchStrategy', searchStrategy))
        .toString();
  }
}

class DualOperatorsHourlyAvailabilityDataBuilder
    implements
        Builder<DualOperatorsHourlyAvailabilityData,
            DualOperatorsHourlyAvailabilityDataBuilder> {
  _$DualOperatorsHourlyAvailabilityData? _$v;

  DualOperatorsOperatorDataBuilder? _primaryOperator;
  DualOperatorsOperatorDataBuilder get primaryOperator =>
      _$this._primaryOperator ??= DualOperatorsOperatorDataBuilder();
  set primaryOperator(DualOperatorsOperatorDataBuilder? primaryOperator) =>
      _$this._primaryOperator = primaryOperator;

  DualOperatorsOperatorDataBuilder? _additionalOperator;
  DualOperatorsOperatorDataBuilder get additionalOperator =>
      _$this._additionalOperator ??= DualOperatorsOperatorDataBuilder();
  set additionalOperator(
          DualOperatorsOperatorDataBuilder? additionalOperator) =>
      _$this._additionalOperator = additionalOperator;

  ListBuilder<DualOperatorsSlot>? _availableSlots;
  ListBuilder<DualOperatorsSlot> get availableSlots =>
      _$this._availableSlots ??= ListBuilder<DualOperatorsSlot>();
  set availableSlots(ListBuilder<DualOperatorsSlot>? availableSlots) =>
      _$this._availableSlots = availableSlots;

  int? _totalSlotsAvailable;
  int? get totalSlotsAvailable => _$this._totalSlotsAvailable;
  set totalSlotsAvailable(int? totalSlotsAvailable) =>
      _$this._totalSlotsAvailable = totalSlotsAvailable;

  int? _morningSlotsCount;
  int? get morningSlotsCount => _$this._morningSlotsCount;
  set morningSlotsCount(int? morningSlotsCount) =>
      _$this._morningSlotsCount = morningSlotsCount;

  int? _afternoonSlotsCount;
  int? get afternoonSlotsCount => _$this._afternoonSlotsCount;
  set afternoonSlotsCount(int? afternoonSlotsCount) =>
      _$this._afternoonSlotsCount = afternoonSlotsCount;

  Date? _searchDate;
  Date? get searchDate => _$this._searchDate;
  set searchDate(Date? searchDate) => _$this._searchDate = searchDate;

  String? _searchStrategy;
  String? get searchStrategy => _$this._searchStrategy;
  set searchStrategy(String? searchStrategy) =>
      _$this._searchStrategy = searchStrategy;

  DualOperatorsHourlyAvailabilityDataBuilder() {
    DualOperatorsHourlyAvailabilityData._defaults(this);
  }

  DualOperatorsHourlyAvailabilityDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryOperator = $v.primaryOperator.toBuilder();
      _additionalOperator = $v.additionalOperator.toBuilder();
      _availableSlots = $v.availableSlots.toBuilder();
      _totalSlotsAvailable = $v.totalSlotsAvailable;
      _morningSlotsCount = $v.morningSlotsCount;
      _afternoonSlotsCount = $v.afternoonSlotsCount;
      _searchDate = $v.searchDate;
      _searchStrategy = $v.searchStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DualOperatorsHourlyAvailabilityData other) {
    _$v = other as _$DualOperatorsHourlyAvailabilityData;
  }

  @override
  void update(
      void Function(DualOperatorsHourlyAvailabilityDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DualOperatorsHourlyAvailabilityData build() => _build();

  _$DualOperatorsHourlyAvailabilityData _build() {
    _$DualOperatorsHourlyAvailabilityData _$result;
    try {
      _$result = _$v ??
          _$DualOperatorsHourlyAvailabilityData._(
            primaryOperator: primaryOperator.build(),
            additionalOperator: additionalOperator.build(),
            availableSlots: availableSlots.build(),
            totalSlotsAvailable: BuiltValueNullFieldError.checkNotNull(
                totalSlotsAvailable,
                r'DualOperatorsHourlyAvailabilityData',
                'totalSlotsAvailable'),
            morningSlotsCount: BuiltValueNullFieldError.checkNotNull(
                morningSlotsCount,
                r'DualOperatorsHourlyAvailabilityData',
                'morningSlotsCount'),
            afternoonSlotsCount: BuiltValueNullFieldError.checkNotNull(
                afternoonSlotsCount,
                r'DualOperatorsHourlyAvailabilityData',
                'afternoonSlotsCount'),
            searchDate: BuiltValueNullFieldError.checkNotNull(searchDate,
                r'DualOperatorsHourlyAvailabilityData', 'searchDate'),
            searchStrategy: BuiltValueNullFieldError.checkNotNull(
                searchStrategy,
                r'DualOperatorsHourlyAvailabilityData',
                'searchStrategy'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'primaryOperator';
        primaryOperator.build();
        _$failedField = 'additionalOperator';
        additionalOperator.build();
        _$failedField = 'availableSlots';
        availableSlots.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'DualOperatorsHourlyAvailabilityData',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
