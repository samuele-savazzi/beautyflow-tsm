//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'visibility_enum.g.dart';

class VisibilityEnum extends EnumClass {

  /// * `individual` - individual * `group` - group * `public` - public
  @BuiltValueEnumConst(wireName: r'individual')
  static const VisibilityEnum individual = _$individual;
  /// * `individual` - individual * `group` - group * `public` - public
  @BuiltValueEnumConst(wireName: r'group')
  static const VisibilityEnum group = _$group;
  /// * `individual` - individual * `group` - group * `public` - public
  @BuiltValueEnumConst(wireName: r'public')
  static const VisibilityEnum public = _$public;

  static Serializer<VisibilityEnum> get serializer => _$visibilityEnumSerializer;

  const VisibilityEnum._(String name): super(name);

  static BuiltSet<VisibilityEnum> get values => _$values;
  static VisibilityEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VisibilityEnumMixin = Object with _$VisibilityEnumMixin;

