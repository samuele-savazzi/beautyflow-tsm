// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_template_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PersonalTemplateList extends PersonalTemplateList {
  @override
  final Map<String, dynamic>? template;
  @override
  final String name;

  factory _$PersonalTemplateList(
          [void Function(PersonalTemplateListBuilder)? updates]) =>
      (PersonalTemplateListBuilder()..update(updates))._build();

  _$PersonalTemplateList._({this.template, required this.name}) : super._();
  @override
  PersonalTemplateList rebuild(
          void Function(PersonalTemplateListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonalTemplateListBuilder toBuilder() =>
      PersonalTemplateListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalTemplateList &&
        template == other.template &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, template.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonalTemplateList')
          ..add('template', template)
          ..add('name', name))
        .toString();
  }
}

class PersonalTemplateListBuilder
    implements Builder<PersonalTemplateList, PersonalTemplateListBuilder> {
  _$PersonalTemplateList? _$v;

  Map<String, dynamic>? _template;
  Map<String, dynamic>? get template => _$this._template;
  set template(Map<String, dynamic>? template) => _$this._template = template;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PersonalTemplateListBuilder() {
    PersonalTemplateList._defaults(this);
  }

  PersonalTemplateListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _template = $v.template;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonalTemplateList other) {
    _$v = other as _$PersonalTemplateList;
  }

  @override
  void update(void Function(PersonalTemplateListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonalTemplateList build() => _build();

  _$PersonalTemplateList _build() {
    final _$result = _$v ??
        _$PersonalTemplateList._(
          template: template,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PersonalTemplateList', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
