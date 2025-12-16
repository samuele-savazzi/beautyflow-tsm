// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation_ready_to_book.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsultationReadyToBook extends ConsultationReadyToBook {
  @override
  final Map<String, dynamic>? serviceStepsSnapshot;
  @override
  final String finalDescription;
  @override
  final bool? markAsRegular;

  factory _$ConsultationReadyToBook(
          [void Function(ConsultationReadyToBookBuilder)? updates]) =>
      (ConsultationReadyToBookBuilder()..update(updates))._build();

  _$ConsultationReadyToBook._(
      {this.serviceStepsSnapshot,
      required this.finalDescription,
      this.markAsRegular})
      : super._();
  @override
  ConsultationReadyToBook rebuild(
          void Function(ConsultationReadyToBookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsultationReadyToBookBuilder toBuilder() =>
      ConsultationReadyToBookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsultationReadyToBook &&
        serviceStepsSnapshot == other.serviceStepsSnapshot &&
        finalDescription == other.finalDescription &&
        markAsRegular == other.markAsRegular;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceStepsSnapshot.hashCode);
    _$hash = $jc(_$hash, finalDescription.hashCode);
    _$hash = $jc(_$hash, markAsRegular.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsultationReadyToBook')
          ..add('serviceStepsSnapshot', serviceStepsSnapshot)
          ..add('finalDescription', finalDescription)
          ..add('markAsRegular', markAsRegular))
        .toString();
  }
}

class ConsultationReadyToBookBuilder
    implements
        Builder<ConsultationReadyToBook, ConsultationReadyToBookBuilder> {
  _$ConsultationReadyToBook? _$v;

  Map<String, dynamic>? _serviceStepsSnapshot;
  Map<String, dynamic>? get serviceStepsSnapshot =>
      _$this._serviceStepsSnapshot;
  set serviceStepsSnapshot(Map<String, dynamic>? serviceStepsSnapshot) =>
      _$this._serviceStepsSnapshot = serviceStepsSnapshot;

  String? _finalDescription;
  String? get finalDescription => _$this._finalDescription;
  set finalDescription(String? finalDescription) =>
      _$this._finalDescription = finalDescription;

  bool? _markAsRegular;
  bool? get markAsRegular => _$this._markAsRegular;
  set markAsRegular(bool? markAsRegular) =>
      _$this._markAsRegular = markAsRegular;

  ConsultationReadyToBookBuilder() {
    ConsultationReadyToBook._defaults(this);
  }

  ConsultationReadyToBookBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceStepsSnapshot = $v.serviceStepsSnapshot;
      _finalDescription = $v.finalDescription;
      _markAsRegular = $v.markAsRegular;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsultationReadyToBook other) {
    _$v = other as _$ConsultationReadyToBook;
  }

  @override
  void update(void Function(ConsultationReadyToBookBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsultationReadyToBook build() => _build();

  _$ConsultationReadyToBook _build() {
    final _$result = _$v ??
        _$ConsultationReadyToBook._(
          serviceStepsSnapshot: serviceStepsSnapshot,
          finalDescription: BuiltValueNullFieldError.checkNotNull(
              finalDescription, r'ConsultationReadyToBook', 'finalDescription'),
          markAsRegular: markAsRegular,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
