//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'movement_unit_enum.g.dart';

class MovementUnitEnum extends EnumClass {

  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'PCS')
  static const MovementUnitEnum PCS = _$PCS;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'ML')
  static const MovementUnitEnum ML = _$ML;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'L')
  static const MovementUnitEnum L = _$L;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'GR')
  static const MovementUnitEnum GR = _$GR;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'KG')
  static const MovementUnitEnum KG = _$KG;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'BOX')
  static const MovementUnitEnum BOX = _$BOX;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'BOTTLE')
  static const MovementUnitEnum BOTTLE = _$BOTTLE;
  /// * `PCS` - Pieces * `ML` - Milliliters * `L` - Liters * `GR` - Grams * `KG` - Kilograms * `BOX` - Box * `BOTTLE` - Bottle * `TUBE` - Tube
  @BuiltValueEnumConst(wireName: r'TUBE')
  static const MovementUnitEnum TUBE = _$TUBE;

  static Serializer<MovementUnitEnum> get serializer => _$movementUnitEnumSerializer;

  const MovementUnitEnum._(String name): super(name);

  static BuiltSet<MovementUnitEnum> get values => _$values;
  static MovementUnitEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MovementUnitEnumMixin = Object with _$MovementUnitEnumMixin;

