// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUpdate extends ServiceUpdate {
  @override
  final GeneralInfoUpdate generalInfo;
  @override
  final String serviceType;
  @override
  final BuiltList<StepUpdate> times;
  @override
  final BuiltList<int>? phases;
  @override
  final Map<String, dynamic>? questions;
  @override
  final Map<String, dynamic>? regularCustomerQuestions;

  factory _$ServiceUpdate([void Function(ServiceUpdateBuilder)? updates]) =>
      (ServiceUpdateBuilder()..update(updates))._build();

  _$ServiceUpdate._(
      {required this.generalInfo,
      required this.serviceType,
      required this.times,
      this.phases,
      this.questions,
      this.regularCustomerQuestions})
      : super._();
  @override
  ServiceUpdate rebuild(void Function(ServiceUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceUpdateBuilder toBuilder() => ServiceUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceUpdate &&
        generalInfo == other.generalInfo &&
        serviceType == other.serviceType &&
        times == other.times &&
        phases == other.phases &&
        questions == other.questions &&
        regularCustomerQuestions == other.regularCustomerQuestions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generalInfo.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, times.hashCode);
    _$hash = $jc(_$hash, phases.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, regularCustomerQuestions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceUpdate')
          ..add('generalInfo', generalInfo)
          ..add('serviceType', serviceType)
          ..add('times', times)
          ..add('phases', phases)
          ..add('questions', questions)
          ..add('regularCustomerQuestions', regularCustomerQuestions))
        .toString();
  }
}

class ServiceUpdateBuilder
    implements Builder<ServiceUpdate, ServiceUpdateBuilder> {
  _$ServiceUpdate? _$v;

  GeneralInfoUpdateBuilder? _generalInfo;
  GeneralInfoUpdateBuilder get generalInfo =>
      _$this._generalInfo ??= GeneralInfoUpdateBuilder();
  set generalInfo(GeneralInfoUpdateBuilder? generalInfo) =>
      _$this._generalInfo = generalInfo;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(String? serviceType) => _$this._serviceType = serviceType;

  ListBuilder<StepUpdate>? _times;
  ListBuilder<StepUpdate> get times =>
      _$this._times ??= ListBuilder<StepUpdate>();
  set times(ListBuilder<StepUpdate>? times) => _$this._times = times;

  ListBuilder<int>? _phases;
  ListBuilder<int> get phases => _$this._phases ??= ListBuilder<int>();
  set phases(ListBuilder<int>? phases) => _$this._phases = phases;

  Map<String, dynamic>? _questions;
  Map<String, dynamic>? get questions => _$this._questions;
  set questions(Map<String, dynamic>? questions) =>
      _$this._questions = questions;

  Map<String, dynamic>? _regularCustomerQuestions;
  Map<String, dynamic>? get regularCustomerQuestions =>
      _$this._regularCustomerQuestions;
  set regularCustomerQuestions(
          Map<String, dynamic>? regularCustomerQuestions) =>
      _$this._regularCustomerQuestions = regularCustomerQuestions;

  ServiceUpdateBuilder() {
    ServiceUpdate._defaults(this);
  }

  ServiceUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generalInfo = $v.generalInfo.toBuilder();
      _serviceType = $v.serviceType;
      _times = $v.times.toBuilder();
      _phases = $v.phases?.toBuilder();
      _questions = $v.questions;
      _regularCustomerQuestions = $v.regularCustomerQuestions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceUpdate other) {
    _$v = other as _$ServiceUpdate;
  }

  @override
  void update(void Function(ServiceUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceUpdate build() => _build();

  _$ServiceUpdate _build() {
    _$ServiceUpdate _$result;
    try {
      _$result = _$v ??
          _$ServiceUpdate._(
            generalInfo: generalInfo.build(),
            serviceType: BuiltValueNullFieldError.checkNotNull(
                serviceType, r'ServiceUpdate', 'serviceType'),
            times: times.build(),
            phases: _phases?.build(),
            questions: questions,
            regularCustomerQuestions: regularCustomerQuestions,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'generalInfo';
        generalInfo.build();

        _$failedField = 'times';
        times.build();
        _$failedField = 'phases';
        _phases?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ServiceUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
