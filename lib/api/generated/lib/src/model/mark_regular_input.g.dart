// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark_regular_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MarkRegularInput extends MarkRegularInput {
  @override
  final String? notes;

  factory _$MarkRegularInput(
          [void Function(MarkRegularInputBuilder)? updates]) =>
      (MarkRegularInputBuilder()..update(updates))._build();

  _$MarkRegularInput._({this.notes}) : super._();
  @override
  MarkRegularInput rebuild(void Function(MarkRegularInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarkRegularInputBuilder toBuilder() =>
      MarkRegularInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarkRegularInput && notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MarkRegularInput')
          ..add('notes', notes))
        .toString();
  }
}

class MarkRegularInputBuilder
    implements Builder<MarkRegularInput, MarkRegularInputBuilder> {
  _$MarkRegularInput? _$v;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  MarkRegularInputBuilder() {
    MarkRegularInput._defaults(this);
  }

  MarkRegularInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarkRegularInput other) {
    _$v = other as _$MarkRegularInput;
  }

  @override
  void update(void Function(MarkRegularInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MarkRegularInput build() => _build();

  _$MarkRegularInput _build() {
    final _$result = _$v ??
        _$MarkRegularInput._(
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
