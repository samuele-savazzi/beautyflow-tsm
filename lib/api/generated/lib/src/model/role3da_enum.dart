//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'role3da_enum.g.dart';

class Role3daEnum extends EnumClass {

  /// * `admin` - Administrator * `commerciale` - Commerciale * `support` - Support
  @BuiltValueEnumConst(wireName: r'admin')
  static const Role3daEnum admin = _$admin;
  /// * `admin` - Administrator * `commerciale` - Commerciale * `support` - Support
  @BuiltValueEnumConst(wireName: r'commerciale')
  static const Role3daEnum commerciale = _$commerciale;
  /// * `admin` - Administrator * `commerciale` - Commerciale * `support` - Support
  @BuiltValueEnumConst(wireName: r'support')
  static const Role3daEnum support = _$support;

  static Serializer<Role3daEnum> get serializer => _$role3daEnumSerializer;

  const Role3daEnum._(String name): super(name);

  static BuiltSet<Role3daEnum> get values => _$values;
  static Role3daEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class Role3daEnumMixin = Object with _$Role3daEnumMixin;

