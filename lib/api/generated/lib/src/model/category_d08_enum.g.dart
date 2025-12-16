// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_d08_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CategoryD08Enum _$core = const CategoryD08Enum._('core');
const CategoryD08Enum _$premium = const CategoryD08Enum._('premium');
const CategoryD08Enum _$integration = const CategoryD08Enum._('integration');
const CategoryD08Enum _$analytics = const CategoryD08Enum._('analytics');
const CategoryD08Enum _$automation = const CategoryD08Enum._('automation');

CategoryD08Enum _$valueOf(String name) {
  switch (name) {
    case 'core':
      return _$core;
    case 'premium':
      return _$premium;
    case 'integration':
      return _$integration;
    case 'analytics':
      return _$analytics;
    case 'automation':
      return _$automation;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CategoryD08Enum> _$values =
    BuiltSet<CategoryD08Enum>(const <CategoryD08Enum>[
  _$core,
  _$premium,
  _$integration,
  _$analytics,
  _$automation,
]);

class _$CategoryD08EnumMeta {
  const _$CategoryD08EnumMeta();
  CategoryD08Enum get core => _$core;
  CategoryD08Enum get premium => _$premium;
  CategoryD08Enum get integration => _$integration;
  CategoryD08Enum get analytics => _$analytics;
  CategoryD08Enum get automation => _$automation;
  CategoryD08Enum valueOf(String name) => _$valueOf(name);
  BuiltSet<CategoryD08Enum> get values => _$values;
}

abstract class _$CategoryD08EnumMixin {
  // ignore: non_constant_identifier_names
  _$CategoryD08EnumMeta get CategoryD08Enum => const _$CategoryD08EnumMeta();
}

Serializer<CategoryD08Enum> _$categoryD08EnumSerializer =
    _$CategoryD08EnumSerializer();

class _$CategoryD08EnumSerializer
    implements PrimitiveSerializer<CategoryD08Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'core': 'core',
    'premium': 'premium',
    'integration': 'integration',
    'analytics': 'analytics',
    'automation': 'automation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'core': 'core',
    'premium': 'premium',
    'integration': 'integration',
    'analytics': 'analytics',
    'automation': 'automation',
  };

  @override
  final Iterable<Type> types = const <Type>[CategoryD08Enum];
  @override
  final String wireName = 'CategoryD08Enum';

  @override
  Object serialize(Serializers serializers, CategoryD08Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CategoryD08Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CategoryD08Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
