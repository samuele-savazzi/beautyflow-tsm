//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_response.g.dart';

/// HealthResponse
///
/// Properties:
/// * [status] - Stato generale del sistema
/// * [components] - Stato dei componenti del sistema
/// * [features] - Funzionalità disponibili
@BuiltValue()
abstract class HealthResponse implements Built<HealthResponse, HealthResponseBuilder> {
  /// Stato generale del sistema
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Stato dei componenti del sistema
  @BuiltValueField(wireName: r'components')
  BuiltMap<String, Map<String, dynamic>?> get components;

  /// Funzionalità disponibili
  @BuiltValueField(wireName: r'features')
  BuiltMap<String, Map<String, dynamic>?> get features;

  HealthResponse._();

  factory HealthResponse([void updates(HealthResponseBuilder b)]) = _$HealthResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthResponse> get serializer => _$HealthResponseSerializer();
}

class _$HealthResponseSerializer implements PrimitiveSerializer<HealthResponse> {
  @override
  final Iterable<Type> types = const [HealthResponse, _$HealthResponse];

  @override
  final String wireName = r'HealthResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'components';
    yield serializers.serialize(
      object.components,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'features';
    yield serializers.serialize(
      object.features,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'components':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.components.replace(valueDes);
          break;
        case r'features':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.features.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthResponseBuilder();
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

