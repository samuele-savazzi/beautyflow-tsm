//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/time_slot_update.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_disability_update.g.dart';

/// OperatorDisabilityUpdate
///
/// Properties:
/// * [reason] 
/// * [startDate] 
/// * [endDate] 
/// * [timeSlots] 
@BuiltValue()
abstract class OperatorDisabilityUpdate implements Built<OperatorDisabilityUpdate, OperatorDisabilityUpdateBuilder> {
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'start_date')
  Date? get startDate;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'time_slots')
  BuiltList<TimeSlotUpdate>? get timeSlots;

  OperatorDisabilityUpdate._();

  factory OperatorDisabilityUpdate([void updates(OperatorDisabilityUpdateBuilder b)]) = _$OperatorDisabilityUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorDisabilityUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorDisabilityUpdate> get serializer => _$OperatorDisabilityUpdateSerializer();
}

class _$OperatorDisabilityUpdateSerializer implements PrimitiveSerializer<OperatorDisabilityUpdate> {
  @override
  final Iterable<Type> types = const [OperatorDisabilityUpdate, _$OperatorDisabilityUpdate];

  @override
  final String wireName = r'OperatorDisabilityUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorDisabilityUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.startDate != null) {
      yield r'start_date';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(Date),
      );
    }
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.timeSlots != null) {
      yield r'time_slots';
      yield serializers.serialize(
        object.timeSlots,
        specifiedType: const FullType(BuiltList, [FullType(TimeSlotUpdate)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorDisabilityUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorDisabilityUpdateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'start_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.startDate = valueDes;
          break;
        case r'end_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'time_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TimeSlotUpdate)]),
          ) as BuiltList<TimeSlotUpdate>;
          result.timeSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OperatorDisabilityUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorDisabilityUpdateBuilder();
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

