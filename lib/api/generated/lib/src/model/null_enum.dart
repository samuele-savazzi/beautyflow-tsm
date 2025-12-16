//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'null_enum.g.dart';

class NullEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'null')
  static const NullEnum null_ = _$null_;

  static Serializer<NullEnum> get serializer => _$nullEnumSerializer;

  const NullEnum._(String name): super(name);

  static BuiltSet<NullEnum> get values => _$values;
  static NullEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NullEnumMixin = Object with _$NullEnumMixin;

