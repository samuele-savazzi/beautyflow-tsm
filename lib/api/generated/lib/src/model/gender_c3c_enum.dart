//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gender_c3c_enum.g.dart';

class GenderC3cEnum extends EnumClass {

  /// * `M` - M * `F` - F * `U` - U
  @BuiltValueEnumConst(wireName: r'M')
  static const GenderC3cEnum M = _$M;
  /// * `M` - M * `F` - F * `U` - U
  @BuiltValueEnumConst(wireName: r'F')
  static const GenderC3cEnum F = _$F;
  /// * `M` - M * `F` - F * `U` - U
  @BuiltValueEnumConst(wireName: r'U')
  static const GenderC3cEnum U = _$U;

  static Serializer<GenderC3cEnum> get serializer => _$genderC3cEnumSerializer;

  const GenderC3cEnum._(String name): super(name);

  static BuiltSet<GenderC3cEnum> get values => _$values;
  static GenderC3cEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class GenderC3cEnumMixin = Object with _$GenderC3cEnumMixin;

