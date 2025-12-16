//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tenant_admin_request_role_enum.g.dart';

class CreateTenantAdminRequestRoleEnum extends EnumClass {

  /// * `admin` - admin * `commerciale` - commerciale * `support` - support
  @BuiltValueEnumConst(wireName: r'admin')
  static const CreateTenantAdminRequestRoleEnum admin = _$admin;
  /// * `admin` - admin * `commerciale` - commerciale * `support` - support
  @BuiltValueEnumConst(wireName: r'commerciale')
  static const CreateTenantAdminRequestRoleEnum commerciale = _$commerciale;
  /// * `admin` - admin * `commerciale` - commerciale * `support` - support
  @BuiltValueEnumConst(wireName: r'support')
  static const CreateTenantAdminRequestRoleEnum support = _$support;

  static Serializer<CreateTenantAdminRequestRoleEnum> get serializer => _$createTenantAdminRequestRoleEnumSerializer;

  const CreateTenantAdminRequestRoleEnum._(String name): super(name);

  static BuiltSet<CreateTenantAdminRequestRoleEnum> get values => _$values;
  static CreateTenantAdminRequestRoleEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CreateTenantAdminRequestRoleEnumMixin = Object with _$CreateTenantAdminRequestRoleEnumMixin;

