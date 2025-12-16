//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/status_enum.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_ready_to_book_output.g.dart';

/// Output serializer per consultation dopo ready-to-book. La durata si calcola dal service_steps_snapshot.
///
/// Properties:
/// * [id] 
/// * [customer] 
/// * [customerName] 
/// * [service] - Servizio non prenotabile (bookable=False)
/// * [serviceName] 
/// * [status] 
/// * [serviceStepsSnapshot] - Step e durate definitive passate dal frontend. Immutabili dopo il salvataggio. Formato: [{'step_id': int, 'step_name': str, 'duration_minutes': int, active: bool, category_selected: int, category_name}]
/// * [finalDescription] - Descrizione dettagliata del servizio personalizzato dopo la consultation
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ConsultationReadyToBookOutput implements Built<ConsultationReadyToBookOutput, ConsultationReadyToBookOutputBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'customer')
  int get customer;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  /// Servizio non prenotabile (bookable=False)
  @BuiltValueField(wireName: r'service')
  int get service;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'status')
  StatusEnum get status;
  // enum statusEnum {  confirmed,  completed,  converted_to_booking,  ready_to_book,  cancelled,  };

  /// Step e durate definitive passate dal frontend. Immutabili dopo il salvataggio. Formato: [{'step_id': int, 'step_name': str, 'duration_minutes': int, active: bool, category_selected: int, category_name}]
  @BuiltValueField(wireName: r'service_steps_snapshot')
  Map<String, dynamic>? get serviceStepsSnapshot;

  /// Descrizione dettagliata del servizio personalizzato dopo la consultation
  @BuiltValueField(wireName: r'final_description')
  String get finalDescription;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  ConsultationReadyToBookOutput._();

  factory ConsultationReadyToBookOutput([void updates(ConsultationReadyToBookOutputBuilder b)]) = _$ConsultationReadyToBookOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationReadyToBookOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationReadyToBookOutput> get serializer => _$ConsultationReadyToBookOutputSerializer();
}

class _$ConsultationReadyToBookOutputSerializer implements PrimitiveSerializer<ConsultationReadyToBookOutput> {
  @override
  final Iterable<Type> types = const [ConsultationReadyToBookOutput, _$ConsultationReadyToBookOutput];

  @override
  final String wireName = r'ConsultationReadyToBookOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationReadyToBookOutput object, {
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
      specifiedType: const FullType(int),
    );
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'service';
    yield serializers.serialize(
      object.service,
      specifiedType: const FullType(int),
    );
    yield r'service_name';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(StatusEnum),
    );
    yield r'service_steps_snapshot';
    yield object.serviceStepsSnapshot == null ? null : serializers.serialize(
      object.serviceStepsSnapshot,
      specifiedType: const FullType.nullable(Map<String, dynamic>),
    );
    yield r'final_description';
    yield serializers.serialize(
      object.finalDescription,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationReadyToBookOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationReadyToBookOutputBuilder result,
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
            specifiedType: const FullType(int),
          ) as int;
          result.customer = valueDes;
          break;
        case r'customer_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.service = valueDes;
          break;
        case r'service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StatusEnum),
          ) as StatusEnum;
          result.status = valueDes;
          break;
        case r'service_steps_snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.serviceStepsSnapshot = valueDes;
          break;
        case r'final_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.finalDescription = valueDes;
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
  ConsultationReadyToBookOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationReadyToBookOutputBuilder();
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

