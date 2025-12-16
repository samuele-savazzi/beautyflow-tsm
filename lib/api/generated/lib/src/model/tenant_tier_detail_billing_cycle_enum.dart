//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_tier_detail_billing_cycle_enum.g.dart';

class TenantTierDetailBillingCycleEnum extends EnumClass {

  /// * `monthly` - Mensile * `yearly` - Annuale
  @BuiltValueEnumConst(wireName: r'monthly')
  static const TenantTierDetailBillingCycleEnum monthly = _$monthly;
  /// * `monthly` - Mensile * `yearly` - Annuale
  @BuiltValueEnumConst(wireName: r'yearly')
  static const TenantTierDetailBillingCycleEnum yearly = _$yearly;

  static Serializer<TenantTierDetailBillingCycleEnum> get serializer => _$tenantTierDetailBillingCycleEnumSerializer;

  const TenantTierDetailBillingCycleEnum._(String name): super(name);

  static BuiltSet<TenantTierDetailBillingCycleEnum> get values => _$values;
  static TenantTierDetailBillingCycleEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TenantTierDetailBillingCycleEnumMixin = Object with _$TenantTierDetailBillingCycleEnumMixin;

