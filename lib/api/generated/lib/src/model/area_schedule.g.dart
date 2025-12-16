// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaSchedule extends AreaSchedule {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool mainArea;
  @override
  final BuiltList<AreaOperator> operators;
  @override
  final BuiltList<WorkingDay> workingDays;

  factory _$AreaSchedule([void Function(AreaScheduleBuilder)? updates]) =>
      (AreaScheduleBuilder()..update(updates))._build();

  _$AreaSchedule._(
      {required this.id,
      required this.name,
      required this.mainArea,
      required this.operators,
      required this.workingDays})
      : super._();
  @override
  AreaSchedule rebuild(void Function(AreaScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaScheduleBuilder toBuilder() => AreaScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaSchedule &&
        id == other.id &&
        name == other.name &&
        mainArea == other.mainArea &&
        operators == other.operators &&
        workingDays == other.workingDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, mainArea.hashCode);
    _$hash = $jc(_$hash, operators.hashCode);
    _$hash = $jc(_$hash, workingDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaSchedule')
          ..add('id', id)
          ..add('name', name)
          ..add('mainArea', mainArea)
          ..add('operators', operators)
          ..add('workingDays', workingDays))
        .toString();
  }
}

class AreaScheduleBuilder
    implements Builder<AreaSchedule, AreaScheduleBuilder> {
  _$AreaSchedule? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _mainArea;
  bool? get mainArea => _$this._mainArea;
  set mainArea(bool? mainArea) => _$this._mainArea = mainArea;

  ListBuilder<AreaOperator>? _operators;
  ListBuilder<AreaOperator> get operators =>
      _$this._operators ??= ListBuilder<AreaOperator>();
  set operators(ListBuilder<AreaOperator>? operators) =>
      _$this._operators = operators;

  ListBuilder<WorkingDay>? _workingDays;
  ListBuilder<WorkingDay> get workingDays =>
      _$this._workingDays ??= ListBuilder<WorkingDay>();
  set workingDays(ListBuilder<WorkingDay>? workingDays) =>
      _$this._workingDays = workingDays;

  AreaScheduleBuilder() {
    AreaSchedule._defaults(this);
  }

  AreaScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _mainArea = $v.mainArea;
      _operators = $v.operators.toBuilder();
      _workingDays = $v.workingDays.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaSchedule other) {
    _$v = other as _$AreaSchedule;
  }

  @override
  void update(void Function(AreaScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaSchedule build() => _build();

  _$AreaSchedule _build() {
    _$AreaSchedule _$result;
    try {
      _$result = _$v ??
          _$AreaSchedule._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AreaSchedule', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AreaSchedule', 'name'),
            mainArea: BuiltValueNullFieldError.checkNotNull(
                mainArea, r'AreaSchedule', 'mainArea'),
            operators: operators.build(),
            workingDays: workingDays.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operators';
        operators.build();
        _$failedField = 'workingDays';
        workingDays.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreaSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
