//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action55f_enum.g.dart';

class Action55fEnum extends EnumClass {

  /// * `approve` - approve * `reject` - reject
  @BuiltValueEnumConst(wireName: r'approve')
  static const Action55fEnum approve = _$approve;
  /// * `approve` - approve * `reject` - reject
  @BuiltValueEnumConst(wireName: r'reject')
  static const Action55fEnum reject = _$reject;

  static Serializer<Action55fEnum> get serializer => _$action55fEnumSerializer;

  const Action55fEnum._(String name): super(name);

  static BuiltSet<Action55fEnum> get values => _$values;
  static Action55fEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class Action55fEnumMixin = Object with _$Action55fEnumMixin;

