//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/timeslot.dart';
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/inconsistence_corrected.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scheduled_time_change_request.g.dart';

/// ScheduledTimeChangeRequest
///
/// Properties:
/// * [areaId] 
/// * [dayId] 
/// * [timeslot] 
/// * [effectiveStartDate] 
/// * [checkInconsistenceOnly] 
/// * [incostenceCorrected] 
@BuiltValue()
abstract class ScheduledTimeChangeRequest implements Built<ScheduledTimeChangeRequest, ScheduledTimeChangeRequestBuilder> {
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  @BuiltValueField(wireName: r'day_id')
  int get dayId;

  @BuiltValueField(wireName: r'timeslot')
  BuiltList<Timeslot> get timeslot;

  @BuiltValueField(wireName: r'effective_start_date')
  Date get effectiveStartDate;

  @BuiltValueField(wireName: r'check_inconsistence_only')
  bool? get checkInconsistenceOnly;

  @BuiltValueField(wireName: r'incostence_corrected')
  BuiltList<InconsistenceCorrected>? get incostenceCorrected;

  ScheduledTimeChangeRequest._();

  factory ScheduledTimeChangeRequest([void updates(ScheduledTimeChangeRequestBuilder b)]) = _$ScheduledTimeChangeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduledTimeChangeRequestBuilder b) => b
      ..checkInconsistenceOnly = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduledTimeChangeRequest> get serializer => _$ScheduledTimeChangeRequestSerializer();
}

class _$ScheduledTimeChangeRequestSerializer implements PrimitiveSerializer<ScheduledTimeChangeRequest> {
  @override
  final Iterable<Type> types = const [ScheduledTimeChangeRequest, _$ScheduledTimeChangeRequest];

  @override
  final String wireName = r'ScheduledTimeChangeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduledTimeChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'day_id';
    yield serializers.serialize(
      object.dayId,
      specifiedType: const FullType(int),
    );
    yield r'timeslot';
    yield serializers.serialize(
      object.timeslot,
      specifiedType: const FullType(BuiltList, [FullType(Timeslot)]),
    );
    yield r'effective_start_date';
    yield serializers.serialize(
      object.effectiveStartDate,
      specifiedType: const FullType(Date),
    );
    if (object.checkInconsistenceOnly != null) {
      yield r'check_inconsistence_only';
      yield serializers.serialize(
        object.checkInconsistenceOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.incostenceCorrected != null) {
      yield r'incostence_corrected';
      yield serializers.serialize(
        object.incostenceCorrected,
        specifiedType: const FullType.nullable(BuiltList, [FullType(InconsistenceCorrected)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduledTimeChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScheduledTimeChangeRequestBuilder result,
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
        case r'day_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.dayId = valueDes;
          break;
        case r'timeslot':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Timeslot)]),
          ) as BuiltList<Timeslot>;
          result.timeslot.replace(valueDes);
          break;
        case r'effective_start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.effectiveStartDate = valueDes;
          break;
        case r'check_inconsistence_only':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.checkInconsistenceOnly = valueDes;
          break;
        case r'incostence_corrected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(InconsistenceCorrected)]),
          ) as BuiltList<InconsistenceCorrected>?;
          if (valueDes == null) continue;
          result.incostenceCorrected.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduledTimeChangeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledTimeChangeRequestBuilder();
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

