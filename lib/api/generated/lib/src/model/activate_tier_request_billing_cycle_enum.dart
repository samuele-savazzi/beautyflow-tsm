//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activate_tier_request_billing_cycle_enum.g.dart';

class ActivateTierRequestBillingCycleEnum extends EnumClass {

  /// * `monthly` - monthly * `yearly` - yearly
  @BuiltValueEnumConst(wireName: r'monthly')
  static const ActivateTierRequestBillingCycleEnum monthly = _$monthly;
  /// * `monthly` - monthly * `yearly` - yearly
  @BuiltValueEnumConst(wireName: r'yearly')
  static const ActivateTierRequestBillingCycleEnum yearly = _$yearly;

  static Serializer<ActivateTierRequestBillingCycleEnum> get serializer => _$activateTierRequestBillingCycleEnumSerializer;

  const ActivateTierRequestBillingCycleEnum._(String name): super(name);

  static BuiltSet<ActivateTierRequestBillingCycleEnum> get values => _$values;
  static ActivateTierRequestBillingCycleEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ActivateTierRequestBillingCycleEnumMixin = Object with _$ActivateTierRequestBillingCycleEnumMixin;

