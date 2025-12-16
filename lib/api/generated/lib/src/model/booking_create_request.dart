//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_create_request.g.dart';

/// BookingCreateRequest
///
/// Properties:
/// * [operatorId] - ID dell'operatore primario
/// * [areaId] - ID dell'area
/// * [additionalOperatorId] - ID operatore aggiuntivo per dual operators (esegue additionalService)
/// * [bookingDate] - Data prenotazione (YYYY-MM-DD)
/// * [startTime] - Orario inizio (HH:MM)
/// * [totalPrice] - Prezzo totale
/// * [primaryServiceId] - ID servizio primario
/// * [additionalServiceId] - ID servizio aggiuntivo (opzionale, richiesto per dual operators)
/// * [timesPrimaryService] - Lista tempi servizio primario con formato [{active: bool, time: int}]
/// * [timesAdditionalService] - Lista tempi servizio aggiuntivo (richiesto se additional_operator_id)
/// * [serviceStepsSnapshot] - Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
/// * [additionalServiceStepsSnapshot] - Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
/// * [primaryIdWorkstation] - ID postazione primaria
/// * [secondaryIdWorkstation] - ID postazione secondaria (per additionalService con dual operators)
/// * [customerId] - ID customer registrato (ometti per guest bookings)
/// * [guestFirstName] - Nome guest (richiesto se non customer_id)
/// * [guestLastName] - Cognome guest (richiesto se non customer_id)
/// * [guestPhoneNumber] - Telefono guest (richiesto se non customer_id)
/// * [consultationId] - ID consultazione da convertire in booking (opzionale)
/// * [consultationServiceId] - ID servizio della consultazione (per dual operators: specifica a quale booking linkare)
@BuiltValue()
abstract class BookingCreateRequest implements Built<BookingCreateRequest, BookingCreateRequestBuilder> {
  /// ID dell'operatore primario
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  /// ID dell'area
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// ID operatore aggiuntivo per dual operators (esegue additionalService)
  @BuiltValueField(wireName: r'additional_operator_id')
  int? get additionalOperatorId;

  /// Data prenotazione (YYYY-MM-DD)
  @BuiltValueField(wireName: r'booking_date')
  String get bookingDate;

  /// Orario inizio (HH:MM)
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// Prezzo totale
  @BuiltValueField(wireName: r'total_price')
  double get totalPrice;

  /// ID servizio primario
  @BuiltValueField(wireName: r'primaryServiceId')
  int get primaryServiceId;

  /// ID servizio aggiuntivo (opzionale, richiesto per dual operators)
  @BuiltValueField(wireName: r'additionalServiceId')
  int? get additionalServiceId;

  /// Lista tempi servizio primario con formato [{active: bool, time: int}]
  @BuiltValueField(wireName: r'timesPrimaryService')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>> get timesPrimaryService;

  /// Lista tempi servizio aggiuntivo (richiesto se additional_operator_id)
  @BuiltValueField(wireName: r'timesAdditionalService')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get timesAdditionalService;

  /// Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get serviceStepsSnapshot;

  /// Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'additional_service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get additionalServiceStepsSnapshot;

  /// ID postazione primaria
  @BuiltValueField(wireName: r'primaryIdWorkstation')
  int get primaryIdWorkstation;

  /// ID postazione secondaria (per additionalService con dual operators)
  @BuiltValueField(wireName: r'secondaryIdWorkstation')
  int? get secondaryIdWorkstation;

  /// ID customer registrato (ometti per guest bookings)
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// Nome guest (richiesto se non customer_id)
  @BuiltValueField(wireName: r'guest_first_name')
  String? get guestFirstName;

  /// Cognome guest (richiesto se non customer_id)
  @BuiltValueField(wireName: r'guest_last_name')
  String? get guestLastName;

  /// Telefono guest (richiesto se non customer_id)
  @BuiltValueField(wireName: r'guest_phone_number')
  String? get guestPhoneNumber;

  /// ID consultazione da convertire in booking (opzionale)
  @BuiltValueField(wireName: r'consultation_id')
  int? get consultationId;

  /// ID servizio della consultazione (per dual operators: specifica a quale booking linkare)
  @BuiltValueField(wireName: r'consultation_service_id')
  int? get consultationServiceId;

  BookingCreateRequest._();

  factory BookingCreateRequest([void updates(BookingCreateRequestBuilder b)]) = _$BookingCreateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingCreateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingCreateRequest> get serializer => _$BookingCreateRequestSerializer();
}

class _$BookingCreateRequestSerializer implements PrimitiveSerializer<BookingCreateRequest> {
  @override
  final Iterable<Type> types = const [BookingCreateRequest, _$BookingCreateRequest];

  @override
  final String wireName = r'BookingCreateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    if (object.additionalOperatorId != null) {
      yield r'additional_operator_id';
      yield serializers.serialize(
        object.additionalOperatorId,
        specifiedType: const FullType(int),
      );
    }
    yield r'booking_date';
    yield serializers.serialize(
      object.bookingDate,
      specifiedType: const FullType(String),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    yield r'total_price';
    yield serializers.serialize(
      object.totalPrice,
      specifiedType: const FullType(double),
    );
    yield r'primaryServiceId';
    yield serializers.serialize(
      object.primaryServiceId,
      specifiedType: const FullType(int),
    );
    if (object.additionalServiceId != null) {
      yield r'additionalServiceId';
      yield serializers.serialize(
        object.additionalServiceId,
        specifiedType: const FullType(int),
      );
    }
    yield r'timesPrimaryService';
    yield serializers.serialize(
      object.timesPrimaryService,
      specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
    );
    if (object.timesAdditionalService != null) {
      yield r'timesAdditionalService';
      yield serializers.serialize(
        object.timesAdditionalService,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
      );
    }
    if (object.serviceStepsSnapshot != null) {
      yield r'service_steps_snapshot';
      yield serializers.serialize(
        object.serviceStepsSnapshot,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
      );
    }
    if (object.additionalServiceStepsSnapshot != null) {
      yield r'additional_service_steps_snapshot';
      yield serializers.serialize(
        object.additionalServiceStepsSnapshot,
        specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
      );
    }
    yield r'primaryIdWorkstation';
    yield serializers.serialize(
      object.primaryIdWorkstation,
      specifiedType: const FullType(int),
    );
    if (object.secondaryIdWorkstation != null) {
      yield r'secondaryIdWorkstation';
      yield serializers.serialize(
        object.secondaryIdWorkstation,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.guestFirstName != null) {
      yield r'guest_first_name';
      yield serializers.serialize(
        object.guestFirstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.guestLastName != null) {
      yield r'guest_last_name';
      yield serializers.serialize(
        object.guestLastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.guestPhoneNumber != null) {
      yield r'guest_phone_number';
      yield serializers.serialize(
        object.guestPhoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.consultationId != null) {
      yield r'consultation_id';
      yield serializers.serialize(
        object.consultationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.consultationServiceId != null) {
      yield r'consultation_service_id';
      yield serializers.serialize(
        object.consultationServiceId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookingCreateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingCreateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'additional_operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.additionalOperatorId = valueDes;
          break;
        case r'booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bookingDate = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'total_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPrice = valueDes;
          break;
        case r'primaryServiceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.primaryServiceId = valueDes;
          break;
        case r'additionalServiceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.additionalServiceId = valueDes;
          break;
        case r'timesPrimaryService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.timesPrimaryService.replace(valueDes);
          break;
        case r'timesAdditionalService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.timesAdditionalService.replace(valueDes);
          break;
        case r'service_steps_snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.serviceStepsSnapshot.replace(valueDes);
          break;
        case r'additional_service_steps_snapshot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)])]),
          ) as BuiltList<BuiltMap<String, Map<String, dynamic>?>>;
          result.additionalServiceStepsSnapshot.replace(valueDes);
          break;
        case r'primaryIdWorkstation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.primaryIdWorkstation = valueDes;
          break;
        case r'secondaryIdWorkstation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.secondaryIdWorkstation = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.customerId = valueDes;
          break;
        case r'guest_first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guestFirstName = valueDes;
          break;
        case r'guest_last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guestLastName = valueDes;
          break;
        case r'guest_phone_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guestPhoneNumber = valueDes;
          break;
        case r'consultation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consultationId = valueDes;
          break;
        case r'consultation_service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.consultationServiceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookingCreateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingCreateRequestBuilder();
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

