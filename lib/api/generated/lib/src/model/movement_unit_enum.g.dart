// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_unit_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovementUnitEnum _$PCS = const MovementUnitEnum._('PCS');
const MovementUnitEnum _$ML = const MovementUnitEnum._('ML');
const MovementUnitEnum _$L = const MovementUnitEnum._('L');
const MovementUnitEnum _$GR = const MovementUnitEnum._('GR');
const MovementUnitEnum _$KG = const MovementUnitEnum._('KG');
const MovementUnitEnum _$BOX = const MovementUnitEnum._('BOX');
const MovementUnitEnum _$BOTTLE = const MovementUnitEnum._('BOTTLE');
const MovementUnitEnum _$TUBE = const MovementUnitEnum._('TUBE');

MovementUnitEnum _$valueOf(String name) {
  switch (name) {
    case 'PCS':
      return _$PCS;
    case 'ML':
      return _$ML;
    case 'L':
      return _$L;
    case 'GR':
      return _$GR;
    case 'KG':
      return _$KG;
    case 'BOX':
      return _$BOX;
    case 'BOTTLE':
      return _$BOTTLE;
    case 'TUBE':
      return _$TUBE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovementUnitEnum> _$values =
    BuiltSet<MovementUnitEnum>(const <MovementUnitEnum>[
  _$PCS,
  _$ML,
  _$L,
  _$GR,
  _$KG,
  _$BOX,
  _$BOTTLE,
  _$TUBE,
]);

class _$MovementUnitEnumMeta {
  const _$MovementUnitEnumMeta();
  MovementUnitEnum get PCS => _$PCS;
  MovementUnitEnum get ML => _$ML;
  MovementUnitEnum get L => _$L;
  MovementUnitEnum get GR => _$GR;
  MovementUnitEnum get KG => _$KG;
  MovementUnitEnum get BOX => _$BOX;
  MovementUnitEnum get BOTTLE => _$BOTTLE;
  MovementUnitEnum get TUBE => _$TUBE;
  MovementUnitEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MovementUnitEnum> get values => _$values;
}

abstract class _$MovementUnitEnumMixin {
  // ignore: non_constant_identifier_names
  _$MovementUnitEnumMeta get MovementUnitEnum => const _$MovementUnitEnumMeta();
}

Serializer<MovementUnitEnum> _$movementUnitEnumSerializer =
    _$MovementUnitEnumSerializer();

class _$MovementUnitEnumSerializer
    implements PrimitiveSerializer<MovementUnitEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PCS': 'PCS',
    'ML': 'ML',
    'L': 'L',
    'GR': 'GR',
    'KG': 'KG',
    'BOX': 'BOX',
    'BOTTLE': 'BOTTLE',
    'TUBE': 'TUBE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PCS': 'PCS',
    'ML': 'ML',
    'L': 'L',
    'GR': 'GR',
    'KG': 'KG',
    'BOX': 'BOX',
    'BOTTLE': 'BOTTLE',
    'TUBE': 'TUBE',
  };

  @override
  final Iterable<Type> types = const <Type>[MovementUnitEnum];
  @override
  final String wireName = 'MovementUnitEnum';

  @override
  Object serialize(Serializers serializers, MovementUnitEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovementUnitEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovementUnitEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
