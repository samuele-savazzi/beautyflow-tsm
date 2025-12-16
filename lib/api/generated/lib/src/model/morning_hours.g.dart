// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morning_hours.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MorningHours extends MorningHours {
  @override
  final bool isOpen;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final String status;
  @override
  final bool isSpecial;

  factory _$MorningHours([void Function(MorningHoursBuilder)? updates]) =>
      (MorningHoursBuilder()..update(updates))._build();

  _$MorningHours._(
      {required this.isOpen,
      this.openingTime,
      this.closingTime,
      required this.status,
      required this.isSpecial})
      : super._();
  @override
  MorningHours rebuild(void Function(MorningHoursBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MorningHoursBuilder toBuilder() => MorningHoursBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MorningHours &&
        isOpen == other.isOpen &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        status == other.status &&
        isSpecial == other.isSpecial;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isSpecial.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MorningHours')
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('status', status)
          ..add('isSpecial', isSpecial))
        .toString();
  }
}

class MorningHoursBuilder
    implements Builder<MorningHours, MorningHoursBuilder> {
  _$MorningHours? _$v;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isSpecial;
  bool? get isSpecial => _$this._isSpecial;
  set isSpecial(bool? isSpecial) => _$this._isSpecial = isSpecial;

  MorningHoursBuilder() {
    MorningHours._defaults(this);
  }

  MorningHoursBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isOpen = $v.isOpen;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _status = $v.status;
      _isSpecial = $v.isSpecial;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MorningHours other) {
    _$v = other as _$MorningHours;
  }

  @override
  void update(void Function(MorningHoursBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MorningHours build() => _build();

  _$MorningHours _build() {
    final _$result = _$v ??
        _$MorningHours._(
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'MorningHours', 'isOpen'),
          openingTime: openingTime,
          closingTime: closingTime,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'MorningHours', 'status'),
          isSpecial: BuiltValueNullFieldError.checkNotNull(
              isSpecial, r'MorningHours', 'isSpecial'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
