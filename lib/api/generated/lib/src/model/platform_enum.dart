//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_enum.g.dart';

class PlatformEnum extends EnumClass {

  /// * `web` - Web * `mqtt` - MQTT * `android` - Android * `ios` - iOS
  @BuiltValueEnumConst(wireName: r'web')
  static const PlatformEnum web = _$web;
  /// * `web` - Web * `mqtt` - MQTT * `android` - Android * `ios` - iOS
  @BuiltValueEnumConst(wireName: r'mqtt')
  static const PlatformEnum mqtt = _$mqtt;
  /// * `web` - Web * `mqtt` - MQTT * `android` - Android * `ios` - iOS
  @BuiltValueEnumConst(wireName: r'android')
  static const PlatformEnum android = _$android;
  /// * `web` - Web * `mqtt` - MQTT * `android` - Android * `ios` - iOS
  @BuiltValueEnumConst(wireName: r'ios')
  static const PlatformEnum ios = _$ios;

  static Serializer<PlatformEnum> get serializer => _$platformEnumSerializer;

  const PlatformEnum._(String name): super(name);

  static BuiltSet<PlatformEnum> get values => _$values;
  static PlatformEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PlatformEnumMixin = Object with _$PlatformEnumMixin;

