// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_template_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowTemplateList extends FlowTemplateList {
  @override
  final Map<String, dynamic>? template;
  @override
  final String name;
  @override
  final String description;

  factory _$FlowTemplateList(
          [void Function(FlowTemplateListBuilder)? updates]) =>
      (FlowTemplateListBuilder()..update(updates))._build();

  _$FlowTemplateList._(
      {this.template, required this.name, required this.description})
      : super._();
  @override
  FlowTemplateList rebuild(void Function(FlowTemplateListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowTemplateListBuilder toBuilder() =>
      FlowTemplateListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowTemplateList &&
        template == other.template &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowTemplateList')
          ..add('template', template)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class FlowTemplateListBuilder
    implements Builder<FlowTemplateList, FlowTemplateListBuilder> {
  _$FlowTemplateList? _$v;

  Map<String, dynamic>? _template;
  Map<String, dynamic>? get template => _$this._template;
  set template(Map<String, dynamic>? template) => _$this._template = template;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  FlowTemplateListBuilder() {
    FlowTemplateList._defaults(this);
  }

  FlowTemplateListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _template = $v.template;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowTemplateList other) {
    _$v = other as _$FlowTemplateList;
  }

  @override
  void update(void Function(FlowTemplateListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowTemplateList build() => _build();

  _$FlowTemplateList _build() {
    final _$result = _$v ??
        _$FlowTemplateList._(
          template: template,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'FlowTemplateList', 'name'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'FlowTemplateList', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
