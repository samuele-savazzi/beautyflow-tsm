//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:beautyflow_api/src/model/daily_availability.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_availability_operator_response.g.dart';

/// DailyAvailabilityOperatorResponse
///
/// Properties:
/// * [id] - ID dell'operatore
/// * [firstName] - Nome dell'operatore
/// * [lastName] - Cognome dell'operatore
/// * [mansion] - Ruolo dell'operatore
/// * [photo] - URL della foto dell'operatore
/// * [dailyAvailability] - Array di disponibilità giornaliere
/// * [totalDaysChecked] - Numero totale giorni verificati
/// * [availableDaysCount] - Numero giorni con disponibilità
/// * [morningAvailableDaysCount] - Numero giorni con disponibilità mattino
/// * [afternoonAvailableDaysCount] - Numero giorni con disponibilità pomeriggio
@BuiltValue()
abstract class DailyAvailabilityOperatorResponse implements Built<DailyAvailabilityOperatorResponse, DailyAvailabilityOperatorResponseBuilder> {
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

  /// Array di disponibilità giornaliere
  @BuiltValueField(wireName: r'daily_availability')
  BuiltList<DailyAvailability> get dailyAvailability;

  /// Numero totale giorni verificati
  @BuiltValueField(wireName: r'total_days_checked')
  int get totalDaysChecked;

  /// Numero giorni con disponibilità
  @BuiltValueField(wireName: r'available_days_count')
  int get availableDaysCount;

  /// Numero giorni con disponibilità mattino
  @BuiltValueField(wireName: r'morning_available_days_count')
  int get morningAvailableDaysCount;

  /// Numero giorni con disponibilità pomeriggio
  @BuiltValueField(wireName: r'afternoon_available_days_count')
  int get afternoonAvailableDaysCount;

  DailyAvailabilityOperatorResponse._();

  factory DailyAvailabilityOperatorResponse([void updates(DailyAvailabilityOperatorResponseBuilder b)]) = _$DailyAvailabilityOperatorResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyAvailabilityOperatorResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyAvailabilityOperatorResponse> get serializer => _$DailyAvailabilityOperatorResponseSerializer();
}

class _$DailyAvailabilityOperatorResponseSerializer implements PrimitiveSerializer<DailyAvailabilityOperatorResponse> {
  @override
  final Iterable<Type> types = const [DailyAvailabilityOperatorResponse, _$DailyAvailabilityOperatorResponse];

  @override
  final String wireName = r'DailyAvailabilityOperatorResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyAvailabilityOperatorResponse object, {
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
    yield r'daily_availability';
    yield serializers.serialize(
      object.dailyAvailability,
      specifiedType: const FullType(BuiltList, [FullType(DailyAvailability)]),
    );
    yield r'total_days_checked';
    yield serializers.serialize(
      object.totalDaysChecked,
      specifiedType: const FullType(int),
    );
    yield r'available_days_count';
    yield serializers.serialize(
      object.availableDaysCount,
      specifiedType: const FullType(int),
    );
    yield r'morning_available_days_count';
    yield serializers.serialize(
      object.morningAvailableDaysCount,
      specifiedType: const FullType(int),
    );
    yield r'afternoon_available_days_count';
    yield serializers.serialize(
      object.afternoonAvailableDaysCount,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyAvailabilityOperatorResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyAvailabilityOperatorResponseBuilder result,
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
        case r'daily_availability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(DailyAvailability)]),
          ) as BuiltList<DailyAvailability>;
          result.dailyAvailability.replace(valueDes);
          break;
        case r'total_days_checked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalDaysChecked = valueDes;
          break;
        case r'available_days_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableDaysCount = valueDes;
          break;
        case r'morning_available_days_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.morningAvailableDaysCount = valueDes;
          break;
        case r'afternoon_available_days_count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.afternoonAvailableDaysCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyAvailabilityOperatorResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyAvailabilityOperatorResponseBuilder();
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

