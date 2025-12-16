//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/dual_operators_slot.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/dual_operators_operator_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dual_operators_hourly_availability_data.g.dart';

/// Serializer per i dati della disponibilità dual operators
///
/// Properties:
/// * [primaryOperator] 
/// * [additionalOperator] 
/// * [availableSlots] - Array di tutte le combinazioni di slot orari disponibili
/// * [totalSlotsAvailable] - Numero totale combinazioni disponibili
/// * [morningSlotsCount] - Numero combinazioni disponibili al mattino
/// * [afternoonSlotsCount] - Numero combinazioni disponibili al pomeriggio
/// * [searchDate] - Data cercata
/// * [searchStrategy] - Strategia utilizzata (sempre 'dual_operators')
@BuiltValue()
abstract class DualOperatorsHourlyAvailabilityData implements Built<DualOperatorsHourlyAvailabilityData, DualOperatorsHourlyAvailabilityDataBuilder> {
  @BuiltValueField(wireName: r'primary_operator')
  DualOperatorsOperatorData get primaryOperator;

  @BuiltValueField(wireName: r'additional_operator')
  DualOperatorsOperatorData get additionalOperator;

  /// Array di tutte le combinazioni di slot orari disponibili
  @BuiltValueField(wireName: r'available_slots')
  BuiltList<DualOperatorsSlot> get availableSlots;

  /// Numero totale combinazioni disponibili
  @BuiltValueField(wireName: r'total_slots_available')
  int get totalSlotsAvailable;

  /// Numero combinazioni disponibili al mattino
  @BuiltValueField(wireName: r'morning_slots_count')
  int get morningSlotsCount;

  /// Numero combinazioni disponibili al pomeriggio
  @BuiltValueField(wireName: r'afternoon_slots_count')
  int get afternoonSlotsCount;

  /// Data cercata
  @BuiltValueField(wireName: r'search_date')
  Date get searchDate;

  /// Strategia utilizzata (sempre 'dual_operators')
  @BuiltValueField(wireName: r'search_strategy')
  String get searchStrategy;

  DualOperatorsHourlyAvailabilityData._();

  factory DualOperatorsHourlyAvailabilityData([void updates(DualOperatorsHourlyAvailabilityDataBuilder b)]) = _$DualOperatorsHourlyAvailabilityData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DualOperatorsHourlyAvailabilityDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DualOperatorsHourlyAvailabilityData> get serializer => _$DualOperatorsHourlyAvailabilityDataSerializer();
}

class _$DualOperatorsHourlyAvailabilityDataSerializer implements PrimitiveSerializer<DualOperatorsHourlyAvailabilityData> {
  @override
  final Iterable<Type> types = const [DualOperatorsHourlyAvailabilityData, _$DualOperatorsHourlyAvailabilityData];

  @override
  final String wireName = r'DualOperatorsHourlyAvailabilityData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'primary_operator';
    yield serializers.serialize(
      object.primaryOperator,
      specifiedType: const FullType(DualOperatorsOperatorData),
    );
    yield r'additional_operator';
    yield serializers.serialize(
      object.additionalOperator,
      specifiedType: const FullType(DualOperatorsOperatorData),
    );
    yield r'available_slots';
    yield serializers.serialize(
      object.availableSlots,
      specifiedType: const FullType(BuiltList, [FullType(DualOperatorsSlot)]),
    );
    yield r'total_slots_available';
    yield serializers.serialize(
      object.totalSlotsAvailable,
      specifiedType: const FullType(int),
    );
    yield r'morning_slots_count';
    yield serializers.serialize(
      object.morningSlotsCount,
      specifiedType: const FullType(int),
    );
    yield r'afternoon_slots_count';
    yield serializers.serialize(
      object.afternoonSlotsCount,
      specifiedType: const FullType(int),
    );
    yield r'search_date';
    yield serializers.serialize(
      object.searchDate,
      specifiedType: const FullType(Date),
    );
    yield r'search_strategy';
    yield serializers.serialize(
      object.searchStrategy,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DualOperatorsHourlyAvailabilityData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DualOperatorsHourlyAvailabilityDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'primary_operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DualOperatorsOperatorData),
          ) as DualOperatorsOperatorData;
          result.primaryOperator.replace(valueDes);
          break;
        case r'additional_operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DualOperatorsOperatorData),
          ) as DualOperatorsOperatorData;
          result.additionalOperator.replace(valueDes);
          break;
        case r'available_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DualOperatorsSlot)]),
          ) as BuiltList<DualOperatorsSlot>;
          result.availableSlots.replace(valueDes);
          break;
        case r'total_slots_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSlotsAvailable = valueDes;
          break;
        case r'morning_slots_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.morningSlotsCount = valueDes;
          break;
        case r'afternoon_slots_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.afternoonSlotsCount = valueDes;
          break;
        case r'search_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.searchDate = valueDes;
          break;
        case r'search_strategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.searchStrategy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DualOperatorsHourlyAvailabilityData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DualOperatorsHourlyAvailabilityDataBuilder();
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

