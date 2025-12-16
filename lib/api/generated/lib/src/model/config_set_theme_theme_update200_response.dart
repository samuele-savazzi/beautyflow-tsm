//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'config_set_theme_theme_update200_response.g.dart';

/// ConfigSetThemeThemeUpdate200Response
///
/// Properties:
/// * [message] 
/// * [theme] 
/// * [logo] 
/// * [darkLogo] 
@BuiltValue()
abstract class ConfigSetThemeThemeUpdate200Response implements Built<ConfigSetThemeThemeUpdate200Response, ConfigSetThemeThemeUpdate200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'theme')
  Map<String, dynamic>? get theme;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'dark_logo')
  String? get darkLogo;

  ConfigSetThemeThemeUpdate200Response._();

  factory ConfigSetThemeThemeUpdate200Response([void updates(ConfigSetThemeThemeUpdate200ResponseBuilder b)]) = _$ConfigSetThemeThemeUpdate200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfigSetThemeThemeUpdate200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfigSetThemeThemeUpdate200Response> get serializer => _$ConfigSetThemeThemeUpdate200ResponseSerializer();
}

class _$ConfigSetThemeThemeUpdate200ResponseSerializer implements PrimitiveSerializer<ConfigSetThemeThemeUpdate200Response> {
  @override
  final Iterable<Type> types = const [ConfigSetThemeThemeUpdate200Response, _$ConfigSetThemeThemeUpdate200Response];

  @override
  final String wireName = r'ConfigSetThemeThemeUpdate200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfigSetThemeThemeUpdate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType(Map<String, dynamic>),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.darkLogo != null) {
      yield r'dark_logo';
      yield serializers.serialize(
        object.darkLogo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfigSetThemeThemeUpdate200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConfigSetThemeThemeUpdate200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Map<String, dynamic>),
          ) as Map<String, dynamic>;
          result.theme = valueDes;
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
  ConfigSetThemeThemeUpdate200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigSetThemeThemeUpdate200ResponseBuilder();
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

