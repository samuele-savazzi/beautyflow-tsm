//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_regular_service.g.dart';

/// Serializer per CustomerRegularService con campi read-only calcolati.
///
/// Properties:
/// * [id] 
/// * [customer] - Cliente marcato come abituale
/// * [customerName] - Nome completo del cliente
/// * [customerPhone] - Numero di telefono del cliente
/// * [service] - Servizio per cui il cliente è abituale
/// * [serviceName] - Nome del servizio
/// * [serviceId] - ID del servizio
/// * [markedRegularBy] - Operatore che ha marcato il cliente come abituale
/// * [markedByName] - Nome completo dell'operatore che ha marcato il cliente
/// * [markedRegularAt] - Timestamp della marcatura come cliente abituale
/// * [triggeredByConsultation] - Consultation che ha scatenato la marcatura come abituale
/// * [active] - Se False, il cliente non è più considerato abituale per questo servizio
/// * [notes] - Note interne sull'assegnazione come cliente abituale
/// * [totalConsultations] - Numero totale di consultations completate per questo servizio
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class CustomerRegularService implements Built<CustomerRegularService, CustomerRegularServiceBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Cliente marcato come abituale
  @BuiltValueField(wireName: r'customer')
  int get customer;

  /// Nome completo del cliente
  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  /// Numero di telefono del cliente
  @BuiltValueField(wireName: r'customer_phone')
  String get customerPhone;

  /// Servizio per cui il cliente è abituale
  @BuiltValueField(wireName: r'service')
  int get service;

  /// Nome del servizio
  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  /// ID del servizio
  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  /// Operatore che ha marcato il cliente come abituale
  @BuiltValueField(wireName: r'marked_regular_by')
  int? get markedRegularBy;

  /// Nome completo dell'operatore che ha marcato il cliente
  @BuiltValueField(wireName: r'marked_by_name')
  String get markedByName;

  /// Timestamp della marcatura come cliente abituale
  @BuiltValueField(wireName: r'marked_regular_at')
  DateTime get markedRegularAt;

  /// Consultation che ha scatenato la marcatura come abituale
  @BuiltValueField(wireName: r'triggered_by_consultation')
  int? get triggeredByConsultation;

  /// Se False, il cliente non è più considerato abituale per questo servizio
  @BuiltValueField(wireName: r'active')
  bool? get active;

  /// Note interne sull'assegnazione come cliente abituale
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Numero totale di consultations completate per questo servizio
  @BuiltValueField(wireName: r'total_consultations')
  int get totalConsultations;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  CustomerRegularService._();

  factory CustomerRegularService([void updates(CustomerRegularServiceBuilder b)]) = _$CustomerRegularService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerRegularServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerRegularService> get serializer => _$CustomerRegularServiceSerializer();
}

class _$CustomerRegularServiceSerializer implements PrimitiveSerializer<CustomerRegularService> {
  @override
  final Iterable<Type> types = const [CustomerRegularService, _$CustomerRegularService];

  @override
  final String wireName = r'CustomerRegularService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerRegularService object, {
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
    yield r'customer_phone';
    yield serializers.serialize(
      object.customerPhone,
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
    yield r'service_id';
    yield serializers.serialize(
      object.serviceId,
      specifiedType: const FullType(int),
    );
    if (object.markedRegularBy != null) {
      yield r'marked_regular_by';
      yield serializers.serialize(
        object.markedRegularBy,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'marked_by_name';
    yield serializers.serialize(
      object.markedByName,
      specifiedType: const FullType(String),
    );
    yield r'marked_regular_at';
    yield serializers.serialize(
      object.markedRegularAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.triggeredByConsultation != null) {
      yield r'triggered_by_consultation';
      yield serializers.serialize(
        object.triggeredByConsultation,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    yield r'total_consultations';
    yield serializers.serialize(
      object.totalConsultations,
      specifiedType: const FullType(int),
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
    CustomerRegularService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerRegularServiceBuilder result,
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
        case r'customer_phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerPhone = valueDes;
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
        case r'service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.serviceId = valueDes;
          break;
        case r'marked_regular_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.markedRegularBy = valueDes;
          break;
        case r'marked_by_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.markedByName = valueDes;
          break;
        case r'marked_regular_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.markedRegularAt = valueDes;
          break;
        case r'triggered_by_consultation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.triggeredByConsultation = valueDes;
          break;
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.active = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'total_consultations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalConsultations = valueDes;
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
  CustomerRegularService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerRegularServiceBuilder();
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

