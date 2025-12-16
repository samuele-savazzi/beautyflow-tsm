//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_frequent_service_request.g.dart';

/// SetFrequentServiceRequest
///
/// Properties:
/// * [serviceId] - ID del servizio
/// * [categories] - Mappa step_id -> category_id (es: {\"23\": 45, \"27\": 52})
@BuiltValue()
abstract class SetFrequentServiceRequest implements Built<SetFrequentServiceRequest, SetFrequentServiceRequestBuilder> {
  /// ID del servizio
  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  /// Mappa step_id -> category_id (es: {\"23\": 45, \"27\": 52})
  @BuiltValueField(wireName: r'categories')
  BuiltMap<String, int>? get categories;

  SetFrequentServiceRequest._();

  factory SetFrequentServiceRequest([void updates(SetFrequentServiceRequestBuilder b)]) = _$SetFrequentServiceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetFrequentServiceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetFrequentServiceRequest> get serializer => _$SetFrequentServiceRequestSerializer();
}

class _$SetFrequentServiceRequestSerializer implements PrimitiveSerializer<SetFrequentServiceRequest> {
  @override
  final Iterable<Type> types = const [SetFrequentServiceRequest, _$SetFrequentServiceRequest];

  @override
  final String wireName = r'SetFrequentServiceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetFrequentServiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'service_id';
    yield serializers.serialize(
      object.serviceId,
      specifiedType: const FullType(int),
    );
    if (object.categories != null) {
      yield r'categories';
      yield serializers.serialize(
        object.categories,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetFrequentServiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetFrequentServiceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.serviceId = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>;
          result.categories.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetFrequentServiceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetFrequentServiceRequestBuilder();
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

