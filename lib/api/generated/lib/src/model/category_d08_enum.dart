//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_d08_enum.g.dart';

class CategoryD08Enum extends EnumClass {

  /// * `core` - Funzionalità Core * `premium` - Premium Features * `integration` - Integrazioni * `analytics` - Analytics & Reporting * `automation` - Automazione
  @BuiltValueEnumConst(wireName: r'core')
  static const CategoryD08Enum core = _$core;
  /// * `core` - Funzionalità Core * `premium` - Premium Features * `integration` - Integrazioni * `analytics` - Analytics & Reporting * `automation` - Automazione
  @BuiltValueEnumConst(wireName: r'premium')
  static const CategoryD08Enum premium = _$premium;
  /// * `core` - Funzionalità Core * `premium` - Premium Features * `integration` - Integrazioni * `analytics` - Analytics & Reporting * `automation` - Automazione
  @BuiltValueEnumConst(wireName: r'integration')
  static const CategoryD08Enum integration = _$integration;
  /// * `core` - Funzionalità Core * `premium` - Premium Features * `integration` - Integrazioni * `analytics` - Analytics & Reporting * `automation` - Automazione
  @BuiltValueEnumConst(wireName: r'analytics')
  static const CategoryD08Enum analytics = _$analytics;
  /// * `core` - Funzionalità Core * `premium` - Premium Features * `integration` - Integrazioni * `analytics` - Analytics & Reporting * `automation` - Automazione
  @BuiltValueEnumConst(wireName: r'automation')
  static const CategoryD08Enum automation = _$automation;

  static Serializer<CategoryD08Enum> get serializer => _$categoryD08EnumSerializer;

  const CategoryD08Enum._(String name): super(name);

  static BuiltSet<CategoryD08Enum> get values => _$values;
  static CategoryD08Enum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CategoryD08EnumMixin = Object with _$CategoryD08EnumMixin;

