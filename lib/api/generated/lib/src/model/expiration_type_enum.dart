//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expiration_type_enum.g.dart';

class ExpirationTypeEnum extends EnumClass {

  /// * `days` - Days * `month` - Month * `never` - Never
  @BuiltValueEnumConst(wireName: r'days')
  static const ExpirationTypeEnum days = _$days;
  /// * `days` - Days * `month` - Month * `never` - Never
  @BuiltValueEnumConst(wireName: r'month')
  static const ExpirationTypeEnum month = _$month;
  /// * `days` - Days * `month` - Month * `never` - Never
  @BuiltValueEnumConst(wireName: r'never')
  static const ExpirationTypeEnum never = _$never;

  static Serializer<ExpirationTypeEnum> get serializer => _$expirationTypeEnumSerializer;

  const ExpirationTypeEnum._(String name): super(name);

  static BuiltSet<ExpirationTypeEnum> get values => _$values;
  static ExpirationTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ExpirationTypeEnumMixin = Object with _$ExpirationTypeEnumMixin;

