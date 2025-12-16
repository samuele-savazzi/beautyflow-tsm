//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_e85_enum.g.dart';

class CategoryE85Enum extends EnumClass {

  /// * `core` - core * `premium` - premium * `integration` - integration * `analytics` - analytics * `automation` - automation
  @BuiltValueEnumConst(wireName: r'core')
  static const CategoryE85Enum core = _$core;
  /// * `core` - core * `premium` - premium * `integration` - integration * `analytics` - analytics * `automation` - automation
  @BuiltValueEnumConst(wireName: r'premium')
  static const CategoryE85Enum premium = _$premium;
  /// * `core` - core * `premium` - premium * `integration` - integration * `analytics` - analytics * `automation` - automation
  @BuiltValueEnumConst(wireName: r'integration')
  static const CategoryE85Enum integration = _$integration;
  /// * `core` - core * `premium` - premium * `integration` - integration * `analytics` - analytics * `automation` - automation
  @BuiltValueEnumConst(wireName: r'analytics')
  static const CategoryE85Enum analytics = _$analytics;
  /// * `core` - core * `premium` - premium * `integration` - integration * `analytics` - analytics * `automation` - automation
  @BuiltValueEnumConst(wireName: r'automation')
  static const CategoryE85Enum automation = _$automation;

  static Serializer<CategoryE85Enum> get serializer => _$categoryE85EnumSerializer;

  const CategoryE85Enum._(String name): super(name);

  static BuiltSet<CategoryE85Enum> get values => _$values;
  static CategoryE85Enum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CategoryE85EnumMixin = Object with _$CategoryE85EnumMixin;

