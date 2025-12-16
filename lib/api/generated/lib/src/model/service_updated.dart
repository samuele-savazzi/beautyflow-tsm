//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_updated.g.dart';

/// ServiceUpdated
///
/// Properties:
/// * [id] 
/// * [message] 
@BuiltValue()
abstract class ServiceUpdated implements Built<ServiceUpdated, ServiceUpdatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'message')
  String get message;

  ServiceUpdated._();

  factory ServiceUpdated([void updates(ServiceUpdatedBuilder b)]) = _$ServiceUpdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceUpdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceUpdated> get serializer => _$ServiceUpdatedSerializer();
}

class _$ServiceUpdatedSerializer implements PrimitiveSerializer<ServiceUpdated> {
  @override
  final Iterable<Type> types = const [ServiceUpdated, _$ServiceUpdated];

  @override
  final String wireName = r'ServiceUpdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceUpdatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceUpdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceUpdatedBuilder();
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

