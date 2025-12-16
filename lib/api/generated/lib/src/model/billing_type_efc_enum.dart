//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'billing_type_efc_enum.g.dart';

class BillingTypeEfcEnum extends EnumClass {

  /// * `one_time` - Acquisto unico * `monthly` - Mensile * `yearly` - Annuale
  @BuiltValueEnumConst(wireName: r'one_time')
  static const BillingTypeEfcEnum oneTime = _$oneTime;
  /// * `one_time` - Acquisto unico * `monthly` - Mensile * `yearly` - Annuale
  @BuiltValueEnumConst(wireName: r'monthly')
  static const BillingTypeEfcEnum monthly = _$monthly;
  /// * `one_time` - Acquisto unico * `monthly` - Mensile * `yearly` - Annuale
  @BuiltValueEnumConst(wireName: r'yearly')
  static const BillingTypeEfcEnum yearly = _$yearly;

  static Serializer<BillingTypeEfcEnum> get serializer => _$billingTypeEfcEnumSerializer;

  const BillingTypeEfcEnum._(String name): super(name);

  static BuiltSet<BillingTypeEfcEnum> get values => _$values;
  static BillingTypeEfcEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BillingTypeEfcEnumMixin = Object with _$BillingTypeEfcEnumMixin;

