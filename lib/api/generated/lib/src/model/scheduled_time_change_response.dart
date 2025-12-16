//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/corrections_applied.dart';
import 'package:beautyflow_api/src/model/scheduled_time_slot_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_time_change_response.g.dart';

/// Serializer per la risposta delle modifiche programmate.
///
/// Properties:
/// * [id] 
/// * [areaId] 
/// * [areaName] 
/// * [effectiveFrom] 
/// * [reason] 
/// * [isActive] 
/// * [createdAt] 
/// * [timeSlots] 
/// * [correctionsApplied] 
@BuiltValue()
abstract class ScheduledTimeChangeResponse implements Built<ScheduledTimeChangeResponse, ScheduledTimeChangeResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'area_name')
  String get areaName;

  @BuiltValueField(wireName: r'effective_from')
  Date get effectiveFrom;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'is_active')
  bool get isActive;

  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<ScheduledTimeSlotResponse> get timeSlots;

  @BuiltValueField(wireName: r'corrections_applied')
  CorrectionsApplied? get correctionsApplied;

  ScheduledTimeChangeResponse._();

  factory ScheduledTimeChangeResponse([void updates(ScheduledTimeChangeResponseBuilder b)]) = _$ScheduledTimeChangeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledTimeChangeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledTimeChangeResponse> get serializer => _$ScheduledTimeChangeResponseSerializer();
}

class _$ScheduledTimeChangeResponseSerializer implements PrimitiveSerializer<ScheduledTimeChangeResponse> {
  @override
  final Iterable<Type> types = const [ScheduledTimeChangeResponse, _$ScheduledTimeChangeResponse];

  @override
  final String wireName = r'ScheduledTimeChangeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledTimeChangeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'area_name';
    yield serializers.serialize(
      object.areaName,
      specifiedType: const FullType(String),
    );
    yield r'effective_from';
    yield serializers.serialize(
      object.effectiveFrom,
      specifiedType: const FullType(Date),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'is_active';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'time_slots';
    yield serializers.serialize(
      object.timeSlots,
      specifiedType: const FullType(BuiltList, [FullType(ScheduledTimeSlotResponse)]),
    );
    yield r'corrections_applied';
    yield object.correctionsApplied == null ? null : serializers.serialize(
      object.correctionsApplied,
      specifiedType: const FullType.nullable(CorrectionsApplied),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledTimeChangeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduledTimeChangeResponseBuilder result,
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
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'area_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.areaName = valueDes;
          break;
        case r'effective_from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.effectiveFrom = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'is_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ScheduledTimeSlotResponse)]),
          ) as BuiltList<ScheduledTimeSlotResponse>;
          result.timeSlots.replace(valueDes);
          break;
        case r'corrections_applied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CorrectionsApplied),
          ) as CorrectionsApplied?;
          if (valueDes == null) continue;
          result.correctionsApplied.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledTimeChangeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledTimeChangeResponseBuilder();
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

