//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_basic.g.dart';

/// ServiceBasic
///
/// Properties:
/// * [id] - ID del servizio
/// * [name] - Nome del servizio
@BuiltValue()
abstract class ServiceBasic implements Built<ServiceBasic, ServiceBasicBuilder> {
  /// ID del servizio
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome del servizio
  @BuiltValueField(wireName: r'name')
  String get name;

  ServiceBasic._();

  factory ServiceBasic([void updates(ServiceBasicBuilder b)]) = _$ServiceBasic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceBasicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceBasic> get serializer => _$ServiceBasicSerializer();
}

class _$ServiceBasicSerializer implements PrimitiveSerializer<ServiceBasic> {
  @override
  final Iterable<Type> types = const [ServiceBasic, _$ServiceBasic];

  @override
  final String wireName = r'ServiceBasic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceBasicBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceBasic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceBasicBuilder();
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

