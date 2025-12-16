//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/product_sale.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'today_booking_detail.g.dart';

/// Serializer ottimizzato per booking di oggi con tutte le info
///
/// Properties:
/// * [id] 
/// * [bookingDate] 
/// * [startTime] 
/// * [endTime] 
/// * [durationMinutes] 
/// * [status] 
/// * [customerId] 
/// * [customerName] 
/// * [customerPhone] 
/// * [customerEmail] 
/// * [isGuest] 
/// * [operatorId] 
/// * [operatorName] 
/// * [operatorPhoto] 
/// * [additionalOperatorId] 
/// * [additionalOperatorName] 
/// * [serviceId] 
/// * [serviceName] 
/// * [additionalServiceId] 
/// * [additionalServiceName] 
/// * [workstationId] 
/// * [workstationName] 
/// * [totalPrice] 
/// * [paymentMethod] 
/// * [cashAmount] 
/// * [cardAmount] 
/// * [isConsultation] 
/// * [productsSold] 
/// * [totalProductsRevenue] 
/// * [notes] 
/// * [serviceStepsSnapshot] - Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
/// * [additionalServiceStepsSnapshot] - Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
@BuiltValue()
abstract class TodayBookingDetail implements Built<TodayBookingDetail, TodayBookingDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'booking_date')
  Date get bookingDate;

  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  @BuiltValueField(wireName: r'duration_minutes')
  int get durationMinutes;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  @BuiltValueField(wireName: r'customer_name')
  String get customerName;

  @BuiltValueField(wireName: r'customer_phone')
  String? get customerPhone;

  @BuiltValueField(wireName: r'customer_email')
  String? get customerEmail;

  @BuiltValueField(wireName: r'is_guest')
  bool get isGuest;

  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'operator_photo')
  String? get operatorPhoto;

  @BuiltValueField(wireName: r'additional_operator_id')
  int? get additionalOperatorId;

  @BuiltValueField(wireName: r'additional_operator_name')
  String? get additionalOperatorName;

  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  @BuiltValueField(wireName: r'service_name')
  String get serviceName;

  @BuiltValueField(wireName: r'additional_service_id')
  int? get additionalServiceId;

  @BuiltValueField(wireName: r'additional_service_name')
  String? get additionalServiceName;

  @BuiltValueField(wireName: r'workstation_id')
  int? get workstationId;

  @BuiltValueField(wireName: r'workstation_name')
  String? get workstationName;

  @BuiltValueField(wireName: r'total_price')
  double get totalPrice;

  @BuiltValueField(wireName: r'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: r'cash_amount')
  double get cashAmount;

  @BuiltValueField(wireName: r'card_amount')
  double get cardAmount;

  @BuiltValueField(wireName: r'is_consultation')
  bool get isConsultation;

  @BuiltValueField(wireName: r'products_sold')
  BuiltList<ProductSale> get productsSold;

  @BuiltValueField(wireName: r'total_products_revenue')
  double get totalProductsRevenue;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get serviceStepsSnapshot;

  /// Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'additional_service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get additionalServiceStepsSnapshot;

  TodayBookingDetail._();

  factory TodayBookingDetail([void updates(TodayBookingDetailBuilder b)]) = _$TodayBookingDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TodayBookingDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TodayBookingDetail> get serializer => _$TodayBookingDetailSerializer();
}

class _$TodayBookingDetailSerializer implements PrimitiveSerializer<TodayBookingDetail> {
  @override
  final Iterable<Type> types = const [TodayBookingDetail, _$TodayBookingDetail];

  @override
  final String wireName = r'TodayBookingDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TodayBookingDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'booking_date';
    yield serializers.serialize(
      object.bookingDate,
      specifiedType: const FullType(Date),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    yield r'end_time';
    yield serializers.serialize(
      object.endTime,
      specifiedType: const FullType(String),
    );
    yield r'duration_minutes';
    yield serializers.serialize(
      object.durationMinutes,
      specifiedType: const FullType(int),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.customerId != null) {
      yield r'customer_id';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'customer_name';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    if (object.customerPhone != null) {
      yield r'customer_phone';
      yield serializers.serialize(
        object.customerPhone,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerEmail != null) {
      yield r'customer_email';
      yield serializers.serialize(
        object.customerEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'is_guest';
    yield serializers.serialize(
      object.isGuest,
      specifiedType: const FullType(bool),
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
    if (object.operatorPhoto != null) {
      yield r'operator_photo';
      yield serializers.serialize(
        object.operatorPhoto,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.additionalOperatorId != null) {
      yield r'additional_operator_id';
      yield serializers.serialize(
        object.additionalOperatorId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.additionalOperatorName != null) {
      yield r'additional_operator_name';
      yield serializers.serialize(
        object.additionalOperatorName,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.additionalServiceId != null) {
      yield r'additional_service_id';
      yield serializers.serialize(
        object.additionalServiceId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.additionalServiceName != null) {
      yield r'additional_service_name';
      yield serializers.serialize(
        object.additionalServiceName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.workstationId != null) {
      yield r'workstation_id';
      yield serializers.serialize(
        object.workstationId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.workstationName != null) {
      yield r'workstation_name';
      yield serializers.serialize(
        object.workstationName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'total_price';
    yield serializers.serialize(
      object.totalPrice,
      specifiedType: const FullType(double),
    );
    if (object.paymentMethod != null) {
      yield r'payment_method';
      yield serializers.serialize(
        object.paymentMethod,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'cash_amount';
    yield serializers.serialize(
      object.cashAmount,
      specifiedType: const FullType(double),
    );
    yield r'card_amount';
    yield serializers.serialize(
      object.cardAmount,
      specifiedType: const FullType(double),
    );
    yield r'is_consultation';
    yield serializers.serialize(
      object.isConsultation,
      specifiedType: const FullType(bool),
    );
    yield r'products_sold';
    yield serializers.serialize(
      object.productsSold,
      specifiedType: const FullType(BuiltList, [FullType(ProductSale)]),
    );
    yield r'total_products_revenue';
    yield serializers.serialize(
      object.totalProductsRevenue,
      specifiedType: const FullType(double),
    );
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType.nullable(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TodayBookingDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TodayBookingDetailBuilder result,
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
        case r'booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.bookingDate = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endTime = valueDes;
          break;
        case r'duration_minutes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.durationMinutes = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'customer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerPhone = valueDes;
          break;
        case r'customer_email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerEmail = valueDes;
          break;
        case r'is_guest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isGuest = valueDes;
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
        case r'operator_photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.operatorPhoto = valueDes;
          break;
        case r'additional_operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.additionalOperatorId = valueDes;
          break;
        case r'additional_operator_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.additionalOperatorName = valueDes;
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
        case r'additional_service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.additionalServiceId = valueDes;
          break;
        case r'additional_service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.additionalServiceName = valueDes;
          break;
        case r'workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.workstationId = valueDes;
          break;
        case r'workstation_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.workstationName = valueDes;
          break;
        case r'total_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPrice = valueDes;
          break;
        case r'payment_method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.paymentMethod = valueDes;
          break;
        case r'cash_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cashAmount = valueDes;
          break;
        case r'card_amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.cardAmount = valueDes;
          break;
        case r'is_consultation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isConsultation = valueDes;
          break;
        case r'products_sold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductSale)]),
          ) as BuiltList<ProductSale>;
          result.productsSold.replace(valueDes);
          break;
        case r'total_products_revenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalProductsRevenue = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.notes = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TodayBookingDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TodayBookingDetailBuilder();
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

