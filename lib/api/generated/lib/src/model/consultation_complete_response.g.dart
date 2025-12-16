// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_complete_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationCompleteResponse extends ConsultationCompleteResponse {
  @override
  final int id;
  @override
  final String status;
  @override
  final String statusDisplay;
  @override
  final DateTime completedAt;

  factory _$ConsultationCompleteResponse(
          [void Function(ConsultationCompleteResponseBuilder)? updates]) =>
      (ConsultationCompleteResponseBuilder()..update(updates))._build();

  _$ConsultationCompleteResponse._(
      {required this.id,
      required this.status,
      required this.statusDisplay,
      required this.completedAt})
      : super._();
  @override
  ConsultationCompleteResponse rebuild(
          void Function(ConsultationCompleteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationCompleteResponseBuilder toBuilder() =>
      ConsultationCompleteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationCompleteResponse &&
        id == other.id &&
        status == other.status &&
        statusDisplay == other.statusDisplay &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusDisplay.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationCompleteResponse')
          ..add('id', id)
          ..add('status', status)
          ..add('statusDisplay', statusDisplay)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class ConsultationCompleteResponseBuilder
    implements
        Builder<ConsultationCompleteResponse,
            ConsultationCompleteResponseBuilder> {
  _$ConsultationCompleteResponse? _$v;

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

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  ConsultationCompleteResponseBuilder() {
    ConsultationCompleteResponse._defaults(this);
  }

  ConsultationCompleteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _status = $v.status;
      _statusDisplay = $v.statusDisplay;
      _completedAt = $v.completedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationCompleteResponse other) {
    _$v = other as _$ConsultationCompleteResponse;
  }

  @override
  void update(void Function(ConsultationCompleteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationCompleteResponse build() => _build();

  _$ConsultationCompleteResponse _build() {
    final _$result = _$v ??
        _$ConsultationCompleteResponse._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ConsultationCompleteResponse', 'id'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsultationCompleteResponse', 'status'),
          statusDisplay: BuiltValueNullFieldError.checkNotNull(
              statusDisplay, r'ConsultationCompleteResponse', 'statusDisplay'),
          completedAt: BuiltValueNullFieldError.checkNotNull(
              completedAt, r'ConsultationCompleteResponse', 'completedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
