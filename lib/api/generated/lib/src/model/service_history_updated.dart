//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_history_updated.g.dart';

/// ServiceHistoryUpdated
///
/// Properties:
/// * [id] 
/// * [widgetName] 
/// * [widgetValue] 
/// * [paid] 
/// * [updatedAt] 
@BuiltValue()
abstract class ServiceHistoryUpdated implements Built<ServiceHistoryUpdated, ServiceHistoryUpdatedBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'widget_name')
  String get widgetName;

  @BuiltValueField(wireName: r'widget_value')
  BuiltMap<String, Map<String, dynamic>?> get widgetValue;

  @BuiltValueField(wireName: r'paid')
  bool get paid;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ServiceHistoryUpdated._();

  factory ServiceHistoryUpdated([void updates(ServiceHistoryUpdatedBuilder b)]) = _$ServiceHistoryUpdated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceHistoryUpdatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceHistoryUpdated> get serializer => _$ServiceHistoryUpdatedSerializer();
}

class _$ServiceHistoryUpdatedSerializer implements PrimitiveSerializer<ServiceHistoryUpdated> {
  @override
  final Iterable<Type> types = const [ServiceHistoryUpdated, _$ServiceHistoryUpdated];

  @override
  final String wireName = r'ServiceHistoryUpdated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceHistoryUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'widget_name';
    yield serializers.serialize(
      object.widgetName,
      specifiedType: const FullType(String),
    );
    yield r'widget_value';
    yield serializers.serialize(
      object.widgetValue,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'paid';
    yield serializers.serialize(
      object.paid,
      specifiedType: const FullType(bool),
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
    ServiceHistoryUpdated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceHistoryUpdatedBuilder result,
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
        case r'widget_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.widgetName = valueDes;
          break;
        case r'widget_value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.widgetValue.replace(valueDes);
          break;
        case r'paid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paid = valueDes;
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
  ServiceHistoryUpdated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceHistoryUpdatedBuilder();
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

