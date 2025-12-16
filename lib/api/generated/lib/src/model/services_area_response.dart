//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/performance.dart';
import 'package:beautyflow_api/src/model/service_area.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'services_area_response.g.dart';

/// Serializzatore principale per la risposta dell'API dei servizi
///
/// Properties:
/// * [services] 
/// * [performance] 
/// * [areaId] 
/// * [operatorIds] 
@BuiltValue()
abstract class ServicesAreaResponse implements Built<ServicesAreaResponse, ServicesAreaResponseBuilder> {
  @BuiltValueField(wireName: r'services')
  BuiltList<ServiceArea> get services;

  @BuiltValueField(wireName: r'performance')
  Performance get performance;

  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'operator_ids')
  BuiltList<int> get operatorIds;

  ServicesAreaResponse._();

  factory ServicesAreaResponse([void updates(ServicesAreaResponseBuilder b)]) = _$ServicesAreaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServicesAreaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServicesAreaResponse> get serializer => _$ServicesAreaResponseSerializer();
}

class _$ServicesAreaResponseSerializer implements PrimitiveSerializer<ServicesAreaResponse> {
  @override
  final Iterable<Type> types = const [ServicesAreaResponse, _$ServicesAreaResponse];

  @override
  final String wireName = r'ServicesAreaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServicesAreaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'services';
    yield serializers.serialize(
      object.services,
      specifiedType: const FullType(BuiltList, [FullType(ServiceArea)]),
    );
    yield r'performance';
    yield serializers.serialize(
      object.performance,
      specifiedType: const FullType(Performance),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'operator_ids';
    yield serializers.serialize(
      object.operatorIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ServicesAreaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServicesAreaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'services':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ServiceArea)]),
          ) as BuiltList<ServiceArea>;
          result.services.replace(valueDes);
          break;
        case r'performance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Performance),
          ) as Performance;
          result.performance.replace(valueDes);
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'operator_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.operatorIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServicesAreaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServicesAreaResponseBuilder();
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

