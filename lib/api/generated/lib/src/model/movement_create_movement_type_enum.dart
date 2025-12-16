//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_create_movement_type_enum.g.dart';

class MovementCreateMovementTypeEnum extends EnumClass {

  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'IN')
  static const MovementCreateMovementTypeEnum IN = _$IN;
  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'OUT')
  static const MovementCreateMovementTypeEnum OUT = _$OUT;
  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const MovementCreateMovementTypeEnum TRANSFER = _$TRANSFER;
  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'ADJUSTMENT')
  static const MovementCreateMovementTypeEnum ADJUSTMENT = _$ADJUSTMENT;
  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'WASTE')
  static const MovementCreateMovementTypeEnum WASTE = _$WASTE;
  /// * `IN` - Entrata * `OUT` - Uscita * `TRANSFER` - Trasferimento * `ADJUSTMENT` - Correzione * `WASTE` - Scarto * `CONSUMPTION` - Consumo Servizio
  @BuiltValueEnumConst(wireName: r'CONSUMPTION')
  static const MovementCreateMovementTypeEnum CONSUMPTION = _$CONSUMPTION;

  static Serializer<MovementCreateMovementTypeEnum> get serializer => _$movementCreateMovementTypeEnumSerializer;

  const MovementCreateMovementTypeEnum._(String name): super(name);

  static BuiltSet<MovementCreateMovementTypeEnum> get values => _$values;
  static MovementCreateMovementTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MovementCreateMovementTypeEnumMixin = Object with _$MovementCreateMovementTypeEnumMixin;

