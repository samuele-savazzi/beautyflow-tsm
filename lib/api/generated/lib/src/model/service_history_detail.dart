//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/operator_info.dart';
import 'package:beautyflow_api/src/model/service_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/customer_info.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_history_detail.g.dart';

/// ServiceHistoryDetail
///
/// Properties:
/// * [id] 
/// * [customer] 
/// * [service] 
/// * [operator_] 
/// * [serviceDate] 
/// * [durationMinutes] 
/// * [price] 
/// * [paid] 
/// * [paymentDate] 
/// * [paymentMethod] 
/// * [widgetName] 
/// * [widgetValue] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ServiceHistoryDetail implements Built<ServiceHistoryDetail, ServiceHistoryDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'customer')
  CustomerInfo get customer;

  @BuiltValueField(wireName: r'service')
  ServiceInfo get service;

  @BuiltValueField(wireName: r'operator')
  OperatorInfo get operator_;

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

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'widget_name')
  String get widgetName;

  @BuiltValueField(wireName: r'widget_value')
  BuiltMap<String, Map<String, dynamic>?> get widgetValue;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ServiceHistoryDetail._();

  factory ServiceHistoryDetail([void updates(ServiceHistoryDetailBuilder b)]) = _$ServiceHistoryDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceHistoryDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceHistoryDetail> get serializer => _$ServiceHistoryDetailSerializer();
}

class _$ServiceHistoryDetailSerializer implements PrimitiveSerializer<ServiceHistoryDetail> {
  @override
  final Iterable<Type> types = const [ServiceHistoryDetail, _$ServiceHistoryDetail];

  @override
  final String wireName = r'ServiceHistoryDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceHistoryDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'customer';
    yield serializers.serialize(
      object.customer,
      specifiedType: const FullType(CustomerInfo),
    );
    yield r'service';
    yield serializers.serialize(
      object.service,
      specifiedType: const FullType(ServiceInfo),
    );
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(OperatorInfo),
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
    yield r'payment_method';
    yield object.paymentMethod == null ? null : serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType.nullable(String),
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
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
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
    ServiceHistoryDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServiceHistoryDetailBuilder result,
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
        case r'customer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CustomerInfo),
          ) as CustomerInfo;
          result.customer.replace(valueDes);
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ServiceInfo),
          ) as ServiceInfo;
          result.service.replace(valueDes);
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperatorInfo),
          ) as OperatorInfo;
          result.operator_.replace(valueDes);
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
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
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
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
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
  ServiceHistoryDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceHistoryDetailBuilder();
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

