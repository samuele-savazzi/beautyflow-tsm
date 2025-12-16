//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calendar_booking_slot.g.dart';

/// CalendarBookingSlot
///
/// Properties:
/// * [slotStartIndex] - Slot start index (0-287)
/// * [slotEndIndex] - Slot end index (0-287)
/// * [startTime] - Start time (HH:MM)
/// * [endTime] - End time (HH:MM)
/// * [bookingId] - Booking ID
/// * [customerId] - Customer ID
/// * [customerName] - Customer full name
/// * [serviceName] - Service name
/// * [additionalServiceName] - Service name
/// * [color] - Hex color for visualization
/// * [isDisabled] - True if workstation is disabled
/// * [serviceStepsSnapshot] - Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
/// * [additionalServiceStepsSnapshot] - Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
@BuiltValue()
abstract class CalendarBookingSlot implements Built<CalendarBookingSlot, CalendarBookingSlotBuilder> {
  /// Slot start index (0-287)
  @BuiltValueField(wireName: r'slot_start_index')
  int get slotStartIndex;

  /// Slot end index (0-287)
  @BuiltValueField(wireName: r'slot_end_index')
  int get slotEndIndex;

  /// Start time (HH:MM)
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// End time (HH:MM)
  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  /// Booking ID
  @BuiltValueField(wireName: r'booking_id')
  int? get bookingId;

  /// Customer ID
  @BuiltValueField(wireName: r'customer_id')
  int? get customerId;

  /// Customer full name
  @BuiltValueField(wireName: r'customer_name')
  String? get customerName;

  /// Service name
  @BuiltValueField(wireName: r'service_name')
  String? get serviceName;

  /// Service name
  @BuiltValueField(wireName: r'additional_service_name')
  String? get additionalServiceName;

  /// Hex color for visualization
  @BuiltValueField(wireName: r'color')
  String get color;

  /// True if workstation is disabled
  @BuiltValueField(wireName: r'is_disabled')
  bool? get isDisabled;

  /// Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get serviceStepsSnapshot;

  /// Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'additional_service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get additionalServiceStepsSnapshot;

  CalendarBookingSlot._();

  factory CalendarBookingSlot([void updates(CalendarBookingSlotBuilder b)]) = _$CalendarBookingSlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalendarBookingSlotBuilder b) => b
      ..isDisabled = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CalendarBookingSlot> get serializer => _$CalendarBookingSlotSerializer();
}

class _$CalendarBookingSlotSerializer implements PrimitiveSerializer<CalendarBookingSlot> {
  @override
  final Iterable<Type> types = const [CalendarBookingSlot, _$CalendarBookingSlot];

  @override
  final String wireName = r'CalendarBookingSlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CalendarBookingSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slot_start_index';
    yield serializers.serialize(
      object.slotStartIndex,
      specifiedType: const FullType(int),
    );
    yield r'slot_end_index';
    yield serializers.serialize(
      object.slotEndIndex,
      specifiedType: const FullType(int),
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
    if (object.bookingId != null) {
      yield r'booking_id';
      yield serializers.serialize(
        object.bookingId,
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
    if (object.customerName != null) {
      yield r'customer_name';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceName != null) {
      yield r'service_name';
      yield serializers.serialize(
        object.serviceName,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalServiceName != null) {
      yield r'additional_service_name';
      yield serializers.serialize(
        object.additionalServiceName,
        specifiedType: const FullType(String),
      );
    }
    yield r'color';
    yield serializers.serialize(
      object.color,
      specifiedType: const FullType(String),
    );
    if (object.isDisabled != null) {
      yield r'is_disabled';
      yield serializers.serialize(
        object.isDisabled,
        specifiedType: const FullType(bool),
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
    CalendarBookingSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalendarBookingSlotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slot_start_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slotStartIndex = valueDes;
          break;
        case r'slot_end_index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.slotEndIndex = valueDes;
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
        case r'booking_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookingId = valueDes;
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
        case r'service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'additional_service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalServiceName = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'is_disabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDisabled = valueDes;
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
  CalendarBookingSlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalendarBookingSlotBuilder();
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

