//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'booking_detail.g.dart';

/// BookingDetail
///
/// Properties:
/// * [id] 
/// * [bookingDate] 
/// * [startTime] 
/// * [endTime] 
/// * [durationMinutes] 
/// * [totalPrice] 
/// * [status] 
/// * [operatorName] 
/// * [operatorPhoto] 
/// * [areaName] 
/// * [primaryServiceName] 
/// * [additionalServiceName] 
/// * [workstationName] 
/// * [notes] 
/// * [serviceStepsSnapshot] - Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
/// * [additionalServiceStepsSnapshot] - Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
@BuiltValue()
abstract class BookingDetail implements Built<BookingDetail, BookingDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'booking_date')
  String get bookingDate;

  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  @BuiltValueField(wireName: r'duration_minutes')
  int get durationMinutes;

  @BuiltValueField(wireName: r'total_price')
  double get totalPrice;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'operator_name')
  String get operatorName;

  @BuiltValueField(wireName: r'operator_photo')
  String get operatorPhoto;

  @BuiltValueField(wireName: r'area_name')
  String get areaName;

  @BuiltValueField(wireName: r'primary_service_name')
  String get primaryServiceName;

  @BuiltValueField(wireName: r'additional_service_name')
  String? get additionalServiceName;

  @BuiltValueField(wireName: r'workstation_name')
  String get workstationName;

  @BuiltValueField(wireName: r'notes')
  String get notes;

  /// Snapshot step servizio primario: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get serviceStepsSnapshot;

  /// Snapshot step servizio aggiuntivo: [{'step_id': int, 'step_name': str, 'duration_minutes': int, 'active': bool, 'category_selected': int, 'category_name': str}]
  @BuiltValueField(wireName: r'additional_service_steps_snapshot')
  BuiltList<BuiltMap<String, Map<String, dynamic>?>>? get additionalServiceStepsSnapshot;

  BookingDetail._();

  factory BookingDetail([void updates(BookingDetailBuilder b)]) = _$BookingDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookingDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookingDetail> get serializer => _$BookingDetailSerializer();
}

class _$BookingDetailSerializer implements PrimitiveSerializer<BookingDetail> {
  @override
  final Iterable<Type> types = const [BookingDetail, _$BookingDetail];

  @override
  final String wireName = r'BookingDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookingDetail object, {
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
      specifiedType: const FullType(String),
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
    yield r'total_price';
    yield serializers.serialize(
      object.totalPrice,
      specifiedType: const FullType(double),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'operator_name';
    yield serializers.serialize(
      object.operatorName,
      specifiedType: const FullType(String),
    );
    yield r'operator_photo';
    yield serializers.serialize(
      object.operatorPhoto,
      specifiedType: const FullType(String),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
    );
    yield r'primary_service_name';
    yield serializers.serialize(
      object.primaryServiceName,
      specifiedType: const FullType(String),
    );
    yield r'additional_service_name';
    yield object.additionalServiceName == null ? null : serializers.serialize(
      object.additionalServiceName,
      specifiedType: const FullType.nullable(String),
    );
    yield r'workstation_name';
    yield serializers.serialize(
      object.workstationName,
      specifiedType: const FullType(String),
    );
    yield r'notes';
    yield serializers.serialize(
      object.notes,
      specifiedType: const FullType(String),
    );
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
    BookingDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookingDetailBuilder result,
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
        case r'total_price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.totalPrice = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.operatorPhoto = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaName = valueDes;
          break;
        case r'primary_service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryServiceName = valueDes;
          break;
        case r'additional_service_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.additionalServiceName = valueDes;
          break;
        case r'workstation_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workstationName = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  BookingDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookingDetailBuilder();
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

