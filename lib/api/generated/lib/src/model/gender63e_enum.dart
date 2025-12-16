//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gender63e_enum.g.dart';

class Gender63eEnum extends EnumClass {

  /// * `M` - Uomo * `F` - Donna * `U` - Unisex
  @BuiltValueEnumConst(wireName: r'M')
  static const Gender63eEnum M = _$M;
  /// * `M` - Uomo * `F` - Donna * `U` - Unisex
  @BuiltValueEnumConst(wireName: r'F')
  static const Gender63eEnum F = _$F;
  /// * `M` - Uomo * `F` - Donna * `U` - Unisex
  @BuiltValueEnumConst(wireName: r'U')
  static const Gender63eEnum U = _$U;

  static Serializer<Gender63eEnum> get serializer => _$gender63eEnumSerializer;

  const Gender63eEnum._(String name): super(name);

  static BuiltSet<Gender63eEnum> get values => _$values;
  static Gender63eEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class Gender63eEnumMixin = Object with _$Gender63eEnumMixin;

