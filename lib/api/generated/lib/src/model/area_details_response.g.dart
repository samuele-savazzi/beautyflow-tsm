// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AreaDetailsResponse extends AreaDetailsResponse {
  @override
  final bool success;
  @override
  final BuiltList<AreaData> areas;

  factory _$AreaDetailsResponse(
          [void Function(AreaDetailsResponseBuilder)? updates]) =>
      (AreaDetailsResponseBuilder()..update(updates))._build();

  _$AreaDetailsResponse._({required this.success, required this.areas})
      : super._();
  @override
  AreaDetailsResponse rebuild(
          void Function(AreaDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaDetailsResponseBuilder toBuilder() =>
      AreaDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaDetailsResponse &&
        success == other.success &&
        areas == other.areas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, areas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaDetailsResponse')
          ..add('success', success)
          ..add('areas', areas))
        .toString();
  }
}

class AreaDetailsResponseBuilder
    implements Builder<AreaDetailsResponse, AreaDetailsResponseBuilder> {
  _$AreaDetailsResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<AreaData>? _areas;
  ListBuilder<AreaData> get areas => _$this._areas ??= ListBuilder<AreaData>();
  set areas(ListBuilder<AreaData>? areas) => _$this._areas = areas;

  AreaDetailsResponseBuilder() {
    AreaDetailsResponse._defaults(this);
  }

  AreaDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _areas = $v.areas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaDetailsResponse other) {
    _$v = other as _$AreaDetailsResponse;
  }

  @override
  void update(void Function(AreaDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaDetailsResponse build() => _build();

  _$AreaDetailsResponse _build() {
    _$AreaDetailsResponse _$result;
    try {
      _$result = _$v ??
          _$AreaDetailsResponse._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'AreaDetailsResponse', 'success'),
            areas: areas.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'areas';
        areas.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AreaDetailsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
