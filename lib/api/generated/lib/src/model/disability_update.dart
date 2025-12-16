//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disability_update.g.dart';

/// DisabilityUpdate
///
/// Properties:
/// * [reason] 
/// * [startDate] 
/// * [endDate] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [areaId] - ID dell'area per la creazione delle fasce orarie
@BuiltValue()
abstract class DisabilityUpdate implements Built<DisabilityUpdate, DisabilityUpdateBuilder> {
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'start_date')
  Date? get startDate;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'morning_start_time')
  String? get morningStartTime;

  @BuiltValueField(wireName: r'morning_end_time')
  String? get morningEndTime;

  @BuiltValueField(wireName: r'afternoon_start_time')
  String? get afternoonStartTime;

  @BuiltValueField(wireName: r'afternoon_end_time')
  String? get afternoonEndTime;

  /// ID dell'area per la creazione delle fasce orarie
  @BuiltValueField(wireName: r'area_id')
  int? get areaId;

  DisabilityUpdate._();

  factory DisabilityUpdate([void updates(DisabilityUpdateBuilder b)]) = _$DisabilityUpdate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DisabilityUpdateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DisabilityUpdate> get serializer => _$DisabilityUpdateSerializer();
}

class _$DisabilityUpdateSerializer implements PrimitiveSerializer<DisabilityUpdate> {
  @override
  final Iterable<Type> types = const [DisabilityUpdate, _$DisabilityUpdate];

  @override
  final String wireName = r'DisabilityUpdate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DisabilityUpdate object, {
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
    if (object.morningStartTime != null) {
      yield r'morning_start_time';
      yield serializers.serialize(
        object.morningStartTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.morningEndTime != null) {
      yield r'morning_end_time';
      yield serializers.serialize(
        object.morningEndTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonStartTime != null) {
      yield r'afternoon_start_time';
      yield serializers.serialize(
        object.afternoonStartTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.afternoonEndTime != null) {
      yield r'afternoon_end_time';
      yield serializers.serialize(
        object.afternoonEndTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.areaId != null) {
      yield r'area_id';
      yield serializers.serialize(
        object.areaId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DisabilityUpdate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DisabilityUpdateBuilder result,
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
        case r'morning_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningStartTime = valueDes;
          break;
        case r'morning_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.morningEndTime = valueDes;
          break;
        case r'afternoon_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonStartTime = valueDes;
          break;
        case r'afternoon_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.afternoonEndTime = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DisabilityUpdate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisabilityUpdateBuilder();
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

