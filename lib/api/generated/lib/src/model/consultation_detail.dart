//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_detail.g.dart';

/// ConsultationDetail
///
/// Properties:
/// * [id] 
/// * [operatorId] 
/// * [operatorName] 
/// * [customerId] 
/// * [customerName] 
/// * [customerEmail] 
/// * [customerPhone] 
/// * [serviceId] 
/// * [serviceName] 
/// * [serviceDescription] 
/// * [serviceQuestions] 
/// * [answers] 
/// * [bookingId] 
/// * [bookingDate] 
/// * [bookingStartTime] 
/// * [bookingEndTime] 
/// * [bookingDuration] 
/// * [status] 
/// * [statusDisplay] 
/// * [notes] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [completedAt] 
/// * [canBeConverted] 
/// * [canBeCancelled] 
@BuiltValue()
abstract class ConsultationDetail implements Built<ConsultationDetail, ConsultationDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'customer_id')
  int get customerId;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'customer_email')
  String get customerEmail;

  @BuiltValueField(wireName: r'customer_phone')
  String get customerPhone;

  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'service_description')
  String get serviceDescription;

  @BuiltValueField(wireName: r'service_questions')
  Map<String, dynamic>? get serviceQuestions;

  @BuiltValueField(wireName: r'answers')
  Map<String, dynamic>? get answers;

  @BuiltValueField(wireName: r'booking_id')
  int? get bookingId;

  @BuiltValueField(wireName: r'booking_date')
  Date? get bookingDate;

  @BuiltValueField(wireName: r'booking_start_time')
  String? get bookingStartTime;

  @BuiltValueField(wireName: r'booking_end_time')
  String? get bookingEndTime;

  @BuiltValueField(wireName: r'booking_duration')
  int? get bookingDuration;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'status_display')
  String get statusDisplay;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'completed_at')
  DateTime? get completedAt;

  @BuiltValueField(wireName: r'can_be_converted')
  bool get canBeConverted;

  @BuiltValueField(wireName: r'can_be_cancelled')
  bool get canBeCancelled;

  ConsultationDetail._();

  factory ConsultationDetail([void updates(ConsultationDetailBuilder b)]) = _$ConsultationDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationDetail> get serializer => _$ConsultationDetailSerializer();
}

class _$ConsultationDetailSerializer implements PrimitiveSerializer<ConsultationDetail> {
  @override
  final Iterable<Type> types = const [ConsultationDetail, _$ConsultationDetail];

  @override
  final String wireName = r'ConsultationDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
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
    yield r'customer_email';
    yield serializers.serialize(
      object.customerEmail,
      specifiedType: const FullType(String),
    );
    yield r'customer_phone';
    yield serializers.serialize(
      object.customerPhone,
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
    yield r'service_description';
    yield serializers.serialize(
      object.serviceDescription,
      specifiedType: const FullType(String),
    );
    yield r'service_questions';
    yield object.serviceQuestions == null ? null : serializers.serialize(
      object.serviceQuestions,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'answers';
    yield object.answers == null ? null : serializers.serialize(
      object.answers,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'booking_id';
    yield object.bookingId == null ? null : serializers.serialize(
      object.bookingId,
      specifiedType: const FullType.nullable(int),
    );
    yield r'booking_date';
    yield object.bookingDate == null ? null : serializers.serialize(
      object.bookingDate,
      specifiedType: const FullType.nullable(Date),
    );
    yield r'booking_start_time';
    yield object.bookingStartTime == null ? null : serializers.serialize(
      object.bookingStartTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'booking_end_time';
    yield object.bookingEndTime == null ? null : serializers.serialize(
      object.bookingEndTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'booking_duration';
    yield object.bookingDuration == null ? null : serializers.serialize(
      object.bookingDuration,
      specifiedType: const FullType.nullable(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'status_display';
    yield serializers.serialize(
      object.statusDisplay,
      specifiedType: const FullType(String),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
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
    yield r'completed_at';
    yield object.completedAt == null ? null : serializers.serialize(
      object.completedAt,
      specifiedType: const FullType.nullable(DateTime),
    );
    yield r'can_be_converted';
    yield serializers.serialize(
      object.canBeConverted,
      specifiedType: const FullType(bool),
    );
    yield r'can_be_cancelled';
    yield serializers.serialize(
      object.canBeCancelled,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationDetailBuilder result,
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
        case r'customer_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerEmail = valueDes;
          break;
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
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
        case r'service_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceDescription = valueDes;
          break;
        case r'service_questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.serviceQuestions = valueDes;
          break;
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.answers = valueDes;
          break;
        case r'booking_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookingId = valueDes;
          break;
        case r'booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.bookingDate = valueDes;
          break;
        case r'booking_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingStartTime = valueDes;
          break;
        case r'booking_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bookingEndTime = valueDes;
          break;
        case r'booking_duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bookingDuration = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'status_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusDisplay = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
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
        case r'completed_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.completedAt = valueDes;
          break;
        case r'can_be_converted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canBeConverted = valueDes;
          break;
        case r'can_be_cancelled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canBeCancelled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsultationDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationDetailBuilder();
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

