// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceTypeEnum _$mobile = const DeviceTypeEnum._('mobile');
const DeviceTypeEnum _$tablet = const DeviceTypeEnum._('tablet');
const DeviceTypeEnum _$desktop = const DeviceTypeEnum._('desktop');
const DeviceTypeEnum _$web = const DeviceTypeEnum._('web');

DeviceTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'mobile':
      return _$mobile;
    case 'tablet':
      return _$tablet;
    case 'desktop':
      return _$desktop;
    case 'web':
      return _$web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeviceTypeEnum> _$values =
    BuiltSet<DeviceTypeEnum>(const <DeviceTypeEnum>[
  _$mobile,
  _$tablet,
  _$desktop,
  _$web,
]);

class _$DeviceTypeEnumMeta {
  const _$DeviceTypeEnumMeta();
  DeviceTypeEnum get mobile => _$mobile;
  DeviceTypeEnum get tablet => _$tablet;
  DeviceTypeEnum get desktop => _$desktop;
  DeviceTypeEnum get web => _$web;
  DeviceTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceTypeEnum> get values => _$values;
}

abstract class _$DeviceTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$DeviceTypeEnumMeta get DeviceTypeEnum => const _$DeviceTypeEnumMeta();
}

Serializer<DeviceTypeEnum> _$deviceTypeEnumSerializer =
    _$DeviceTypeEnumSerializer();

class _$DeviceTypeEnumSerializer
    implements PrimitiveSerializer<DeviceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mobile': 'mobile',
    'tablet': 'tablet',
    'desktop': 'desktop',
    'web': 'web',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'mobile': 'mobile',
    'tablet': 'tablet',
    'desktop': 'desktop',
    'web': 'web',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceTypeEnum];
  @override
  final String wireName = 'DeviceTypeEnum';

  @override
  Object serialize(Serializers serializers, DeviceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DeviceTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DeviceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
