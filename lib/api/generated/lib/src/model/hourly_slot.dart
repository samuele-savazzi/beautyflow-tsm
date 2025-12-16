//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hourly_slot.g.dart';

/// HourlySlot
///
/// Properties:
/// * [date] - Data dello slot
/// * [period] - Periodo (morning/afternoon)
/// * [startTime] - Orario di inizio dello slot
/// * [endTime] - Orario di fine dello slot
/// * [startIdx] - Indice slot di inizio
/// * [endIdx] - Indice slot di fine
/// * [workstationId] - ID postazione (single workstation)
/// * [primaryWorkstationId] - ID postazione primaria (multi-workstation)
/// * [additionalWorkstationId] - ID postazione aggiuntiva (multi-workstation)
/// * [workstationIds] - Lista di tutti gli ID postazioni coinvolte
/// * [availabilityScore] - Punteggio di qualità della disponibilità (0-100)
@BuiltValue()
abstract class HourlySlot implements Built<HourlySlot, HourlySlotBuilder> {
  /// Data dello slot
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Periodo (morning/afternoon)
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Orario di inizio dello slot
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// Orario di fine dello slot
  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  /// Indice slot di inizio
  @BuiltValueField(wireName: r'start_idx')
  int get startIdx;

  /// Indice slot di fine
  @BuiltValueField(wireName: r'end_idx')
  int get endIdx;

  /// ID postazione (single workstation)
  @BuiltValueField(wireName: r'workstation_id')
  int? get workstationId;

  /// ID postazione primaria (multi-workstation)
  @BuiltValueField(wireName: r'primary_workstation_id')
  int? get primaryWorkstationId;

  /// ID postazione aggiuntiva (multi-workstation)
  @BuiltValueField(wireName: r'additional_workstation_id')
  int? get additionalWorkstationId;

  /// Lista di tutti gli ID postazioni coinvolte
  @BuiltValueField(wireName: r'workstation_ids')
  BuiltList<int> get workstationIds;

  /// Punteggio di qualità della disponibilità (0-100)
  @BuiltValueField(wireName: r'availability_score')
  int get availabilityScore;

  HourlySlot._();

  factory HourlySlot([void updates(HourlySlotBuilder b)]) = _$HourlySlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourlySlotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HourlySlot> get serializer => _$HourlySlotSerializer();
}

class _$HourlySlotSerializer implements PrimitiveSerializer<HourlySlot> {
  @override
  final Iterable<Type> types = const [HourlySlot, _$HourlySlot];

  @override
  final String wireName = r'HourlySlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourlySlot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
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
    yield r'start_idx';
    yield serializers.serialize(
      object.startIdx,
      specifiedType: const FullType(int),
    );
    yield r'end_idx';
    yield serializers.serialize(
      object.endIdx,
      specifiedType: const FullType(int),
    );
    if (object.workstationId != null) {
      yield r'workstation_id';
      yield serializers.serialize(
        object.workstationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.primaryWorkstationId != null) {
      yield r'primary_workstation_id';
      yield serializers.serialize(
        object.primaryWorkstationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalWorkstationId != null) {
      yield r'additional_workstation_id';
      yield serializers.serialize(
        object.additionalWorkstationId,
        specifiedType: const FullType(int),
      );
    }
    yield r'workstation_ids';
    yield serializers.serialize(
      object.workstationIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    yield r'availability_score';
    yield serializers.serialize(
      object.availabilityScore,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HourlySlot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HourlySlotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.period = valueDes;
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
        case r'start_idx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.startIdx = valueDes;
          break;
        case r'end_idx':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endIdx = valueDes;
          break;
        case r'workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workstationId = valueDes;
          break;
        case r'primary_workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.primaryWorkstationId = valueDes;
          break;
        case r'additional_workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.additionalWorkstationId = valueDes;
          break;
        case r'workstation_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.workstationIds.replace(valueDes);
          break;
        case r'availability_score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availabilityScore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HourlySlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourlySlotBuilder();
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

