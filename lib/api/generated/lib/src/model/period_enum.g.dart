// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PeriodEnum _$morning = const PeriodEnum._('morning');
const PeriodEnum _$afternoon = const PeriodEnum._('afternoon');

PeriodEnum _$valueOf(String name) {
  switch (name) {
    case 'morning':
      return _$morning;
    case 'afternoon':
      return _$afternoon;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PeriodEnum> _$values = BuiltSet<PeriodEnum>(const <PeriodEnum>[
  _$morning,
  _$afternoon,
]);

class _$PeriodEnumMeta {
  const _$PeriodEnumMeta();
  PeriodEnum get morning => _$morning;
  PeriodEnum get afternoon => _$afternoon;
  PeriodEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<PeriodEnum> get values => _$values;
}

abstract class _$PeriodEnumMixin {
  // ignore: non_constant_identifier_names
  _$PeriodEnumMeta get PeriodEnum => const _$PeriodEnumMeta();
}

Serializer<PeriodEnum> _$periodEnumSerializer = _$PeriodEnumSerializer();

class _$PeriodEnumSerializer implements PrimitiveSerializer<PeriodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'morning': 'morning',
    'afternoon': 'afternoon',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'morning': 'morning',
    'afternoon': 'afternoon',
  };

  @override
  final Iterable<Type> types = const <Type>[PeriodEnum];
  @override
  final String wireName = 'PeriodEnum';

  @override
  Object serialize(Serializers serializers, PeriodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PeriodEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PeriodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
