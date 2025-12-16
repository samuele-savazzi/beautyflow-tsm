//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consultation_create.g.dart';

/// ConsultationCreate
///
/// Properties:
/// * [operatorId] - ID operatore autorizzato
/// * [serviceId] - ID servizio non prenotabile
/// * [bookingDate] - Data consultazione (YYYY-MM-DD)
/// * [startTime] - Orario inizio (HH:MM)
/// * [answers] - Risposte alle domande del servizio
@BuiltValue()
abstract class ConsultationCreate implements Built<ConsultationCreate, ConsultationCreateBuilder> {
  /// ID operatore autorizzato
  @BuiltValueField(wireName: r'operator_id')
  int get operatorId;

  /// ID servizio non prenotabile
  @BuiltValueField(wireName: r'service_id')
  int get serviceId;

  /// Data consultazione (YYYY-MM-DD)
  @BuiltValueField(wireName: r'booking_date')
  Date get bookingDate;

  /// Orario inizio (HH:MM)
  @BuiltValueField(wireName: r'start_time')
  String get startTime;

  /// Risposte alle domande del servizio
  @BuiltValueField(wireName: r'answers')
  Map<String, dynamic>? get answers;

  ConsultationCreate._();

  factory ConsultationCreate([void updates(ConsultationCreateBuilder b)]) = _$ConsultationCreate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsultationCreateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsultationCreate> get serializer => _$ConsultationCreateSerializer();
}

class _$ConsultationCreateSerializer implements PrimitiveSerializer<ConsultationCreate> {
  @override
  final Iterable<Type> types = const [ConsultationCreate, _$ConsultationCreate];

  @override
  final String wireName = r'ConsultationCreate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsultationCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(int),
    );
    yield r'service_id';
    yield serializers.serialize(
      object.serviceId,
      specifiedType: const FullType(int),
    );
    yield r'booking_date';
    yield serializers.serialize(
      object.bookingDate,
      specifiedType: const FullType(Date),
    );
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(String),
    );
    if (object.answers != null) {
      yield r'answers';
      yield serializers.serialize(
        object.answers,
        specifiedType: const FullType.nullable(Map<String, dynamic>),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsultationCreate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConsultationCreateBuilder result,
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
        case r'service_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.serviceId = valueDes;
          break;
        case r'booking_date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.bookingDate = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startTime = valueDes;
          break;
        case r'answers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Map<String, dynamic>),
          ) as Map<String, dynamic>?;
          if (valueDes == null) continue;
          result.answers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsultationCreate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsultationCreateBuilder();
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

