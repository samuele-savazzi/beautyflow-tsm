//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_option_work_station_element.g.dart';

/// ServiceOptionWorkStationElement
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [gender] 
@BuiltValue()
abstract class ServiceOptionWorkStationElement implements Built<ServiceOptionWorkStationElement, ServiceOptionWorkStationElementBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'gender')
  String get gender;

  ServiceOptionWorkStationElement._();

  factory ServiceOptionWorkStationElement([void updates(ServiceOptionWorkStationElementBuilder b)]) = _$ServiceOptionWorkStationElement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceOptionWorkStationElementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceOptionWorkStationElement> get serializer => _$ServiceOptionWorkStationElementSerializer();
}

class _$ServiceOptionWorkStationElementSerializer implements PrimitiveSerializer<ServiceOptionWorkStationElement> {
  @override
  final Iterable<Type> types = const [ServiceOptionWorkStationElement, _$ServiceOptionWorkStationElement];

  @override
  final String wireName = r'ServiceOptionWorkStationElement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceOptionWorkStationElement object, {
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
    yield r'gender';
    yield serializers.serialize(
      object.gender,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceOptionWorkStationElement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceOptionWorkStationElementBuilder result,
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
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gender = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceOptionWorkStationElement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceOptionWorkStationElementBuilder();
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

