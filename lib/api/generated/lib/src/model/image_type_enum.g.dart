// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageTypeEnum _$favicon = const ImageTypeEnum._('favicon');
const ImageTypeEnum _$logo = const ImageTypeEnum._('logo');
const ImageTypeEnum _$darkLogo = const ImageTypeEnum._('darkLogo');

ImageTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'favicon':
      return _$favicon;
    case 'logo':
      return _$logo;
    case 'darkLogo':
      return _$darkLogo;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ImageTypeEnum> _$values =
    BuiltSet<ImageTypeEnum>(const <ImageTypeEnum>[
  _$favicon,
  _$logo,
  _$darkLogo,
]);

class _$ImageTypeEnumMeta {
  const _$ImageTypeEnumMeta();
  ImageTypeEnum get favicon => _$favicon;
  ImageTypeEnum get logo => _$logo;
  ImageTypeEnum get darkLogo => _$darkLogo;
  ImageTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageTypeEnum> get values => _$values;
}

abstract class _$ImageTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$ImageTypeEnumMeta get ImageTypeEnum => const _$ImageTypeEnumMeta();
}

Serializer<ImageTypeEnum> _$imageTypeEnumSerializer =
    _$ImageTypeEnumSerializer();

class _$ImageTypeEnumSerializer implements PrimitiveSerializer<ImageTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'favicon': 'favicon',
    'logo': 'logo',
    'darkLogo': 'dark_logo',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'favicon': 'favicon',
    'logo': 'logo',
    'dark_logo': 'darkLogo',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageTypeEnum];
  @override
  final String wireName = 'ImageTypeEnum';

  @override
  Object serialize(Serializers serializers, ImageTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImageTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImageTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
