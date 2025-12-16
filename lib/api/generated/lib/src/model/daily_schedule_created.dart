//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_schedule_created.g.dart';

/// DailyScheduleCreated
///
/// Properties:
/// * [results] 
/// * [errors] 
@BuiltValue()
abstract class DailyScheduleCreated implements Built<DailyScheduleCreated, DailyScheduleCreatedBuilder> {
  @BuiltValueField(wireName: r'results')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get results;

  @BuiltValueField(wireName: r'errors')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get errors;

  DailyScheduleCreated._();

  factory DailyScheduleCreated([void updates(DailyScheduleCreatedBuilder b)]) = _$DailyScheduleCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyScheduleCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyScheduleCreated> get serializer => _$DailyScheduleCreatedSerializer();
}

class _$DailyScheduleCreatedSerializer implements PrimitiveSerializer<DailyScheduleCreated> {
  @override
  final Iterable<Type> types = const [DailyScheduleCreated, _$DailyScheduleCreated];

  @override
  final String wireName = r'DailyScheduleCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyScheduleCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyScheduleCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyScheduleCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.results.replace(valueDes);
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyScheduleCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyScheduleCreatedBuilder();
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

