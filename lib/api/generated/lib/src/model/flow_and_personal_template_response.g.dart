// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_and_personal_template_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowAndPersonalTemplateResponse
    extends FlowAndPersonalTemplateResponse {
  @override
  final BuiltList<FlowTemplateList> flowsTemplate;
  @override
  final BuiltList<PersonalTemplateList> personalsTemplate;

  factory _$FlowAndPersonalTemplateResponse(
          [void Function(FlowAndPersonalTemplateResponseBuilder)? updates]) =>
      (FlowAndPersonalTemplateResponseBuilder()..update(updates))._build();

  _$FlowAndPersonalTemplateResponse._(
      {required this.flowsTemplate, required this.personalsTemplate})
      : super._();
  @override
  FlowAndPersonalTemplateResponse rebuild(
          void Function(FlowAndPersonalTemplateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowAndPersonalTemplateResponseBuilder toBuilder() =>
      FlowAndPersonalTemplateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowAndPersonalTemplateResponse &&
        flowsTemplate == other.flowsTemplate &&
        personalsTemplate == other.personalsTemplate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flowsTemplate.hashCode);
    _$hash = $jc(_$hash, personalsTemplate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowAndPersonalTemplateResponse')
          ..add('flowsTemplate', flowsTemplate)
          ..add('personalsTemplate', personalsTemplate))
        .toString();
  }
}

class FlowAndPersonalTemplateResponseBuilder
    implements
        Builder<FlowAndPersonalTemplateResponse,
            FlowAndPersonalTemplateResponseBuilder> {
  _$FlowAndPersonalTemplateResponse? _$v;

  ListBuilder<FlowTemplateList>? _flowsTemplate;
  ListBuilder<FlowTemplateList> get flowsTemplate =>
      _$this._flowsTemplate ??= ListBuilder<FlowTemplateList>();
  set flowsTemplate(ListBuilder<FlowTemplateList>? flowsTemplate) =>
      _$this._flowsTemplate = flowsTemplate;

  ListBuilder<PersonalTemplateList>? _personalsTemplate;
  ListBuilder<PersonalTemplateList> get personalsTemplate =>
      _$this._personalsTemplate ??= ListBuilder<PersonalTemplateList>();
  set personalsTemplate(ListBuilder<PersonalTemplateList>? personalsTemplate) =>
      _$this._personalsTemplate = personalsTemplate;

  FlowAndPersonalTemplateResponseBuilder() {
    FlowAndPersonalTemplateResponse._defaults(this);
  }

  FlowAndPersonalTemplateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flowsTemplate = $v.flowsTemplate.toBuilder();
      _personalsTemplate = $v.personalsTemplate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowAndPersonalTemplateResponse other) {
    _$v = other as _$FlowAndPersonalTemplateResponse;
  }

  @override
  void update(void Function(FlowAndPersonalTemplateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowAndPersonalTemplateResponse build() => _build();

  _$FlowAndPersonalTemplateResponse _build() {
    _$FlowAndPersonalTemplateResponse _$result;
    try {
      _$result = _$v ??
          _$FlowAndPersonalTemplateResponse._(
            flowsTemplate: flowsTemplate.build(),
            personalsTemplate: personalsTemplate.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flowsTemplate';
        flowsTemplate.build();
        _$failedField = 'personalsTemplate';
        personalsTemplate.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FlowAndPersonalTemplateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
