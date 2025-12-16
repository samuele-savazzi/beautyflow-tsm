// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformEnum _$web = const PlatformEnum._('web');
const PlatformEnum _$mqtt = const PlatformEnum._('mqtt');
const PlatformEnum _$android = const PlatformEnum._('android');
const PlatformEnum _$ios = const PlatformEnum._('ios');

PlatformEnum _$valueOf(String name) {
  switch (name) {
    case 'web':
      return _$web;
    case 'mqtt':
      return _$mqtt;
    case 'android':
      return _$android;
    case 'ios':
      return _$ios;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PlatformEnum> _$values =
    BuiltSet<PlatformEnum>(const <PlatformEnum>[
  _$web,
  _$mqtt,
  _$android,
  _$ios,
]);

class _$PlatformEnumMeta {
  const _$PlatformEnumMeta();
  PlatformEnum get web => _$web;
  PlatformEnum get mqtt => _$mqtt;
  PlatformEnum get android => _$android;
  PlatformEnum get ios => _$ios;
  PlatformEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<PlatformEnum> get values => _$values;
}

abstract class _$PlatformEnumMixin {
  // ignore: non_constant_identifier_names
  _$PlatformEnumMeta get PlatformEnum => const _$PlatformEnumMeta();
}

Serializer<PlatformEnum> _$platformEnumSerializer = _$PlatformEnumSerializer();

class _$PlatformEnumSerializer implements PrimitiveSerializer<PlatformEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'web': 'web',
    'mqtt': 'mqtt',
    'android': 'android',
    'ios': 'ios',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'web': 'web',
    'mqtt': 'mqtt',
    'android': 'android',
    'ios': 'ios',
  };

  @override
  final Iterable<Type> types = const <Type>[PlatformEnum];
  @override
  final String wireName = 'PlatformEnum';

  @override
  Object serialize(Serializers serializers, PlatformEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
