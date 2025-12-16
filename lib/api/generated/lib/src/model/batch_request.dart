//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/availability_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_request.g.dart';

/// BatchRequest
///
/// Properties:
/// * [areaId] - ID dell'area
/// * [requests] - Lista di richieste di disponibilità (massimo 10)
@BuiltValue()
abstract class BatchRequest implements Built<BatchRequest, BatchRequestBuilder> {
  /// ID dell'area
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// Lista di richieste di disponibilità (massimo 10)
  @BuiltValueField(wireName: r'requests')
  BuiltList<AvailabilityRequest> get requests;

  BatchRequest._();

  factory BatchRequest([void updates(BatchRequestBuilder b)]) = _$BatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchRequest> get serializer => _$BatchRequestSerializer();
}

class _$BatchRequestSerializer implements PrimitiveSerializer<BatchRequest> {
  @override
  final Iterable<Type> types = const [BatchRequest, _$BatchRequest];

  @override
  final String wireName = r'BatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'requests';
    yield serializers.serialize(
      object.requests,
      specifiedType: const FullType(BuiltList, [FullType(AvailabilityRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'requests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AvailabilityRequest)]),
          ) as BuiltList<AvailabilityRequest>;
          result.requests.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchRequestBuilder();
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

