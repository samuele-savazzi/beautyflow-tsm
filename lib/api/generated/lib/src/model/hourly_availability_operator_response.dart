//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/date.dart';
import 'package:beautyflow_api/src/model/hourly_slot.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hourly_availability_operator_response.g.dart';

/// HourlyAvailabilityOperatorResponse
///
/// Properties:
/// * [id] - ID dell'operatore
/// * [firstName] - Nome dell'operatore
/// * [lastName] - Cognome dell'operatore
/// * [mansion] - Ruolo dell'operatore
/// * [photo] - URL della foto dell'operatore
/// * [availableSlots] - Array di tutti gli slot orari disponibili
/// * [totalSlotsAvailable] - Numero totale slot disponibili
/// * [morningSlotsCount] - Numero slot disponibili al mattino
/// * [afternoonSlotsCount] - Numero slot disponibili al pomeriggio
/// * [searchDate] - Data cercata
/// * [searchStrategy] - Strategia utilizzata (single_workstation/multi_workstation)
@BuiltValue()
abstract class HourlyAvailabilityOperatorResponse implements Built<HourlyAvailabilityOperatorResponse, HourlyAvailabilityOperatorResponseBuilder> {
  /// ID dell'operatore
  @BuiltValueField(wireName: r'id')
  int get id;

  /// Nome dell'operatore
  @BuiltValueField(wireName: r'first_name')
  String get firstName;

  /// Cognome dell'operatore
  @BuiltValueField(wireName: r'last_name')
  String get lastName;

  /// Ruolo dell'operatore
  @BuiltValueField(wireName: r'mansion')
  String get mansion;

  /// URL della foto dell'operatore
  @BuiltValueField(wireName: r'photo')
  String get photo;

  /// Array di tutti gli slot orari disponibili
  @BuiltValueField(wireName: r'available_slots')
  BuiltList<HourlySlot> get availableSlots;

  /// Numero totale slot disponibili
  @BuiltValueField(wireName: r'total_slots_available')
  int get totalSlotsAvailable;

  /// Numero slot disponibili al mattino
  @BuiltValueField(wireName: r'morning_slots_count')
  int get morningSlotsCount;

  /// Numero slot disponibili al pomeriggio
  @BuiltValueField(wireName: r'afternoon_slots_count')
  int get afternoonSlotsCount;

  /// Data cercata
  @BuiltValueField(wireName: r'search_date')
  Date get searchDate;

  /// Strategia utilizzata (single_workstation/multi_workstation)
  @BuiltValueField(wireName: r'search_strategy')
  String get searchStrategy;

  HourlyAvailabilityOperatorResponse._();

  factory HourlyAvailabilityOperatorResponse([void updates(HourlyAvailabilityOperatorResponseBuilder b)]) = _$HourlyAvailabilityOperatorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HourlyAvailabilityOperatorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HourlyAvailabilityOperatorResponse> get serializer => _$HourlyAvailabilityOperatorResponseSerializer();
}

class _$HourlyAvailabilityOperatorResponseSerializer implements PrimitiveSerializer<HourlyAvailabilityOperatorResponse> {
  @override
  final Iterable<Type> types = const [HourlyAvailabilityOperatorResponse, _$HourlyAvailabilityOperatorResponse];

  @override
  final String wireName = r'HourlyAvailabilityOperatorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HourlyAvailabilityOperatorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'first_name';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'last_name';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'mansion';
    yield serializers.serialize(
      object.mansion,
      specifiedType: const FullType(String),
    );
    yield r'photo';
    yield serializers.serialize(
      object.photo,
      specifiedType: const FullType(String),
    );
    yield r'available_slots';
    yield serializers.serialize(
      object.availableSlots,
      specifiedType: const FullType(BuiltList, [FullType(HourlySlot)]),
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
    HourlyAvailabilityOperatorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HourlyAvailabilityOperatorResponseBuilder result,
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
        case r'first_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'last_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'mansion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mansion = valueDes;
          break;
        case r'photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photo = valueDes;
          break;
        case r'available_slots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HourlySlot)]),
          ) as BuiltList<HourlySlot>;
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
  HourlyAvailabilityOperatorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HourlyAvailabilityOperatorResponseBuilder();
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

