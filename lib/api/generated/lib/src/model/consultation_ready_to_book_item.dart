//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_ready_to_book_item.g.dart';

/// ConsultationReadyToBookItem
///
/// Properties:
/// * [id] 
/// * [customerId] 
/// * [customerName] 
/// * [customerPhone] 
/// * [operatorId] 
/// * [operatorName] 
/// * [serviceId] 
/// * [serviceName] 
/// * [finalDescription] 
/// * [serviceStepsSnapshot] 
/// * [totalDuration] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ConsultationReadyToBookItem implements Built<ConsultationReadyToBookItem, ConsultationReadyToBookItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'customer_phone')
  String get customerPhone;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'final_description')
  String get finalDescription;

  @BuiltValueField(wireName: r'service_steps_snapshot')
  Map<String, dynamic>? get serviceStepsSnapshot;

  @BuiltValueField(wireName: r'total_duration')
  int? get totalDuration;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ConsultationReadyToBookItem._();

  factory ConsultationReadyToBookItem([void updates(ConsultationReadyToBookItemBuilder b)]) = _$ConsultationReadyToBookItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationReadyToBookItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationReadyToBookItem> get serializer => _$ConsultationReadyToBookItemSerializer();
}

class _$ConsultationReadyToBookItemSerializer implements PrimitiveSerializer<ConsultationReadyToBookItem> {
  @override
  final Iterable<Type> types = const [ConsultationReadyToBookItem, _$ConsultationReadyToBookItem];

  @override
  final String wireName = r'ConsultationReadyToBookItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationReadyToBookItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'customer_id';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(int),
    );
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'customer_phone';
    yield serializers.serialize(
      object.customerPhone,
      specifiedType: const FullType(String),
    );
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'service_id';
    yield serializers.serialize(
      object.serviceId,
      specifiedType: const FullType(int),
    );
    yield r'service_name';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'final_description';
    yield serializers.serialize(
      object.finalDescription,
      specifiedType: const FullType(String),
    );
    yield r'service_steps_snapshot';
    yield object.serviceStepsSnapshot == null ? null : serializers.serialize(
      object.serviceStepsSnapshot,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'total_duration';
    yield object.totalDuration == null ? null : serializers.serialize(
      object.totalDuration,
      specifiedType: const FullType.nullable(int),
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
    ConsultationReadyToBookItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationReadyToBookItemBuilder result,
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
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
          break;
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorName = valueDes;
          break;
        case r'service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.serviceId = valueDes;
          break;
        case r'service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'final_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.finalDescription = valueDes;
          break;
        case r'service_steps_snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.serviceStepsSnapshot = valueDes;
          break;
        case r'total_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalDuration = valueDes;
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
  ConsultationReadyToBookItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationReadyToBookItemBuilder();
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

