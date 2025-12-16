//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_history_list_item.g.dart';

/// ServiceHistoryListItem
///
/// Properties:
/// * [id] 
/// * [customerName] 
/// * [serviceName] 
/// * [operatorName] 
/// * [serviceDate] 
/// * [durationMinutes] 
/// * [price] 
/// * [paid] 
/// * [paymentDate] 
/// * [widgetName] 
/// * [widgetValue] 
@BuiltValue()
abstract class ServiceHistoryListItem implements Built<ServiceHistoryListItem, ServiceHistoryListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'service_date')
  DateTime get serviceDate;

  @BuiltValueField(wireName: r'duration_minutes')
  int get durationMinutes;

  @BuiltValueField(wireName: r'price')
  double get price;

  @BuiltValueField(wireName: r'paid')
  bool get paid;

  @BuiltValueField(wireName: r'payment_date')
  DateTime? get paymentDate;

  @BuiltValueField(wireName: r'widget_name')
  String get widgetName;

  @BuiltValueField(wireName: r'widget_value')
  BuiltMap<String, Map<String, dynamic>?> get widgetValue;

  ServiceHistoryListItem._();

  factory ServiceHistoryListItem([void updates(ServiceHistoryListItemBuilder b)]) = _$ServiceHistoryListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceHistoryListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceHistoryListItem> get serializer => _$ServiceHistoryListItemSerializer();
}

class _$ServiceHistoryListItemSerializer implements PrimitiveSerializer<ServiceHistoryListItem> {
  @override
  final Iterable<Type> types = const [ServiceHistoryListItem, _$ServiceHistoryListItem];

  @override
  final String wireName = r'ServiceHistoryListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceHistoryListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'service_name';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'service_date';
    yield serializers.serialize(
      object.serviceDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'duration_minutes';
    yield serializers.serialize(
      object.durationMinutes,
      specifiedType: const FullType(int),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(double),
    );
    yield r'paid';
    yield serializers.serialize(
      object.paid,
      specifiedType: const FullType(bool),
    );
    yield r'payment_date';
    yield object.paymentDate == null ? null : serializers.serialize(
      object.paymentDate,
      specifiedType: const FullType.nullable(DateTime),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceHistoryListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceHistoryListItemBuilder result,
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
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'service_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.serviceDate = valueDes;
          break;
        case r'duration_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMinutes = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.price = valueDes;
          break;
        case r'paid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paid = valueDes;
          break;
        case r'payment_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paymentDate = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceHistoryListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceHistoryListItemBuilder();
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

