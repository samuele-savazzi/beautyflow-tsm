//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manage_account_request_action_enum.g.dart';

class ManageAccountRequestActionEnum extends EnumClass {

  /// * `remove` - remove * `deactivate` - deactivate
  @BuiltValueEnumConst(wireName: r'remove')
  static const ManageAccountRequestActionEnum remove = _$remove;
  /// * `remove` - remove * `deactivate` - deactivate
  @BuiltValueEnumConst(wireName: r'deactivate')
  static const ManageAccountRequestActionEnum deactivate = _$deactivate;

  static Serializer<ManageAccountRequestActionEnum> get serializer => _$manageAccountRequestActionEnumSerializer;

  const ManageAccountRequestActionEnum._(String name): super(name);

  static BuiltSet<ManageAccountRequestActionEnum> get values => _$values;
  static ManageAccountRequestActionEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ManageAccountRequestActionEnumMixin = Object with _$ManageAccountRequestActionEnumMixin;

