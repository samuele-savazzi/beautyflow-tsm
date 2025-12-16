//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/operator_schedule.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'special_opening_request.g.dart';

/// Serializer per la richiesta di creazione apertura speciale.
///
/// Properties:
/// * [areaId] 
/// * [date] 
/// * [reason] 
/// * [morningOpen] 
/// * [morningOpeningTime] 
/// * [morningClosingTime] 
/// * [afternoonOpen] 
/// * [afternoonOpeningTime] 
/// * [afternoonClosingTime] 
/// * [getOperatorsOnly] 
/// * [operatorSchedules] 
@BuiltValue()
abstract class SpecialOpeningRequest implements Built<SpecialOpeningRequest, SpecialOpeningRequestBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'morning_open')
  bool? get morningOpen;

  @BuiltValueField(wireName: r'morning_opening_time')
  String? get morningOpeningTime;

  @BuiltValueField(wireName: r'morning_closing_time')
  String? get morningClosingTime;

  @BuiltValueField(wireName: r'afternoon_open')
  bool? get afternoonOpen;

  @BuiltValueField(wireName: r'afternoon_opening_time')
  String? get afternoonOpeningTime;

  @BuiltValueField(wireName: r'afternoon_closing_time')
  String? get afternoonClosingTime;

  @BuiltValueField(wireName: r'get_operators_only')
  bool? get getOperatorsOnly;

  @BuiltValueField(wireName: r'operator_schedules')
  BuiltList<OperatorSchedule>? get operatorSchedules;

  SpecialOpeningRequest._();

  factory SpecialOpeningRequest([void updates(SpecialOpeningRequestBuilder b)]) = _$SpecialOpeningRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpecialOpeningRequestBuilder b) => b
      ..morningOpen = false
      ..afternoonOpen = false
      ..getOperatorsOnly = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpecialOpeningRequest> get serializer => _$SpecialOpeningRequestSerializer();
}

class _$SpecialOpeningRequestSerializer implements PrimitiveSerializer<SpecialOpeningRequest> {
  @override
  final Iterable<Type> types = const [SpecialOpeningRequest, _$SpecialOpeningRequest];

  @override
  final String wireName = r'SpecialOpeningRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpecialOpeningRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.morningOpen != null) {
      yield r'morning_open';
      yield serializers.serialize(
        object.morningOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.morningOpeningTime != null) {
      yield r'morning_opening_time';
      yield serializers.serialize(
        object.morningOpeningTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.morningClosingTime != null) {
      yield r'morning_closing_time';
      yield serializers.serialize(
        object.morningClosingTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonOpen != null) {
      yield r'afternoon_open';
      yield serializers.serialize(
        object.afternoonOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.afternoonOpeningTime != null) {
      yield r'afternoon_opening_time';
      yield serializers.serialize(
        object.afternoonOpeningTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonClosingTime != null) {
      yield r'afternoon_closing_time';
      yield serializers.serialize(
        object.afternoonClosingTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.getOperatorsOnly != null) {
      yield r'get_operators_only';
      yield serializers.serialize(
        object.getOperatorsOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.operatorSchedules != null) {
      yield r'operator_schedules';
      yield serializers.serialize(
        object.operatorSchedules,
        specifiedType: const FullType(BuiltList, [FullType(OperatorSchedule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SpecialOpeningRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpecialOpeningRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'morning_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningOpen = valueDes;
          break;
        case r'morning_opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningOpeningTime = valueDes;
          break;
        case r'morning_closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningClosingTime = valueDes;
          break;
        case r'afternoon_open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonOpen = valueDes;
          break;
        case r'afternoon_opening_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonOpeningTime = valueDes;
          break;
        case r'afternoon_closing_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonClosingTime = valueDes;
          break;
        case r'get_operators_only':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.getOperatorsOnly = valueDes;
          break;
        case r'operator_schedules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OperatorSchedule)]),
          ) as BuiltList<OperatorSchedule>;
          result.operatorSchedules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpecialOpeningRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpecialOpeningRequestBuilder();
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

