// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_cancel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubscriptionCancel extends SubscriptionCancel {
  @override
  final String notes;

  factory _$SubscriptionCancel(
          [void Function(SubscriptionCancelBuilder)? updates]) =>
      (SubscriptionCancelBuilder()..update(updates))._build();

  _$SubscriptionCancel._({required this.notes}) : super._();
  @override
  SubscriptionCancel rebuild(
          void Function(SubscriptionCancelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubscriptionCancelBuilder toBuilder() =>
      SubscriptionCancelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscriptionCancel && notes == other.notes;
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
    return (newBuiltValueToStringHelper(r'SubscriptionCancel')
          ..add('notes', notes))
        .toString();
  }
}

class SubscriptionCancelBuilder
    implements Builder<SubscriptionCancel, SubscriptionCancelBuilder> {
  _$SubscriptionCancel? _$v;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  SubscriptionCancelBuilder() {
    SubscriptionCancel._defaults(this);
  }

  SubscriptionCancelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscriptionCancel other) {
    _$v = other as _$SubscriptionCancel;
  }

  @override
  void update(void Function(SubscriptionCancelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubscriptionCancel build() => _build();

  _$SubscriptionCancel _build() {
    final _$result = _$v ??
        _$SubscriptionCancel._(
          notes: BuiltValueNullFieldError.checkNotNull(
              notes, r'SubscriptionCancel', 'notes'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
