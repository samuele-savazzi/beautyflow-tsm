//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hourly_availability_request.g.dart';

/// HourlyAvailabilityRequest
///
/// Properties:
/// * [operatorId] - ID dell'operatore (single operator mode)
/// * [primaryOperatorId] - ID dell'operatore primario (dual operators mode)
/// * [additionalOperatorId] - ID dell'operatore addizionale (dual operators mode)
/// * [areaId] - ID dell'area
/// * [primaryServiceId] - ID del servizio principale
/// * [additionalServiceId] - ID del servizio aggiuntivo (obbligatorio per dual operators)
/// * [timesPrimaryService] - Tempi per il servizio principale
/// * [timesAdditionalService] - Tempi per il servizio aggiuntivo
/// * [avaibleWorkStationsPrimaryService] - Lista delle postazioni disponibili per il servizio principale
/// * [avaibleWorkStationsAdditionalService] - Lista delle postazioni disponibili per il servizio aggiuntivo
/// * [workingDays] - Singolo giorno lavorativo (deve contenere esattamente 1 giorno)
/// * [primaryOperatorWorkingDays] - Orari specifici per operatore primario (opzionale, default: workingDays)
/// * [additionalOperatorWorkingDays] - Orari specifici per operatore addizionale (opzionale, default: workingDays)
/// * [minimumGapSlots] - Slot minimi di gap tra prenotazioni. Gap deve essere 0 o >= valore specificato. Se non specificato, nessun controllo gap.
/// * [searchOnlyMorning] - Cerca disponibilità solo nel periodo mattino
/// * [searchOnlyAfternoon] - Cerca disponibilità solo nel periodo pomeriggio
@BuiltValue()
abstract class HourlyAvailabilityRequest implements Built<HourlyAvailabilityRequest, HourlyAvailabilityRequestBuilder> {
  /// ID dell'operatore (single operator mode)
  @BuiltValueField(wireName: r'operator_id')
  int? get operatorId;

  /// ID dell'operatore primario (dual operators mode)
  @BuiltValueField(wireName: r'primaryOperatorId')
  int? get primaryOperatorId;

  /// ID dell'operatore addizionale (dual operators mode)
  @BuiltValueField(wireName: r'additionalOperatorId')
  int? get additionalOperatorId;

  /// ID dell'area
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// ID del servizio principale
  @BuiltValueField(wireName: r'primaryServiceId')
  int get primaryServiceId;

  /// ID del servizio aggiuntivo (obbligatorio per dual operators)
  @BuiltValueField(wireName: r'additionalServiceId')
  int? get additionalServiceId;

  /// Tempi per il servizio principale
  @BuiltValueField(wireName: r'timesPrimaryService')
  BuiltList<Map<String, dynamic>?> get timesPrimaryService;

  /// Tempi per il servizio aggiuntivo
  @BuiltValueField(wireName: r'timesAdditionalService')
  BuiltList<Map<String, dynamic>?>? get timesAdditionalService;

  /// Lista delle postazioni disponibili per il servizio principale
  @BuiltValueField(wireName: r'avaibleWorkStationsPrimaryService')
  BuiltList<String> get avaibleWorkStationsPrimaryService;

  /// Lista delle postazioni disponibili per il servizio aggiuntivo
  @BuiltValueField(wireName: r'avaibleWorkStationsAdditionalService')
  BuiltList<String>? get avaibleWorkStationsAdditionalService;

  /// Singolo giorno lavorativo (deve contenere esattamente 1 giorno)
  @BuiltValueField(wireName: r'workingDays')
  BuiltMap<String, Map<String, dynamic>?> get workingDays;

  /// Orari specifici per operatore primario (opzionale, default: workingDays)
  @BuiltValueField(wireName: r'primaryOperatorWorkingDays')
  BuiltMap<String, Map<String, dynamic>?>? get primaryOperatorWorkingDays;

  /// Orari specifici per operatore addizionale (opzionale, default: workingDays)
  @BuiltValueField(wireName: r'additionalOperatorWorkingDays')
  BuiltMap<String, Map<String, dynamic>?>? get additionalOperatorWorkingDays;

  /// Slot minimi di gap tra prenotazioni. Gap deve essere 0 o >= valore specificato. Se non specificato, nessun controllo gap.
  @BuiltValueField(wireName: r'minimumGapSlots')
  int? get minimumGapSlots;

  /// Cerca disponibilità solo nel periodo mattino
  @BuiltValueField(wireName: r'searchOnlyMorning')
  bool? get searchOnlyMorning;

  /// Cerca disponibilità solo nel periodo pomeriggio
  @BuiltValueField(wireName: r'searchOnlyAfternoon')
  bool? get searchOnlyAfternoon;

  HourlyAvailabilityRequest._();

  factory HourlyAvailabilityRequest([void updates(HourlyAvailabilityRequestBuilder b)]) = _$HourlyAvailabilityRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourlyAvailabilityRequestBuilder b) => b
      ..searchOnlyMorning = false
      ..searchOnlyAfternoon = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<HourlyAvailabilityRequest> get serializer => _$HourlyAvailabilityRequestSerializer();
}

class _$HourlyAvailabilityRequestSerializer implements PrimitiveSerializer<HourlyAvailabilityRequest> {
  @override
  final Iterable<Type> types = const [HourlyAvailabilityRequest, _$HourlyAvailabilityRequest];

  @override
  final String wireName = r'HourlyAvailabilityRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourlyAvailabilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operatorId != null) {
      yield r'operator_id';
      yield serializers.serialize(
        object.operatorId,
        specifiedType: const FullType(int),
      );
    }
    if (object.primaryOperatorId != null) {
      yield r'primaryOperatorId';
      yield serializers.serialize(
        object.primaryOperatorId,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalOperatorId != null) {
      yield r'additionalOperatorId';
      yield serializers.serialize(
        object.additionalOperatorId,
        specifiedType: const FullType(int),
      );
    }
    yield r'area_id';
    yield serializers.serialize(
      object.areaId,
      specifiedType: const FullType(int),
    );
    yield r'primaryServiceId';
    yield serializers.serialize(
      object.primaryServiceId,
      specifiedType: const FullType(int),
    );
    if (object.additionalServiceId != null) {
      yield r'additionalServiceId';
      yield serializers.serialize(
        object.additionalServiceId,
        specifiedType: const FullType(int),
      );
    }
    yield r'timesPrimaryService';
    yield serializers.serialize(
      object.timesPrimaryService,
      specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
    );
    if (object.timesAdditionalService != null) {
      yield r'timesAdditionalService';
      yield serializers.serialize(
        object.timesAdditionalService,
        specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
      );
    }
    yield r'avaibleWorkStationsPrimaryService';
    yield serializers.serialize(
      object.avaibleWorkStationsPrimaryService,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.avaibleWorkStationsAdditionalService != null) {
      yield r'avaibleWorkStationsAdditionalService';
      yield serializers.serialize(
        object.avaibleWorkStationsAdditionalService,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'workingDays';
    yield serializers.serialize(
      object.workingDays,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
    if (object.primaryOperatorWorkingDays != null) {
      yield r'primaryOperatorWorkingDays';
      yield serializers.serialize(
        object.primaryOperatorWorkingDays,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
    if (object.additionalOperatorWorkingDays != null) {
      yield r'additionalOperatorWorkingDays';
      yield serializers.serialize(
        object.additionalOperatorWorkingDays,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
      );
    }
    if (object.minimumGapSlots != null) {
      yield r'minimumGapSlots';
      yield serializers.serialize(
        object.minimumGapSlots,
        specifiedType: const FullType(int),
      );
    }
    if (object.searchOnlyMorning != null) {
      yield r'searchOnlyMorning';
      yield serializers.serialize(
        object.searchOnlyMorning,
        specifiedType: const FullType(bool),
      );
    }
    if (object.searchOnlyAfternoon != null) {
      yield r'searchOnlyAfternoon';
      yield serializers.serialize(
        object.searchOnlyAfternoon,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HourlyAvailabilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HourlyAvailabilityRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.operatorId = valueDes;
          break;
        case r'primaryOperatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.primaryOperatorId = valueDes;
          break;
        case r'additionalOperatorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.additionalOperatorId = valueDes;
          break;
        case r'area_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.areaId = valueDes;
          break;
        case r'primaryServiceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.primaryServiceId = valueDes;
          break;
        case r'additionalServiceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.additionalServiceId = valueDes;
          break;
        case r'timesPrimaryService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltList<Map<String, dynamic>?>;
          result.timesPrimaryService.replace(valueDes);
          break;
        case r'timesAdditionalService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltList<Map<String, dynamic>?>;
          result.timesAdditionalService.replace(valueDes);
          break;
        case r'avaibleWorkStationsPrimaryService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.avaibleWorkStationsPrimaryService.replace(valueDes);
          break;
        case r'avaibleWorkStationsAdditionalService':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.avaibleWorkStationsAdditionalService.replace(valueDes);
          break;
        case r'workingDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.workingDays.replace(valueDes);
          break;
        case r'primaryOperatorWorkingDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.primaryOperatorWorkingDays.replace(valueDes);
          break;
        case r'additionalOperatorWorkingDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
          ) as BuiltMap<String, Map<String, dynamic>?>;
          result.additionalOperatorWorkingDays.replace(valueDes);
          break;
        case r'minimumGapSlots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minimumGapSlots = valueDes;
          break;
        case r'searchOnlyMorning':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchOnlyMorning = valueDes;
          break;
        case r'searchOnlyAfternoon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchOnlyAfternoon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HourlyAvailabilityRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourlyAvailabilityRequestBuilder();
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

