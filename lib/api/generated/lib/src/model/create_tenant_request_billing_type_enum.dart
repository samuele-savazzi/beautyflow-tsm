//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_request_billing_type_enum.g.dart';

class CreateTenantRequestBillingTypeEnum extends EnumClass {

  /// * `trial` - trial * `monthly` - monthly * `yearly` - yearly * `custom` - custom
  @BuiltValueEnumConst(wireName: r'trial')
  static const CreateTenantRequestBillingTypeEnum trial = _$trial;
  /// * `trial` - trial * `monthly` - monthly * `yearly` - yearly * `custom` - custom
  @BuiltValueEnumConst(wireName: r'monthly')
  static const CreateTenantRequestBillingTypeEnum monthly = _$monthly;
  /// * `trial` - trial * `monthly` - monthly * `yearly` - yearly * `custom` - custom
  @BuiltValueEnumConst(wireName: r'yearly')
  static const CreateTenantRequestBillingTypeEnum yearly = _$yearly;
  /// * `trial` - trial * `monthly` - monthly * `yearly` - yearly * `custom` - custom
  @BuiltValueEnumConst(wireName: r'custom')
  static const CreateTenantRequestBillingTypeEnum custom = _$custom;

  static Serializer<CreateTenantRequestBillingTypeEnum> get serializer => _$createTenantRequestBillingTypeEnumSerializer;

  const CreateTenantRequestBillingTypeEnum._(String name): super(name);

  static BuiltSet<CreateTenantRequestBillingTypeEnum> get values => _$values;
  static CreateTenantRequestBillingTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CreateTenantRequestBillingTypeEnumMixin = Object with _$CreateTenantRequestBillingTypeEnumMixin;

