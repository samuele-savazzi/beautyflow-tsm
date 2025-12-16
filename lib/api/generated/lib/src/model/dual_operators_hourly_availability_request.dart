//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_hourly_availability_request.g.dart';

/// DualOperatorsHourlyAvailabilityRequest
///
/// Properties:
/// * [primaryOperatorId] - ID dell'operatore primario
/// * [additionalOperatorId] - ID dell'operatore addizionale (DEVE essere diverso dal primario)
/// * [areaId] - ID dell'area
/// * [primaryServiceId] - ID del servizio principale
/// * [additionalServiceId] - ID del servizio aggiuntivo (obbligatorio per dual operators)
/// * [timesPrimaryService] - Tempi per il servizio principale
/// * [timesAdditionalService] - Tempi per il servizio aggiuntivo (obbligatorio)
/// * [avaibleWorkStationsPrimaryService] - Lista delle postazioni disponibili per il servizio principale
/// * [avaibleWorkStationsAdditionalService] - Lista delle postazioni disponibili per il servizio aggiuntivo (possono sovrapporsi con primary)
/// * [workingDays] - Singolo giorno lavorativo (deve contenere esattamente 1 giorno)
@BuiltValue()
abstract class DualOperatorsHourlyAvailabilityRequest implements Built<DualOperatorsHourlyAvailabilityRequest, DualOperatorsHourlyAvailabilityRequestBuilder> {
  /// ID dell'operatore primario
  @BuiltValueField(wireName: r'primaryOperatorId')
  int get primaryOperatorId;

  /// ID dell'operatore addizionale (DEVE essere diverso dal primario)
  @BuiltValueField(wireName: r'additionalOperatorId')
  int get additionalOperatorId;

  /// ID dell'area
  @BuiltValueField(wireName: r'area_id')
  int get areaId;

  /// ID del servizio principale
  @BuiltValueField(wireName: r'primaryServiceId')
  int get primaryServiceId;

  /// ID del servizio aggiuntivo (obbligatorio per dual operators)
  @BuiltValueField(wireName: r'additionalServiceId')
  int get additionalServiceId;

  /// Tempi per il servizio principale
  @BuiltValueField(wireName: r'timesPrimaryService')
  BuiltList<Map<String, dynamic>?> get timesPrimaryService;

  /// Tempi per il servizio aggiuntivo (obbligatorio)
  @BuiltValueField(wireName: r'timesAdditionalService')
  BuiltList<Map<String, dynamic>?> get timesAdditionalService;

  /// Lista delle postazioni disponibili per il servizio principale
  @BuiltValueField(wireName: r'avaibleWorkStationsPrimaryService')
  BuiltList<String> get avaibleWorkStationsPrimaryService;

  /// Lista delle postazioni disponibili per il servizio aggiuntivo (possono sovrapporsi con primary)
  @BuiltValueField(wireName: r'avaibleWorkStationsAdditionalService')
  BuiltList<String> get avaibleWorkStationsAdditionalService;

  /// Singolo giorno lavorativo (deve contenere esattamente 1 giorno)
  @BuiltValueField(wireName: r'workingDays')
  BuiltMap<String, Map<String, dynamic>?> get workingDays;

  DualOperatorsHourlyAvailabilityRequest._();

  factory DualOperatorsHourlyAvailabilityRequest([void updates(DualOperatorsHourlyAvailabilityRequestBuilder b)]) = _$DualOperatorsHourlyAvailabilityRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsHourlyAvailabilityRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsHourlyAvailabilityRequest> get serializer => _$DualOperatorsHourlyAvailabilityRequestSerializer();
}

class _$DualOperatorsHourlyAvailabilityRequestSerializer implements PrimitiveSerializer<DualOperatorsHourlyAvailabilityRequest> {
  @override
  final Iterable<Type> types = const [DualOperatorsHourlyAvailabilityRequest, _$DualOperatorsHourlyAvailabilityRequest];

  @override
  final String wireName = r'DualOperatorsHourlyAvailabilityRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'primaryOperatorId';
    yield serializers.serialize(
      object.primaryOperatorId,
      specifiedType: const FullType(int),
    );
    yield r'additionalOperatorId';
    yield serializers.serialize(
      object.additionalOperatorId,
      specifiedType: const FullType(int),
    );
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
    yield r'additionalServiceId';
    yield serializers.serialize(
      object.additionalServiceId,
      specifiedType: const FullType(int),
    );
    yield r'timesPrimaryService';
    yield serializers.serialize(
      object.timesPrimaryService,
      specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'timesAdditionalService';
    yield serializers.serialize(
      object.timesAdditionalService,
      specifiedType: const FullType(BuiltList, [FullType.nullable(Map<String, dynamic>)]),
    );
    yield r'avaibleWorkStationsPrimaryService';
    yield serializers.serialize(
      object.avaibleWorkStationsPrimaryService,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'avaibleWorkStationsAdditionalService';
    yield serializers.serialize(
      object.avaibleWorkStationsAdditionalService,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'workingDays';
    yield serializers.serialize(
      object.workingDays,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(Map<String, dynamic>)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsHourlyAvailabilityRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DualOperatorsHourlyAvailabilityRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsHourlyAvailabilityRequestBuilder();
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

