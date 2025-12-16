// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_e85_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CategoryE85Enum _$core = const CategoryE85Enum._('core');
const CategoryE85Enum _$premium = const CategoryE85Enum._('premium');
const CategoryE85Enum _$integration = const CategoryE85Enum._('integration');
const CategoryE85Enum _$analytics = const CategoryE85Enum._('analytics');
const CategoryE85Enum _$automation = const CategoryE85Enum._('automation');

CategoryE85Enum _$valueOf(String name) {
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

final BuiltSet<CategoryE85Enum> _$values =
    BuiltSet<CategoryE85Enum>(const <CategoryE85Enum>[
  _$core,
  _$premium,
  _$integration,
  _$analytics,
  _$automation,
]);

class _$CategoryE85EnumMeta {
  const _$CategoryE85EnumMeta();
  CategoryE85Enum get core => _$core;
  CategoryE85Enum get premium => _$premium;
  CategoryE85Enum get integration => _$integration;
  CategoryE85Enum get analytics => _$analytics;
  CategoryE85Enum get automation => _$automation;
  CategoryE85Enum valueOf(String name) => _$valueOf(name);
  BuiltSet<CategoryE85Enum> get values => _$values;
}

abstract class _$CategoryE85EnumMixin {
  // ignore: non_constant_identifier_names
  _$CategoryE85EnumMeta get CategoryE85Enum => const _$CategoryE85EnumMeta();
}

Serializer<CategoryE85Enum> _$categoryE85EnumSerializer =
    _$CategoryE85EnumSerializer();

class _$CategoryE85EnumSerializer
    implements PrimitiveSerializer<CategoryE85Enum> {
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
  final Iterable<Type> types = const <Type>[CategoryE85Enum];
  @override
  final String wireName = 'CategoryE85Enum';

  @override
  Object serialize(Serializers serializers, CategoryE85Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CategoryE85Enum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CategoryE85Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
