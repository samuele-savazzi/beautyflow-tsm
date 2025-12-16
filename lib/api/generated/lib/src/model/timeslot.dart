//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeslot.g.dart';

/// Timeslot
///
/// Properties:
/// * [period] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class Timeslot implements Built<Timeslot, TimeslotBuilder> {
  @BuiltValueField(wireName: r'period')
  PeriodEnum get period;
  // enum periodEnum {  morning,  afternoon,  };

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  Timeslot._();

  factory Timeslot([void updates(TimeslotBuilder b)]) = _$Timeslot;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeslotBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Timeslot> get serializer => _$TimeslotSerializer();
}

class _$TimeslotSerializer implements PrimitiveSerializer<Timeslot> {
  @override
  final Iterable<Type> types = const [Timeslot, _$Timeslot];

  @override
  final String wireName = r'Timeslot';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Timeslot object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(PeriodEnum),
    );
    yield r'start_time';
    yield object.startTime == null ? null : serializers.serialize(
      object.startTime,
      specifiedType: const FullType.nullable(String),
    );
    yield r'end_time';
    yield object.endTime == null ? null : serializers.serialize(
      object.endTime,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Timeslot object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimeslotBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PeriodEnum),
          ) as PeriodEnum;
          result.period = valueDes;
          break;
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Timeslot deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeslotBuilder();
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

