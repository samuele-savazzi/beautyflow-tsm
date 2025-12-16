//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'value_type_enum.g.dart';

class ValueTypeEnum extends EnumClass {

  /// * `percentage` - Percentage * `fixed` - Fixed Amount (€)
  @BuiltValueEnumConst(wireName: r'percentage')
  static const ValueTypeEnum percentage = _$percentage;
  /// * `percentage` - Percentage * `fixed` - Fixed Amount (€)
  @BuiltValueEnumConst(wireName: r'fixed')
  static const ValueTypeEnum fixed = _$fixed;

  static Serializer<ValueTypeEnum> get serializer => _$valueTypeEnumSerializer;

  const ValueTypeEnum._(String name): super(name);

  static BuiltSet<ValueTypeEnum> get values => _$values;
  static ValueTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ValueTypeEnumMixin = Object with _$ValueTypeEnumMixin;

