//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_slot.g.dart';

/// DualOperatorsSlot
///
/// Properties:
/// * [date] - Data dello slot
/// * [period] - Periodo (morning/afternoon)
/// * [startTime] - Orario di inizio slot (inizio servizio primario)
/// * [endTime] - Orario di fine slot (fine servizio addizionale)
/// * [startIdx] - Indice slot di inizio
/// * [endIdx] - Indice slot di fine
/// * [primaryServiceStart] - Orario inizio servizio primario
/// * [primaryServiceEnd] - Orario fine servizio primario
/// * [additionalServiceStart] - Orario inizio servizio addizionale
/// * [additionalServiceEnd] - Orario fine servizio addizionale
/// * [primaryWorkstationId] - ID postazione per servizio primario
/// * [additionalWorkstationId] - ID postazione per servizio addizionale
/// * [workstationIds] - Lista di tutti gli ID postazioni coinvolte
@BuiltValue()
abstract class DualOperatorsSlot implements Built<DualOperatorsSlot, DualOperatorsSlotBuilder> {
  /// Data dello slot
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Periodo (morning/afternoon)
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Orario di inizio slot (inizio servizio primario)
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// Orario di fine slot (fine servizio addizionale)
  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  /// Indice slot di inizio
  @BuiltValueField(wireName: r'start_idx')
  int get startIdx;

  /// Indice slot di fine
  @BuiltValueField(wireName: r'end_idx')
  int get endIdx;

  /// Orario inizio servizio primario
  @BuiltValueField(wireName: r'primary_service_start')
  String get primaryServiceStart;

  /// Orario fine servizio primario
  @BuiltValueField(wireName: r'primary_service_end')
  String get primaryServiceEnd;

  /// Orario inizio servizio addizionale
  @BuiltValueField(wireName: r'additional_service_start')
  String get additionalServiceStart;

  /// Orario fine servizio addizionale
  @BuiltValueField(wireName: r'additional_service_end')
  String get additionalServiceEnd;

  /// ID postazione per servizio primario
  @BuiltValueField(wireName: r'primary_workstation_id')
  int get primaryWorkstationId;

  /// ID postazione per servizio addizionale
  @BuiltValueField(wireName: r'additional_workstation_id')
  int get additionalWorkstationId;

  /// Lista di tutti gli ID postazioni coinvolte
  @BuiltValueField(wireName: r'workstation_ids')
  BuiltList<int> get workstationIds;

  DualOperatorsSlot._();

  factory DualOperatorsSlot([void updates(DualOperatorsSlotBuilder b)]) = _$DualOperatorsSlot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsSlotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsSlot> get serializer => _$DualOperatorsSlotSerializer();
}

class _$DualOperatorsSlotSerializer implements PrimitiveSerializer<DualOperatorsSlot> {
  @override
  final Iterable<Type> types = const [DualOperatorsSlot, _$DualOperatorsSlot];

  @override
  final String wireName = r'DualOperatorsSlot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsSlot object, {
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
    yield r'primary_service_start';
    yield serializers.serialize(
      object.primaryServiceStart,
      specifiedType: const FullType(String),
    );
    yield r'primary_service_end';
    yield serializers.serialize(
      object.primaryServiceEnd,
      specifiedType: const FullType(String),
    );
    yield r'additional_service_start';
    yield serializers.serialize(
      object.additionalServiceStart,
      specifiedType: const FullType(String),
    );
    yield r'additional_service_end';
    yield serializers.serialize(
      object.additionalServiceEnd,
      specifiedType: const FullType(String),
    );
    yield r'primary_workstation_id';
    yield serializers.serialize(
      object.primaryWorkstationId,
      specifiedType: const FullType(int),
    );
    yield r'additional_workstation_id';
    yield serializers.serialize(
      object.additionalWorkstationId,
      specifiedType: const FullType(int),
    );
    yield r'workstation_ids';
    yield serializers.serialize(
      object.workstationIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsSlot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsSlotBuilder result,
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
        case r'primary_service_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryServiceStart = valueDes;
          break;
        case r'primary_service_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.primaryServiceEnd = valueDes;
          break;
        case r'additional_service_start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalServiceStart = valueDes;
          break;
        case r'additional_service_end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalServiceEnd = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DualOperatorsSlot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsSlotBuilder();
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

