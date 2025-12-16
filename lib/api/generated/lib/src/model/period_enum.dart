//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'period_enum.g.dart';

class PeriodEnum extends EnumClass {

  /// * `morning` - morning * `afternoon` - afternoon
  @BuiltValueEnumConst(wireName: r'morning')
  static const PeriodEnum morning = _$morning;
  /// * `morning` - morning * `afternoon` - afternoon
  @BuiltValueEnumConst(wireName: r'afternoon')
  static const PeriodEnum afternoon = _$afternoon;

  static Serializer<PeriodEnum> get serializer => _$periodEnumSerializer;

  const PeriodEnum._(String name): super(name);

  static BuiltSet<PeriodEnum> get values => _$values;
  static PeriodEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PeriodEnumMixin = Object with _$PeriodEnumMixin;

