//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_type_enum.g.dart';

class ImageTypeEnum extends EnumClass {

  /// * `favicon` - favicon * `logo` - logo * `dark_logo` - dark_logo
  @BuiltValueEnumConst(wireName: r'favicon')
  static const ImageTypeEnum favicon = _$favicon;
  /// * `favicon` - favicon * `logo` - logo * `dark_logo` - dark_logo
  @BuiltValueEnumConst(wireName: r'logo')
  static const ImageTypeEnum logo = _$logo;
  /// * `favicon` - favicon * `logo` - logo * `dark_logo` - dark_logo
  @BuiltValueEnumConst(wireName: r'dark_logo')
  static const ImageTypeEnum darkLogo = _$darkLogo;

  static Serializer<ImageTypeEnum> get serializer => _$imageTypeEnumSerializer;

  const ImageTypeEnum._(String name): super(name);

  static BuiltSet<ImageTypeEnum> get values => _$values;
  static ImageTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImageTypeEnumMixin = Object with _$ImageTypeEnumMixin;

