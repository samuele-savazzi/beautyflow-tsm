//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disability_create.g.dart';

/// DisabilityCreate
///
/// Properties:
/// * [workstationId] 
/// * [reason] 
/// * [startDate] 
/// * [endDate] 
/// * [isDaily] 
/// * [morningStartTime] 
/// * [morningEndTime] 
/// * [afternoonStartTime] 
/// * [afternoonEndTime] 
/// * [areaId] - ID dell'area per la creazione delle fasce orarie
@BuiltValue()
abstract class DisabilityCreate implements Built<DisabilityCreate, DisabilityCreateBuilder> {
  @BuiltValueField(wireName: r'workstation_id')
  int get workstationId;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'start_date')
  Date get startDate;

  @BuiltValueField(wireName: r'end_date')
  Date? get endDate;

  @BuiltValueField(wireName: r'is_daily')
  bool? get isDaily;

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
  int get areaId;

  DisabilityCreate._();

  factory DisabilityCreate([void updates(DisabilityCreateBuilder b)]) = _$DisabilityCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DisabilityCreateBuilder b) => b
      ..isDaily = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<DisabilityCreate> get serializer => _$DisabilityCreateSerializer();
}

class _$DisabilityCreateSerializer implements PrimitiveSerializer<DisabilityCreate> {
  @override
  final Iterable<Type> types = const [DisabilityCreate, _$DisabilityCreate];

  @override
  final String wireName = r'DisabilityCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DisabilityCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'workstation_id';
    yield serializers.serialize(
      object.workstationId,
      specifiedType: const FullType(int),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'start_date';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(Date),
    );
    if (object.endDate != null) {
      yield r'end_date';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(Date),
      );
    }
    if (object.isDaily != null) {
      yield r'is_daily';
      yield serializers.serialize(
        object.isDaily,
        specifiedType: const FullType(bool),
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
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DisabilityCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DisabilityCreateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workstationId = valueDes;
          break;
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
        case r'is_daily':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDaily = valueDes;
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
  DisabilityCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisabilityCreateBuilder();
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

