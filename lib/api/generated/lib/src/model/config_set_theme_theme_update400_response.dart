//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'config_set_theme_theme_update400_response.g.dart';

/// ConfigSetThemeThemeUpdate400Response
///
/// Properties:
/// * [error] 
@BuiltValue()
abstract class ConfigSetThemeThemeUpdate400Response implements Built<ConfigSetThemeThemeUpdate400Response, ConfigSetThemeThemeUpdate400ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  ConfigSetThemeThemeUpdate400Response._();

  factory ConfigSetThemeThemeUpdate400Response([void updates(ConfigSetThemeThemeUpdate400ResponseBuilder b)]) = _$ConfigSetThemeThemeUpdate400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConfigSetThemeThemeUpdate400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConfigSetThemeThemeUpdate400Response> get serializer => _$ConfigSetThemeThemeUpdate400ResponseSerializer();
}

class _$ConfigSetThemeThemeUpdate400ResponseSerializer implements PrimitiveSerializer<ConfigSetThemeThemeUpdate400Response> {
  @override
  final Iterable<Type> types = const [ConfigSetThemeThemeUpdate400Response, _$ConfigSetThemeThemeUpdate400Response];

  @override
  final String wireName = r'ConfigSetThemeThemeUpdate400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConfigSetThemeThemeUpdate400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConfigSetThemeThemeUpdate400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConfigSetThemeThemeUpdate400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConfigSetThemeThemeUpdate400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConfigSetThemeThemeUpdate400ResponseBuilder();
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

