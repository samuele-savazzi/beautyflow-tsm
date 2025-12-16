//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'type_enum.g.dart';

class TypeEnum extends EnumClass {

  /// * `HAIRDRESSER` - HAIRDRESSER * `BARBER` - BARBER * `BEAUTICIAN` - BEAUTICIAN * `SPA` - SPA
  @BuiltValueEnumConst(wireName: r'HAIRDRESSER')
  static const TypeEnum HAIRDRESSER = _$HAIRDRESSER;
  /// * `HAIRDRESSER` - HAIRDRESSER * `BARBER` - BARBER * `BEAUTICIAN` - BEAUTICIAN * `SPA` - SPA
  @BuiltValueEnumConst(wireName: r'BARBER')
  static const TypeEnum BARBER = _$BARBER;
  /// * `HAIRDRESSER` - HAIRDRESSER * `BARBER` - BARBER * `BEAUTICIAN` - BEAUTICIAN * `SPA` - SPA
  @BuiltValueEnumConst(wireName: r'BEAUTICIAN')
  static const TypeEnum BEAUTICIAN = _$BEAUTICIAN;
  /// * `HAIRDRESSER` - HAIRDRESSER * `BARBER` - BARBER * `BEAUTICIAN` - BEAUTICIAN * `SPA` - SPA
  @BuiltValueEnumConst(wireName: r'SPA')
  static const TypeEnum SPA = _$SPA;

  static Serializer<TypeEnum> get serializer => _$typeEnumSerializer;

  const TypeEnum._(String name): super(name);

  static BuiltSet<TypeEnum> get values => _$values;
  static TypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TypeEnumMixin = Object with _$TypeEnumMixin;

