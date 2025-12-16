// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HolidayCreated extends HolidayCreated {
  @override
  final BuiltList<int> ids;
  @override
  final String message;

  factory _$HolidayCreated([void Function(HolidayCreatedBuilder)? updates]) =>
      (HolidayCreatedBuilder()..update(updates))._build();

  _$HolidayCreated._({required this.ids, required this.message}) : super._();
  @override
  HolidayCreated rebuild(void Function(HolidayCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HolidayCreatedBuilder toBuilder() => HolidayCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HolidayCreated &&
        ids == other.ids &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ids.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HolidayCreated')
          ..add('ids', ids)
          ..add('message', message))
        .toString();
  }
}

class HolidayCreatedBuilder
    implements Builder<HolidayCreated, HolidayCreatedBuilder> {
  _$HolidayCreated? _$v;

  ListBuilder<int>? _ids;
  ListBuilder<int> get ids => _$this._ids ??= ListBuilder<int>();
  set ids(ListBuilder<int>? ids) => _$this._ids = ids;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HolidayCreatedBuilder() {
    HolidayCreated._defaults(this);
  }

  HolidayCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ids = $v.ids.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HolidayCreated other) {
    _$v = other as _$HolidayCreated;
  }

  @override
  void update(void Function(HolidayCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HolidayCreated build() => _build();

  _$HolidayCreated _build() {
    _$HolidayCreated _$result;
    try {
      _$result = _$v ??
          _$HolidayCreated._(
            ids: ids.build(),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'HolidayCreated', 'message'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ids';
        ids.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'HolidayCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
