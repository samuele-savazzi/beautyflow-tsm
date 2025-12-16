//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_history_update.g.dart';

/// ServiceHistoryUpdate
///
/// Properties:
/// * [widgetName] 
/// * [widgetValue] 
/// * [paymentMethod] 
/// * [paid] 
@BuiltValue()
abstract class ServiceHistoryUpdate implements Built<ServiceHistoryUpdate, ServiceHistoryUpdateBuilder> {
  @BuiltValueField(wireName: r'widget_name')
  String? get widgetName;

  @BuiltValueField(wireName: r'widget_value')
  BuiltMap<String, Map<String, dynamic>?>? get widgetValue;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'paid')
  bool? get paid;

  ServiceHistoryUpdate._();

  factory ServiceHistoryUpdate([void updates(ServiceHistoryUpdateBuilder b)]) = _$ServiceHistoryUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceHistoryUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceHistoryUpdate> get serializer => _$ServiceHistoryUpdateSerializer();
}

class _$ServiceHistoryUpdateSerializer implements PrimitiveSerializer<ServiceHistoryUpdate> {
  @override
  final Iterable<Type> types = const [ServiceHistoryUpdate, _$ServiceHistoryUpdate];

  @override
  final String wireName = r'ServiceHistoryUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceHistoryUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.widgetName != null) {
      yield r'widget_name';
      yield serializers.serialize(
        object.widgetName,
        specifiedType: const FullType(String),
      );
    }
    if (object.widgetValue != null) {
      yield r'widget_value';
      yield serializers.serialize(
        object.widgetValue,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paid != null) {
      yield r'paid';
      yield serializers.serialize(
        object.paid,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceHistoryUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceHistoryUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'paid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceHistoryUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceHistoryUpdateBuilder();
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

