// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'afternoon_hours.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AfternoonHours extends AfternoonHours {
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

  factory _$AfternoonHours([void Function(AfternoonHoursBuilder)? updates]) =>
      (AfternoonHoursBuilder()..update(updates))._build();

  _$AfternoonHours._(
      {required this.isOpen,
      this.openingTime,
      this.closingTime,
      required this.status,
      required this.isSpecial})
      : super._();
  @override
  AfternoonHours rebuild(void Function(AfternoonHoursBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AfternoonHoursBuilder toBuilder() => AfternoonHoursBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AfternoonHours &&
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
    return (newBuiltValueToStringHelper(r'AfternoonHours')
          ..add('isOpen', isOpen)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('status', status)
          ..add('isSpecial', isSpecial))
        .toString();
  }
}

class AfternoonHoursBuilder
    implements Builder<AfternoonHours, AfternoonHoursBuilder> {
  _$AfternoonHours? _$v;

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

  AfternoonHoursBuilder() {
    AfternoonHours._defaults(this);
  }

  AfternoonHoursBuilder get _$this {
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
  void replace(AfternoonHours other) {
    _$v = other as _$AfternoonHours;
  }

  @override
  void update(void Function(AfternoonHoursBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AfternoonHours build() => _build();

  _$AfternoonHours _build() {
    final _$result = _$v ??
        _$AfternoonHours._(
          isOpen: BuiltValueNullFieldError.checkNotNull(
              isOpen, r'AfternoonHours', 'isOpen'),
          openingTime: openingTime,
          closingTime: closingTime,
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'AfternoonHours', 'status'),
          isSpecial: BuiltValueNullFieldError.checkNotNull(
              isSpecial, r'AfternoonHours', 'isSpecial'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
