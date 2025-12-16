//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tenant_theme_update.g.dart';

/// TenantThemeUpdate
///
/// Properties:
/// * [theme] - Configurazione del tema in formato JSON
/// * [logo] - File del logo principale (formati supportati: JPG, PNG, JPEG) - Può essere un file caricato, un URL (http/https), o una stringa base64 (data:image/...)
/// * [darkLogo] - File del logo per la modalità dark (formati supportati: JPG, PNG, JPEG) - Può essere un file caricato, un URL (http/https), o una stringa base64 (data:image/...)
@BuiltValue()
abstract class TenantThemeUpdate implements Built<TenantThemeUpdate, TenantThemeUpdateBuilder> {
  /// Configurazione del tema in formato JSON
  @BuiltValueField(wireName: r'theme')
  Map<String, dynamic>? get theme;

  /// File del logo principale (formati supportati: JPG, PNG, JPEG) - Può essere un file caricato, un URL (http/https), o una stringa base64 (data:image/...)
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// File del logo per la modalità dark (formati supportati: JPG, PNG, JPEG) - Può essere un file caricato, un URL (http/https), o una stringa base64 (data:image/...)
  @BuiltValueField(wireName: r'dark_logo')
  String? get darkLogo;

  TenantThemeUpdate._();

  factory TenantThemeUpdate([void updates(TenantThemeUpdateBuilder b)]) = _$TenantThemeUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TenantThemeUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TenantThemeUpdate> get serializer => _$TenantThemeUpdateSerializer();
}

class _$TenantThemeUpdateSerializer implements PrimitiveSerializer<TenantThemeUpdate> {
  @override
  final Iterable<Type> types = const [TenantThemeUpdate, _$TenantThemeUpdate];

  @override
  final String wireName = r'TenantThemeUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TenantThemeUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.theme != null) {
      yield r'theme';
      yield serializers.serialize(
        object.theme,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
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
    TenantThemeUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TenantThemeUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
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
  TenantThemeUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TenantThemeUpdateBuilder();
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

