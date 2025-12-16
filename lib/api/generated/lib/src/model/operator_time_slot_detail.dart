//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:beautyflow_api/src/model/period_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operator_time_slot_detail.g.dart';

/// Serializer dettagliato per i time slots degli operatori.
///
/// Properties:
/// * [id] 
/// * [period] 
/// * [periodDisplay] 
/// * [isWorking] 
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class OperatorTimeSlotDetail implements Built<OperatorTimeSlotDetail, OperatorTimeSlotDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'period')
  PeriodEnum get period;
  // enum periodEnum {  morning,  afternoon,  };

  @BuiltValueField(wireName: r'period_display')
  String get periodDisplay;

  @BuiltValueField(wireName: r'is_working')
  bool get isWorking;

  @BuiltValueField(wireName: r'start_time')
  String? get startTime;

  @BuiltValueField(wireName: r'end_time')
  String? get endTime;

  OperatorTimeSlotDetail._();

  factory OperatorTimeSlotDetail([void updates(OperatorTimeSlotDetailBuilder b)]) = _$OperatorTimeSlotDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperatorTimeSlotDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperatorTimeSlotDetail> get serializer => _$OperatorTimeSlotDetailSerializer();
}

class _$OperatorTimeSlotDetailSerializer implements PrimitiveSerializer<OperatorTimeSlotDetail> {
  @override
  final Iterable<Type> types = const [OperatorTimeSlotDetail, _$OperatorTimeSlotDetail];

  @override
  final String wireName = r'OperatorTimeSlotDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperatorTimeSlotDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'period';
    yield serializers.serialize(
      object.period,
      specifiedType: const FullType(PeriodEnum),
    );
    yield r'period_display';
    yield serializers.serialize(
      object.periodDisplay,
      specifiedType: const FullType(String),
    );
    yield r'is_working';
    yield serializers.serialize(
      object.isWorking,
      specifiedType: const FullType(bool),
    );
    if (object.startTime != null) {
      yield r'start_time';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OperatorTimeSlotDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperatorTimeSlotDetailBuilder result,
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
        case r'period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PeriodEnum),
          ) as PeriodEnum;
          result.period = valueDes;
          break;
        case r'period_display':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodDisplay = valueDes;
          break;
        case r'is_working':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isWorking = valueDes;
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
  OperatorTimeSlotDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperatorTimeSlotDetailBuilder();
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

