//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'daily_availability.g.dart';

/// DailyAvailability
///
/// Properties:
/// * [date] - Data del giorno
/// * [available] - Se c'è almeno una disponibilità nel giorno
/// * [morningAvailable] - Se c'è disponibilità al mattino
/// * [afternoonAvailable] - Se c'è disponibilità al pomeriggio
@BuiltValue()
abstract class DailyAvailability implements Built<DailyAvailability, DailyAvailabilityBuilder> {
  /// Data del giorno
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Se c'è almeno una disponibilità nel giorno
  @BuiltValueField(wireName: r'available')
  bool get available;

  /// Se c'è disponibilità al mattino
  @BuiltValueField(wireName: r'morning_available')
  bool get morningAvailable;

  /// Se c'è disponibilità al pomeriggio
  @BuiltValueField(wireName: r'afternoon_available')
  bool get afternoonAvailable;

  DailyAvailability._();

  factory DailyAvailability([void updates(DailyAvailabilityBuilder b)]) = _$DailyAvailability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DailyAvailabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DailyAvailability> get serializer => _$DailyAvailabilitySerializer();
}

class _$DailyAvailabilitySerializer implements PrimitiveSerializer<DailyAvailability> {
  @override
  final Iterable<Type> types = const [DailyAvailability, _$DailyAvailability];

  @override
  final String wireName = r'DailyAvailability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DailyAvailability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'available';
    yield serializers.serialize(
      object.available,
      specifiedType: const FullType(bool),
    );
    yield r'morning_available';
    yield serializers.serialize(
      object.morningAvailable,
      specifiedType: const FullType(bool),
    );
    yield r'afternoon_available';
    yield serializers.serialize(
      object.afternoonAvailable,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DailyAvailability object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DailyAvailabilityBuilder result,
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
        case r'available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.available = valueDes;
          break;
        case r'morning_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.morningAvailable = valueDes;
          break;
        case r'afternoon_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.afternoonAvailable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DailyAvailability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DailyAvailabilityBuilder();
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

