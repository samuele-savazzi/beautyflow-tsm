// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_of_measure_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UnitOfMeasureEnum _$PCS = const UnitOfMeasureEnum._('PCS');
const UnitOfMeasureEnum _$ML = const UnitOfMeasureEnum._('ML');
const UnitOfMeasureEnum _$L = const UnitOfMeasureEnum._('L');
const UnitOfMeasureEnum _$GR = const UnitOfMeasureEnum._('GR');
const UnitOfMeasureEnum _$KG = const UnitOfMeasureEnum._('KG');
const UnitOfMeasureEnum _$BOX = const UnitOfMeasureEnum._('BOX');
const UnitOfMeasureEnum _$BOTTLE = const UnitOfMeasureEnum._('BOTTLE');
const UnitOfMeasureEnum _$TUBE = const UnitOfMeasureEnum._('TUBE');

UnitOfMeasureEnum _$valueOf(String name) {
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

final BuiltSet<UnitOfMeasureEnum> _$values =
    BuiltSet<UnitOfMeasureEnum>(const <UnitOfMeasureEnum>[
  _$PCS,
  _$ML,
  _$L,
  _$GR,
  _$KG,
  _$BOX,
  _$BOTTLE,
  _$TUBE,
]);

class _$UnitOfMeasureEnumMeta {
  const _$UnitOfMeasureEnumMeta();
  UnitOfMeasureEnum get PCS => _$PCS;
  UnitOfMeasureEnum get ML => _$ML;
  UnitOfMeasureEnum get L => _$L;
  UnitOfMeasureEnum get GR => _$GR;
  UnitOfMeasureEnum get KG => _$KG;
  UnitOfMeasureEnum get BOX => _$BOX;
  UnitOfMeasureEnum get BOTTLE => _$BOTTLE;
  UnitOfMeasureEnum get TUBE => _$TUBE;
  UnitOfMeasureEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<UnitOfMeasureEnum> get values => _$values;
}

abstract class _$UnitOfMeasureEnumMixin {
  // ignore: non_constant_identifier_names
  _$UnitOfMeasureEnumMeta get UnitOfMeasureEnum =>
      const _$UnitOfMeasureEnumMeta();
}

Serializer<UnitOfMeasureEnum> _$unitOfMeasureEnumSerializer =
    _$UnitOfMeasureEnumSerializer();

class _$UnitOfMeasureEnumSerializer
    implements PrimitiveSerializer<UnitOfMeasureEnum> {
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
  final Iterable<Type> types = const <Type>[UnitOfMeasureEnum];
  @override
  final String wireName = 'UnitOfMeasureEnum';

  @override
  Object serialize(Serializers serializers, UnitOfMeasureEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnitOfMeasureEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnitOfMeasureEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
