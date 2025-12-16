// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movement_create_movement_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MovementCreateMovementTypeEnum _$IN =
    const MovementCreateMovementTypeEnum._('IN');
const MovementCreateMovementTypeEnum _$OUT =
    const MovementCreateMovementTypeEnum._('OUT');
const MovementCreateMovementTypeEnum _$TRANSFER =
    const MovementCreateMovementTypeEnum._('TRANSFER');
const MovementCreateMovementTypeEnum _$ADJUSTMENT =
    const MovementCreateMovementTypeEnum._('ADJUSTMENT');
const MovementCreateMovementTypeEnum _$WASTE =
    const MovementCreateMovementTypeEnum._('WASTE');
const MovementCreateMovementTypeEnum _$CONSUMPTION =
    const MovementCreateMovementTypeEnum._('CONSUMPTION');

MovementCreateMovementTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'IN':
      return _$IN;
    case 'OUT':
      return _$OUT;
    case 'TRANSFER':
      return _$TRANSFER;
    case 'ADJUSTMENT':
      return _$ADJUSTMENT;
    case 'WASTE':
      return _$WASTE;
    case 'CONSUMPTION':
      return _$CONSUMPTION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MovementCreateMovementTypeEnum> _$values = BuiltSet<
    MovementCreateMovementTypeEnum>(const <MovementCreateMovementTypeEnum>[
  _$IN,
  _$OUT,
  _$TRANSFER,
  _$ADJUSTMENT,
  _$WASTE,
  _$CONSUMPTION,
]);

class _$MovementCreateMovementTypeEnumMeta {
  const _$MovementCreateMovementTypeEnumMeta();
  MovementCreateMovementTypeEnum get IN => _$IN;
  MovementCreateMovementTypeEnum get OUT => _$OUT;
  MovementCreateMovementTypeEnum get TRANSFER => _$TRANSFER;
  MovementCreateMovementTypeEnum get ADJUSTMENT => _$ADJUSTMENT;
  MovementCreateMovementTypeEnum get WASTE => _$WASTE;
  MovementCreateMovementTypeEnum get CONSUMPTION => _$CONSUMPTION;
  MovementCreateMovementTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<MovementCreateMovementTypeEnum> get values => _$values;
}

abstract class _$MovementCreateMovementTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$MovementCreateMovementTypeEnumMeta get MovementCreateMovementTypeEnum =>
      const _$MovementCreateMovementTypeEnumMeta();
}

Serializer<MovementCreateMovementTypeEnum>
    _$movementCreateMovementTypeEnumSerializer =
    _$MovementCreateMovementTypeEnumSerializer();

class _$MovementCreateMovementTypeEnumSerializer
    implements PrimitiveSerializer<MovementCreateMovementTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'IN': 'IN',
    'OUT': 'OUT',
    'TRANSFER': 'TRANSFER',
    'ADJUSTMENT': 'ADJUSTMENT',
    'WASTE': 'WASTE',
    'CONSUMPTION': 'CONSUMPTION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IN': 'IN',
    'OUT': 'OUT',
    'TRANSFER': 'TRANSFER',
    'ADJUSTMENT': 'ADJUSTMENT',
    'WASTE': 'WASTE',
    'CONSUMPTION': 'CONSUMPTION',
  };

  @override
  final Iterable<Type> types = const <Type>[MovementCreateMovementTypeEnum];
  @override
  final String wireName = 'MovementCreateMovementTypeEnum';

  @override
  Object serialize(
          Serializers serializers, MovementCreateMovementTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MovementCreateMovementTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MovementCreateMovementTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
