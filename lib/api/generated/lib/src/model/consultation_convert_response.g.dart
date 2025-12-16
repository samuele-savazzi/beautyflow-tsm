// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_convert_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationConvertResponse extends ConsultationConvertResponse {
  @override
  final int id;
  @override
  final String status;
  @override
  final String statusDisplay;

  factory _$ConsultationConvertResponse(
          [void Function(ConsultationConvertResponseBuilder)? updates]) =>
      (ConsultationConvertResponseBuilder()..update(updates))._build();

  _$ConsultationConvertResponse._(
      {required this.id, required this.status, required this.statusDisplay})
      : super._();
  @override
  ConsultationConvertResponse rebuild(
          void Function(ConsultationConvertResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationConvertResponseBuilder toBuilder() =>
      ConsultationConvertResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationConvertResponse &&
        id == other.id &&
        status == other.status &&
        statusDisplay == other.statusDisplay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationConvertResponse')
          ..add('id', id)
          ..add('status', status)
          ..add('statusDisplay', statusDisplay))
        .toString();
  }
}

class ConsultationConvertResponseBuilder
    implements
        Builder<ConsultationConvertResponse,
            ConsultationConvertResponseBuilder> {
  _$ConsultationConvertResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _statusDisplay;
  String? get statusDisplay => _$this._statusDisplay;
  set statusDisplay(String? statusDisplay) =>
      _$this._statusDisplay = statusDisplay;

  ConsultationConvertResponseBuilder() {
    ConsultationConvertResponse._defaults(this);
  }

  ConsultationConvertResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _statusDisplay = $v.statusDisplay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationConvertResponse other) {
    _$v = other as _$ConsultationConvertResponse;
  }

  @override
  void update(void Function(ConsultationConvertResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationConvertResponse build() => _build();

  _$ConsultationConvertResponse _build() {
    final _$result = _$v ??
        _$ConsultationConvertResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationConvertResponse', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsultationConvertResponse', 'status'),
          statusDisplay: BuiltValueNullFieldError.checkNotNull(
              statusDisplay, r'ConsultationConvertResponse', 'statusDisplay'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
