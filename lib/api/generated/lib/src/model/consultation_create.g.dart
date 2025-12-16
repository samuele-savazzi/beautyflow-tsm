// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationCreate extends ConsultationCreate {
  @override
  final int operatorId;
  @override
  final int serviceId;
  @override
  final Date bookingDate;
  @override
  final String startTime;
  @override
  final Map<String, dynamic>? answers;

  factory _$ConsultationCreate(
          [void Function(ConsultationCreateBuilder)? updates]) =>
      (ConsultationCreateBuilder()..update(updates))._build();

  _$ConsultationCreate._(
      {required this.operatorId,
      required this.serviceId,
      required this.bookingDate,
      required this.startTime,
      this.answers})
      : super._();
  @override
  ConsultationCreate rebuild(
          void Function(ConsultationCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationCreateBuilder toBuilder() =>
      ConsultationCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationCreate &&
        operatorId == other.operatorId &&
        serviceId == other.serviceId &&
        bookingDate == other.bookingDate &&
        startTime == other.startTime &&
        answers == other.answers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, bookingDate.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationCreate')
          ..add('operatorId', operatorId)
          ..add('serviceId', serviceId)
          ..add('bookingDate', bookingDate)
          ..add('startTime', startTime)
          ..add('answers', answers))
        .toString();
  }
}

class ConsultationCreateBuilder
    implements Builder<ConsultationCreate, ConsultationCreateBuilder> {
  _$ConsultationCreate? _$v;

  int? _operatorId;
  int? get operatorId => _$this._operatorId;
  set operatorId(int? operatorId) => _$this._operatorId = operatorId;

  int? _serviceId;
  int? get serviceId => _$this._serviceId;
  set serviceId(int? serviceId) => _$this._serviceId = serviceId;

  Date? _bookingDate;
  Date? get bookingDate => _$this._bookingDate;
  set bookingDate(Date? bookingDate) => _$this._bookingDate = bookingDate;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  Map<String, dynamic>? _answers;
  Map<String, dynamic>? get answers => _$this._answers;
  set answers(Map<String, dynamic>? answers) => _$this._answers = answers;

  ConsultationCreateBuilder() {
    ConsultationCreate._defaults(this);
  }

  ConsultationCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operatorId = $v.operatorId;
      _serviceId = $v.serviceId;
      _bookingDate = $v.bookingDate;
      _startTime = $v.startTime;
      _answers = $v.answers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationCreate other) {
    _$v = other as _$ConsultationCreate;
  }

  @override
  void update(void Function(ConsultationCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationCreate build() => _build();

  _$ConsultationCreate _build() {
    final _$result = _$v ??
        _$ConsultationCreate._(
          operatorId: BuiltValueNullFieldError.checkNotNull(
              operatorId, r'ConsultationCreate', 'operatorId'),
          serviceId: BuiltValueNullFieldError.checkNotNull(
              serviceId, r'ConsultationCreate', 'serviceId'),
          bookingDate: BuiltValueNullFieldError.checkNotNull(
              bookingDate, r'ConsultationCreate', 'bookingDate'),
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'ConsultationCreate', 'startTime'),
          answers: answers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
