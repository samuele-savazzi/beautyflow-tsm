// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_opening_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpecialOpeningInfo extends SpecialOpeningInfo {
  @override
  final int id;
  @override
  final Date date;
  @override
  final String reason;
  @override
  final AreaInfo area;

  factory _$SpecialOpeningInfo(
          [void Function(SpecialOpeningInfoBuilder)? updates]) =>
      (SpecialOpeningInfoBuilder()..update(updates))._build();

  _$SpecialOpeningInfo._(
      {required this.id,
      required this.date,
      required this.reason,
      required this.area})
      : super._();
  @override
  SpecialOpeningInfo rebuild(
          void Function(SpecialOpeningInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpecialOpeningInfoBuilder toBuilder() =>
      SpecialOpeningInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpecialOpeningInfo &&
        id == other.id &&
        date == other.date &&
        reason == other.reason &&
        area == other.area;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, area.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpecialOpeningInfo')
          ..add('id', id)
          ..add('date', date)
          ..add('reason', reason)
          ..add('area', area))
        .toString();
  }
}

class SpecialOpeningInfoBuilder
    implements Builder<SpecialOpeningInfo, SpecialOpeningInfoBuilder> {
  _$SpecialOpeningInfo? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  AreaInfoBuilder? _area;
  AreaInfoBuilder get area => _$this._area ??= AreaInfoBuilder();
  set area(AreaInfoBuilder? area) => _$this._area = area;

  SpecialOpeningInfoBuilder() {
    SpecialOpeningInfo._defaults(this);
  }

  SpecialOpeningInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _reason = $v.reason;
      _area = $v.area.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpecialOpeningInfo other) {
    _$v = other as _$SpecialOpeningInfo;
  }

  @override
  void update(void Function(SpecialOpeningInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpecialOpeningInfo build() => _build();

  _$SpecialOpeningInfo _build() {
    _$SpecialOpeningInfo _$result;
    try {
      _$result = _$v ??
          _$SpecialOpeningInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SpecialOpeningInfo', 'id'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'SpecialOpeningInfo', 'date'),
            reason: BuiltValueNullFieldError.checkNotNull(
                reason, r'SpecialOpeningInfo', 'reason'),
            area: area.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        area.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SpecialOpeningInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
