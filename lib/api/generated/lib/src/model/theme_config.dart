//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'theme_config.g.dart';

/// ThemeConfig
///
/// Properties:
/// * [theme] 
/// * [logo] 
/// * [darkLogo] 
@BuiltValue()
abstract class ThemeConfig implements Built<ThemeConfig, ThemeConfigBuilder> {
  @BuiltValueField(wireName: r'theme')
  BuiltMap<String, Map<String, dynamic>?> get theme;

  @BuiltValueField(wireName: r'logo')
  String get logo;

  @BuiltValueField(wireName: r'dark_logo')
  String get darkLogo;

  ThemeConfig._();

  factory ThemeConfig([void updates(ThemeConfigBuilder b)]) = _$ThemeConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThemeConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThemeConfig> get serializer => _$ThemeConfigSerializer();
}

class _$ThemeConfigSerializer implements PrimitiveSerializer<ThemeConfig> {
  @override
  final Iterable<Type> types = const [ThemeConfig, _$ThemeConfig];

  @override
  final String wireName = r'ThemeConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThemeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'theme';
    yield serializers.serialize(
      object.theme,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'logo';
    yield serializers.serialize(
      object.logo,
      specifiedType: const FullType(String),
    );
    yield r'dark_logo';
    yield serializers.serialize(
      object.darkLogo,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ThemeConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThemeConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.theme.replace(valueDes);
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'dark_logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.darkLogo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThemeConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThemeConfigBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

