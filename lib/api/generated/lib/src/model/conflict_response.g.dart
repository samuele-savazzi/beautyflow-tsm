// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflict_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConflictResponse extends ConflictResponse {
  @override
  final String status;
  @override
  final String? message;
  @override
  final BuiltList<Conflict> conflicts;

  factory _$ConflictResponse(
          [void Function(ConflictResponseBuilder)? updates]) =>
      (ConflictResponseBuilder()..update(updates))._build();

  _$ConflictResponse._(
      {required this.status, this.message, required this.conflicts})
      : super._();
  @override
  ConflictResponse rebuild(void Function(ConflictResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConflictResponseBuilder toBuilder() =>
      ConflictResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConflictResponse &&
        status == other.status &&
        message == other.message &&
        conflicts == other.conflicts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, conflicts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConflictResponse')
          ..add('status', status)
          ..add('message', message)
          ..add('conflicts', conflicts))
        .toString();
  }
}

class ConflictResponseBuilder
    implements Builder<ConflictResponse, ConflictResponseBuilder> {
  _$ConflictResponse? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Conflict>? _conflicts;
  ListBuilder<Conflict> get conflicts =>
      _$this._conflicts ??= ListBuilder<Conflict>();
  set conflicts(ListBuilder<Conflict>? conflicts) =>
      _$this._conflicts = conflicts;

  ConflictResponseBuilder() {
    ConflictResponse._defaults(this);
  }

  ConflictResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _conflicts = $v.conflicts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConflictResponse other) {
    _$v = other as _$ConflictResponse;
  }

  @override
  void update(void Function(ConflictResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConflictResponse build() => _build();

  _$ConflictResponse _build() {
    _$ConflictResponse _$result;
    try {
      _$result = _$v ??
          _$ConflictResponse._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ConflictResponse', 'status'),
            message: message,
            conflicts: conflicts.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conflicts';
        conflicts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConflictResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
