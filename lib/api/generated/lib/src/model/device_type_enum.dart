//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_type_enum.g.dart';

class DeviceTypeEnum extends EnumClass {

  /// * `mobile` - mobile * `tablet` - tablet * `desktop` - desktop * `web` - web
  @BuiltValueEnumConst(wireName: r'mobile')
  static const DeviceTypeEnum mobile = _$mobile;
  /// * `mobile` - mobile * `tablet` - tablet * `desktop` - desktop * `web` - web
  @BuiltValueEnumConst(wireName: r'tablet')
  static const DeviceTypeEnum tablet = _$tablet;
  /// * `mobile` - mobile * `tablet` - tablet * `desktop` - desktop * `web` - web
  @BuiltValueEnumConst(wireName: r'desktop')
  static const DeviceTypeEnum desktop = _$desktop;
  /// * `mobile` - mobile * `tablet` - tablet * `desktop` - desktop * `web` - web
  @BuiltValueEnumConst(wireName: r'web')
  static const DeviceTypeEnum web = _$web;

  static Serializer<DeviceTypeEnum> get serializer => _$deviceTypeEnumSerializer;

  const DeviceTypeEnum._(String name): super(name);

  static BuiltSet<DeviceTypeEnum> get values => _$values;
  static DeviceTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeviceTypeEnumMixin = Object with _$DeviceTypeEnumMixin;

