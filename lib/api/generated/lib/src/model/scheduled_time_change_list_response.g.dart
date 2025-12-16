// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_time_change_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduledTimeChangeListResponse
    extends ScheduledTimeChangeListResponse {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<ScheduledTimeChangeResponse> results;

  factory _$ScheduledTimeChangeListResponse(
          [void Function(ScheduledTimeChangeListResponseBuilder)? updates]) =>
      (ScheduledTimeChangeListResponseBuilder()..update(updates))._build();

  _$ScheduledTimeChangeListResponse._(
      {required this.count, this.next, this.previous, required this.results})
      : super._();
  @override
  ScheduledTimeChangeListResponse rebuild(
          void Function(ScheduledTimeChangeListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduledTimeChangeListResponseBuilder toBuilder() =>
      ScheduledTimeChangeListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduledTimeChangeListResponse &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, next.hashCode);
    _$hash = $jc(_$hash, previous.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduledTimeChangeListResponse')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class ScheduledTimeChangeListResponseBuilder
    implements
        Builder<ScheduledTimeChangeListResponse,
            ScheduledTimeChangeListResponseBuilder> {
  _$ScheduledTimeChangeListResponse? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<ScheduledTimeChangeResponse>? _results;
  ListBuilder<ScheduledTimeChangeResponse> get results =>
      _$this._results ??= ListBuilder<ScheduledTimeChangeResponse>();
  set results(ListBuilder<ScheduledTimeChangeResponse>? results) =>
      _$this._results = results;

  ScheduledTimeChangeListResponseBuilder() {
    ScheduledTimeChangeListResponse._defaults(this);
  }

  ScheduledTimeChangeListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduledTimeChangeListResponse other) {
    _$v = other as _$ScheduledTimeChangeListResponse;
  }

  @override
  void update(void Function(ScheduledTimeChangeListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduledTimeChangeListResponse build() => _build();

  _$ScheduledTimeChangeListResponse _build() {
    _$ScheduledTimeChangeListResponse _$result;
    try {
      _$result = _$v ??
          _$ScheduledTimeChangeListResponse._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, r'ScheduledTimeChangeListResponse', 'count'),
            next: next,
            previous: previous,
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ScheduledTimeChangeListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
