//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'billing_type874_enum.g.dart';

class BillingType874Enum extends EnumClass {

  /// * `one_time` - one_time * `monthly` - monthly * `yearly` - yearly
  @BuiltValueEnumConst(wireName: r'one_time')
  static const BillingType874Enum oneTime = _$oneTime;
  /// * `one_time` - one_time * `monthly` - monthly * `yearly` - yearly
  @BuiltValueEnumConst(wireName: r'monthly')
  static const BillingType874Enum monthly = _$monthly;
  /// * `one_time` - one_time * `monthly` - monthly * `yearly` - yearly
  @BuiltValueEnumConst(wireName: r'yearly')
  static const BillingType874Enum yearly = _$yearly;

  static Serializer<BillingType874Enum> get serializer => _$billingType874EnumSerializer;

  const BillingType874Enum._(String name): super(name);

  static BuiltSet<BillingType874Enum> get values => _$values;
  static BillingType874Enum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BillingType874EnumMixin = Object with _$BillingType874EnumMixin;

