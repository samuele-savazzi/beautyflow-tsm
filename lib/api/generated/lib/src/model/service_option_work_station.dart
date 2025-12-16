//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/service_option_work_station_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_option_work_station.g.dart';

/// ServiceOptionWorkStation
///
/// Properties:
/// * [key] 
/// * [label] 
/// * [services] 
@BuiltValue()
abstract class ServiceOptionWorkStation implements Built<ServiceOptionWorkStation, ServiceOptionWorkStationBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'label')
  String get label;

  @BuiltValueField(wireName: r'services')
  BuiltList<ServiceOptionWorkStationElement> get services;

  ServiceOptionWorkStation._();

  factory ServiceOptionWorkStation([void updates(ServiceOptionWorkStationBuilder b)]) = _$ServiceOptionWorkStation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceOptionWorkStationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceOptionWorkStation> get serializer => _$ServiceOptionWorkStationSerializer();
}

class _$ServiceOptionWorkStationSerializer implements PrimitiveSerializer<ServiceOptionWorkStation> {
  @override
  final Iterable<Type> types = const [ServiceOptionWorkStation, _$ServiceOptionWorkStation];

  @override
  final String wireName = r'ServiceOptionWorkStation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceOptionWorkStation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(ServiceOptionWorkStationElement)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceOptionWorkStation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceOptionWorkStationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceOptionWorkStationElement)]),
          ) as BuiltList<ServiceOptionWorkStationElement>;
          result.services.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceOptionWorkStation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceOptionWorkStationBuilder();
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

