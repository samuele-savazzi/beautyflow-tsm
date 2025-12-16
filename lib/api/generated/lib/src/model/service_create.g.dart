// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceCreate extends ServiceCreate {
  @override
  final GeneralInfo generalInfo;
  @override
  final Map<String, dynamic>? questions;
  @override
  final Map<String, dynamic>? regularCustomerQuestions;
  @override
  final String serviceType;
  @override
  final BuiltList<StepCreate> times;
  @override
  final BuiltList<BuiltMap<String, Map<String, dynamic>?>>? phases;

  factory _$ServiceCreate([void Function(ServiceCreateBuilder)? updates]) =>
      (ServiceCreateBuilder()..update(updates))._build();

  _$ServiceCreate._(
      {required this.generalInfo,
      this.questions,
      this.regularCustomerQuestions,
      required this.serviceType,
      required this.times,
      this.phases})
      : super._();
  @override
  ServiceCreate rebuild(void Function(ServiceCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceCreateBuilder toBuilder() => ServiceCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceCreate &&
        generalInfo == other.generalInfo &&
        questions == other.questions &&
        regularCustomerQuestions == other.regularCustomerQuestions &&
        serviceType == other.serviceType &&
        times == other.times &&
        phases == other.phases;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, generalInfo.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, regularCustomerQuestions.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, times.hashCode);
    _$hash = $jc(_$hash, phases.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceCreate')
          ..add('generalInfo', generalInfo)
          ..add('questions', questions)
          ..add('regularCustomerQuestions', regularCustomerQuestions)
          ..add('serviceType', serviceType)
          ..add('times', times)
          ..add('phases', phases))
        .toString();
  }
}

class ServiceCreateBuilder
    implements Builder<ServiceCreate, ServiceCreateBuilder> {
  _$ServiceCreate? _$v;

  GeneralInfoBuilder? _generalInfo;
  GeneralInfoBuilder get generalInfo =>
      _$this._generalInfo ??= GeneralInfoBuilder();
  set generalInfo(GeneralInfoBuilder? generalInfo) =>
      _$this._generalInfo = generalInfo;

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

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(String? serviceType) => _$this._serviceType = serviceType;

  ListBuilder<StepCreate>? _times;
  ListBuilder<StepCreate> get times =>
      _$this._times ??= ListBuilder<StepCreate>();
  set times(ListBuilder<StepCreate>? times) => _$this._times = times;

  ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? _phases;
  ListBuilder<BuiltMap<String, Map<String, dynamic>?>> get phases =>
      _$this._phases ??= ListBuilder<BuiltMap<String, Map<String, dynamic>?>>();
  set phases(ListBuilder<BuiltMap<String, Map<String, dynamic>?>>? phases) =>
      _$this._phases = phases;

  ServiceCreateBuilder() {
    ServiceCreate._defaults(this);
  }

  ServiceCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _generalInfo = $v.generalInfo.toBuilder();
      _questions = $v.questions;
      _regularCustomerQuestions = $v.regularCustomerQuestions;
      _serviceType = $v.serviceType;
      _times = $v.times.toBuilder();
      _phases = $v.phases?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceCreate other) {
    _$v = other as _$ServiceCreate;
  }

  @override
  void update(void Function(ServiceCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceCreate build() => _build();

  _$ServiceCreate _build() {
    _$ServiceCreate _$result;
    try {
      _$result = _$v ??
          _$ServiceCreate._(
            generalInfo: generalInfo.build(),
            questions: questions,
            regularCustomerQuestions: regularCustomerQuestions,
            serviceType: BuiltValueNullFieldError.checkNotNull(
                serviceType, r'ServiceCreate', 'serviceType'),
            times: times.build(),
            phases: _phases?.build(),
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
            r'ServiceCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
