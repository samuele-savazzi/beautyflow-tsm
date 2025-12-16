// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_reactivate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionReactivate extends SubscriptionReactivate {
  @override
  final String? notes;

  factory _$SubscriptionReactivate(
          [void Function(SubscriptionReactivateBuilder)? updates]) =>
      (SubscriptionReactivateBuilder()..update(updates))._build();

  _$SubscriptionReactivate._({this.notes}) : super._();
  @override
  SubscriptionReactivate rebuild(
          void Function(SubscriptionReactivateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionReactivateBuilder toBuilder() =>
      SubscriptionReactivateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionReactivate && notes == other.notes;
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
    return (newBuiltValueToStringHelper(r'SubscriptionReactivate')
          ..add('notes', notes))
        .toString();
  }
}

class SubscriptionReactivateBuilder
    implements Builder<SubscriptionReactivate, SubscriptionReactivateBuilder> {
  _$SubscriptionReactivate? _$v;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SubscriptionReactivateBuilder() {
    SubscriptionReactivate._defaults(this);
  }

  SubscriptionReactivateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionReactivate other) {
    _$v = other as _$SubscriptionReactivate;
  }

  @override
  void update(void Function(SubscriptionReactivateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionReactivate build() => _build();

  _$SubscriptionReactivate _build() {
    final _$result = _$v ??
        _$SubscriptionReactivate._(
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
