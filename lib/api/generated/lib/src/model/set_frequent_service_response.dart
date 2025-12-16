//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'set_frequent_service_response.g.dart';

/// SetFrequentServiceResponse
///
/// Properties:
/// * [success] 
/// * [operatorId] 
/// * [service] 
/// * [durationSlots] 
/// * [durationMinutes] 
/// * [categories] 
/// * [updatedAt] 
@BuiltValue()
abstract class SetFrequentServiceResponse implements Built<SetFrequentServiceResponse, SetFrequentServiceResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'service')
  BuiltMap<String, Map<String, dynamic>?> get service;

  @BuiltValueField(wireName: r'duration_slots')
  int get durationSlots;

  @BuiltValueField(wireName: r'duration_minutes')
  int get durationMinutes;

  @BuiltValueField(wireName: r'categories')
  BuiltMap<String, Map<String, dynamic>?> get categories;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  SetFrequentServiceResponse._();

  factory SetFrequentServiceResponse([void updates(SetFrequentServiceResponseBuilder b)]) = _$SetFrequentServiceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetFrequentServiceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetFrequentServiceResponse> get serializer => _$SetFrequentServiceResponseSerializer();
}

class _$SetFrequentServiceResponseSerializer implements PrimitiveSerializer<SetFrequentServiceResponse> {
  @override
  final Iterable<Type> types = const [SetFrequentServiceResponse, _$SetFrequentServiceResponse];

  @override
  final String wireName = r'SetFrequentServiceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetFrequentServiceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'service';
    yield serializers.serialize(
      object.service,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'duration_slots';
    yield serializers.serialize(
      object.durationSlots,
      specifiedType: const FullType(int),
    );
    yield r'duration_minutes';
    yield serializers.serialize(
      object.durationMinutes,
      specifiedType: const FullType(int),
    );
    yield r'categories';
    yield serializers.serialize(
      object.categories,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SetFrequentServiceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetFrequentServiceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.service.replace(valueDes);
          break;
        case r'duration_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationSlots = valueDes;
          break;
        case r'duration_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMinutes = valueDes;
          break;
        case r'categories':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.categories.replace(valueDes);
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SetFrequentServiceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetFrequentServiceResponseBuilder();
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

