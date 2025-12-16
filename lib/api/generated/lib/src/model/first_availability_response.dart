//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'first_availability_response.g.dart';

/// FirstAvailabilityResponse
///
/// Properties:
/// * [date] - Data della prima disponibilità
/// * [period] - Periodo (morning/afternoon/evening)
/// * [startTime] - Orario di inizio
/// * [endTime] - Orario di fine
/// * [workstationId] - ID della postazione
/// * [score] - Punteggio di qualità della disponibilità
@BuiltValue()
abstract class FirstAvailabilityResponse implements Built<FirstAvailabilityResponse, FirstAvailabilityResponseBuilder> {
  /// Data della prima disponibilità
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Periodo (morning/afternoon/evening)
  @BuiltValueField(wireName: r'period')
  String get period;

  /// Orario di inizio
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// Orario di fine
  @BuiltValueField(wireName: r'end_time')
  String get endTime;

  /// ID della postazione
  @BuiltValueField(wireName: r'workstation_id')
  int get workstationId;

  /// Punteggio di qualità della disponibilità
  @BuiltValueField(wireName: r'score')
  double get score;

  FirstAvailabilityResponse._();

  factory FirstAvailabilityResponse([void updates(FirstAvailabilityResponseBuilder b)]) = _$FirstAvailabilityResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FirstAvailabilityResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FirstAvailabilityResponse> get serializer => _$FirstAvailabilityResponseSerializer();
}

class _$FirstAvailabilityResponseSerializer implements PrimitiveSerializer<FirstAvailabilityResponse> {
  @override
  final Iterable<Type> types = const [FirstAvailabilityResponse, _$FirstAvailabilityResponse];

  @override
  final String wireName = r'FirstAvailabilityResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FirstAvailabilityResponse object, {
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
    yield r'workstation_id';
    yield serializers.serialize(
      object.workstationId,
      specifiedType: const FullType(int),
    );
    yield r'score';
    yield serializers.serialize(
      object.score,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FirstAvailabilityResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FirstAvailabilityResponseBuilder result,
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
        case r'workstation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.workstationId = valueDes;
          break;
        case r'score':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.score = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FirstAvailabilityResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FirstAvailabilityResponseBuilder();
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

