// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workstation_operator_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkstationOperatorList extends WorkstationOperatorList {
  @override
  final int id;

  factory _$WorkstationOperatorList(
          [void Function(WorkstationOperatorListBuilder)? updates]) =>
      (WorkstationOperatorListBuilder()..update(updates))._build();

  _$WorkstationOperatorList._({required this.id}) : super._();
  @override
  WorkstationOperatorList rebuild(
          void Function(WorkstationOperatorListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkstationOperatorListBuilder toBuilder() =>
      WorkstationOperatorListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkstationOperatorList && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkstationOperatorList')
          ..add('id', id))
        .toString();
  }
}

class WorkstationOperatorListBuilder
    implements
        Builder<WorkstationOperatorList, WorkstationOperatorListBuilder> {
  _$WorkstationOperatorList? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  WorkstationOperatorListBuilder() {
    WorkstationOperatorList._defaults(this);
  }

  WorkstationOperatorListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkstationOperatorList other) {
    _$v = other as _$WorkstationOperatorList;
  }

  @override
  void update(void Function(WorkstationOperatorListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkstationOperatorList build() => _build();

  _$WorkstationOperatorList _build() {
    final _$result = _$v ??
        _$WorkstationOperatorList._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'WorkstationOperatorList', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
