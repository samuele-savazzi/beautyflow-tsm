//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'area_config.g.dart';

/// Configurazione area per creazione tenant
///
/// Properties:
/// * [name] - Nome dell'area
/// * [description] 
@BuiltValue()
abstract class AreaConfig implements Built<AreaConfig, AreaConfigBuilder> {
  /// Nome dell'area
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  AreaConfig._();

  factory AreaConfig([void updates(AreaConfigBuilder b)]) = _$AreaConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AreaConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AreaConfig> get serializer => _$AreaConfigSerializer();
}

class _$AreaConfigSerializer implements PrimitiveSerializer<AreaConfig> {
  @override
  final Iterable<Type> types = const [AreaConfig, _$AreaConfig];

  @override
  final String wireName = r'AreaConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AreaConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AreaConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AreaConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AreaConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AreaConfigBuilder();
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

